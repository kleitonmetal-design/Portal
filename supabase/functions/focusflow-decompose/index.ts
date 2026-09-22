import { serve } from "https://deno.land/std@0.168.0/http/server.ts";

const GEMINI_API_KEY = Deno.env.get("GEMINI_API_KEY") ?? "";
const GEMINI_URL = "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-lite:generateContent";

const ALLOWED_ORIGIN = "https://portal.guardiantechit.com.br";

const CORS_HEADERS = {
  "Access-Control-Allow-Origin": ALLOWED_ORIGIN,
  "Access-Control-Allow-Methods": "POST, OPTIONS",
  "Access-Control-Allow-Headers": "Content-Type, Authorization",
};

const BATTERY_LABELS: Record<string, string> = {
  low: "baixa (20%) — passos de 2 a 5 min, máximo de simplicidade",
  medium: "média (50%) — passos de 10 a 15 min",
  high: "alta (100%) — blocos de 25 a 30 min",
};

const MATERIALS_LABELS: Record<string, string> = {
  ready: "todos os arquivos e materiais já estão abertos e acessíveis",
  gather: "precisa reunir arquivos, e-mails, prints ou links antes de começar",
  heavy_reading: "há grande volume de documentos para ler, páginas densas ou logs de auditoria",
};

const SCOPE_LABELS: Record<string, string> = {
  direct_update: "preenchimento ou edição direta de documento, sistema, ROC ou planilha",
  analysis_synthesis: "análise crítica, avaliação de conformidade e síntese de dados",
  multi_step_dense: "demanda completa e multietapa com validação formal",
};

const MODE_LABELS: Record<string, string> = {
  micro_step: "1º Passo Minúsculo — reduzir ao máximo o atrito de início (30s a 2 min para o 1º passo)",
  phases: "Rascunho → Lapidação — esqueleto bruto, corpo e acabamento",
  checklist: "Definição de Pronto — checklist objetivo com critérios auditáveis de conclusão",
  pomodoro: "Fatiamento Pomodoro — sprints de 25 min com metas bem delimitadas",
};

function buildSystemPrompt(battery: string, materials: string, scope: string, mode: string): string {
  return `Você é o motor de decomposição cognitiva do FocusFlow, uma ferramenta criada para pessoas com TDAH e dislexia.

Seu objetivo é gerar passos CONCRETOS, ESPECÍFICOS e CONTEXTUAIS — nunca genéricos como "Definir escopo" ou "Trabalhar em bloco ininterrupto".

CONTEXTO DO USUÁRIO:
- Bateria mental: ${BATTERY_LABELS[battery] ?? battery}
- Situação dos materiais: ${MATERIALS_LABELS[materials] ?? materials}
- Natureza da entrega: ${SCOPE_LABELS[scope] ?? scope}
- Modo de quebra escolhido: ${MODE_LABELS[mode] ?? mode}

REGRAS OBRIGATÓRIAS:
1. Gere de 3 a 5 passos. Nunca mais do que 6.
2. action_verb: verbo no infinitivo curto (max 2 palavras). Ex: "Abrir", "Conferir", "Preencher", "Reunir"
3. instruction: 1 frase curta e concreta dizendo EXATAMENTE o que fazer. Use o nome real do objeto mencionado na tarefa.
4. estimated_minutes: inteiro. Ajuste ao nível de bateria informado.
5. why_this_first: 1 frase curta de motivação neuro-friendly (sem jargões). Explique o benefício real, não o processo.
6. Se a tarefa mencionar evidências, anexos, ROC, relatórios ou auditoria: o 1º passo deve ser de triagem/reunião dos materiais, e um passo central deve ser de conferência crítica antes de atualizar.
7. Se a tarefa for abstrata (ex: "organizar armário"), gere passos físicos e concretos (ex: "Tirar todos os itens do armário e colocar no chão").

Responda APENAS com JSON válido, sem markdown, sem código de bloco. Formato exato:
{"steps":[{"step_order":1,"action_verb":"Verbo","instruction":"Instrução concreta aqui.","estimated_minutes":5,"why_this_first":"Benefício direto para o usuário."}]}`;
}

serve(async (req: Request) => {
  // Handle CORS preflight
  if (req.method === "OPTIONS") {
    return new Response(null, { status: 204, headers: CORS_HEADERS });
  }

  if (req.method !== "POST") {
    return new Response(JSON.stringify({ error: "Method not allowed" }), {
      status: 405,
      headers: { ...CORS_HEADERS, "Content-Type": "application/json" },
    });
  }

  if (!GEMINI_API_KEY) {
    return new Response(JSON.stringify({ error: "GEMINI_API_KEY not configured" }), {
      status: 500,
      headers: { ...CORS_HEADERS, "Content-Type": "application/json" },
    });
  }

  let body: { text?: string; battery?: string; mode?: string; effort?: { materials?: string; scope?: string } };
  try {
    body = await req.json();
  } catch {
    return new Response(JSON.stringify({ error: "Invalid JSON body" }), {
      status: 400,
      headers: { ...CORS_HEADERS, "Content-Type": "application/json" },
    });
  }

  const text = (body.text ?? "").trim();
  if (!text) {
    return new Response(JSON.stringify({ error: "text is required" }), {
      status: 400,
      headers: { ...CORS_HEADERS, "Content-Type": "application/json" },
    });
  }

  const battery = body.battery ?? "medium";
  const mode = body.mode ?? "micro_step";
  const materials = body.effort?.materials ?? "ready";
  const scope = body.effort?.scope ?? "direct_update";

  const systemPrompt = buildSystemPrompt(battery, materials, scope, mode);

  const geminiPayload = {
    system_instruction: { parts: [{ text: systemPrompt }] },
    contents: [{ role: "user", parts: [{ text: `Tarefa: "${text}"` }] }],
    generationConfig: {
      temperature: 0.4,
      maxOutputTokens: 1024,
      responseMimeType: "application/json",
    },
  };

  try {
    const geminiRes = await fetch(`${GEMINI_URL}?key=${GEMINI_API_KEY}`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(geminiPayload),
      signal: AbortSignal.timeout(8000), // 8s timeout
    });

    if (!geminiRes.ok) {
      const errText = await geminiRes.text();
      console.error("Gemini API error:", geminiRes.status, errText);
      return new Response(JSON.stringify({ error: "Gemini API error", status: geminiRes.status }), {
        status: 502,
        headers: { ...CORS_HEADERS, "Content-Type": "application/json" },
      });
    }

    const geminiData = await geminiRes.json();
    const rawText = geminiData?.candidates?.[0]?.content?.parts?.[0]?.text ?? "";

    // Parse e valida o JSON retornado pelo Gemini
    let parsed: { steps: unknown[] };
    try {
      parsed = JSON.parse(rawText);
    } catch {
      console.error("Gemini returned invalid JSON:", rawText);
      return new Response(JSON.stringify({ error: "Gemini returned malformed JSON" }), {
        status: 502,
        headers: { ...CORS_HEADERS, "Content-Type": "application/json" },
      });
    }

    if (!Array.isArray(parsed.steps) || parsed.steps.length === 0) {
      return new Response(JSON.stringify({ error: "Gemini returned empty steps" }), {
        status: 502,
        headers: { ...CORS_HEADERS, "Content-Type": "application/json" },
      });
    }

    // Normaliza e sanitiza os passos
    const steps = parsed.steps.map((s: unknown, idx: number) => {
      const step = s as Record<string, unknown>;
      return {
        step_order: idx + 1,
        action_verb: String(step.action_verb ?? `Passo ${idx + 1}`),
        instruction: String(step.instruction ?? ""),
        estimated_minutes: Number(step.estimated_minutes) || 10,
        why_this_first: String(step.why_this_first ?? ""),
      };
    });

    const totalMinutes = steps.reduce((acc, s) => acc + s.estimated_minutes, 0);

    return new Response(
      JSON.stringify({
        task_title: text,
        battery_level: battery,
        decomp_mode: mode,
        total_estimated_minutes: totalMinutes,
        steps,
        source: "gemini",
      }),
      {
        status: 200,
        headers: { ...CORS_HEADERS, "Content-Type": "application/json" },
      }
    );
  } catch (err) {
    console.error("Edge Function error:", err);
    return new Response(JSON.stringify({ error: "Internal error", detail: String(err) }), {
      status: 500,
      headers: { ...CORS_HEADERS, "Content-Type": "application/json" },
    });
  }
});

# Portal GuardianTech

Site estático (HTML + CSS + JS puro) hospedado no GitHub Pages, publicado em
`portal.guardiantechit.com.br`. Sem build, sem framework, sem npm.

## Estrutura
- `index.html` — página principal. Busca links no Supabase e monta menu + cards.
- `sistemas.html`, `paineis-pci.html`, `chilli-beans.html`, `simulados.html` — páginas de categoria.
- `Simulado*.html` — simulados ISO 27001, arquivos grandes e autocontidos.
- `painel_roc_zup_updated_1.html` — dashboard dinâmico do ROC (PCI DSS) da ZUP.
  Ver seção "Painel ROC ZUP (dinâmico)" abaixo.
- `painel_roc_csu_dinamico.html` — dashboard dinâmico do ROC (PCI DSS) da CSU.
  Ver seção "Painel ROC CSU (dinâmico)" abaixo.
- `painel_roc_csu.html` — versão antiga/estática do painel CSU, mantida no ar
  sem alteração (não sobrescrever, só adicionar).
- Deploy: todo push em `main` publica automaticamente via GitHub Pages. Não existe
  ambiente de staging — o que vai pro `main` fica visível no site em minutos.

## Painel ROC ZUP (dinâmico)
Dashboard que mostra status de preenchimento do ROC PCI DSS v4.0.1 da ZUP.
Atualiza sozinho a cada 30s via `fetch()`, sem precisar recarregar a página.

- **Arquivo:** `painel_roc_zup_updated_1.html`
- **URL pública:** `portal.guardiantechit.com.br/painel_roc_zup_updated_1.html`
- **Acesso no portal:** menu "Painéis PCI DSS" → card "Painel PCI DSS: ZUP ROC (Dinâmico)"
- **Fonte dos dados:** workflow n8n "ROC Status API" (id `w8yV8wOmXDAZQB9L`), via
  webhook `https://n8n.guardiantechit.com.br/webhook/1cb9a3a5-aebe-45a8-aea6-4f6376f0303c`
  — **atenção:** é o ID do *webhook*, não do workflow. Confundir os dois já causou bug
  (zero execuções, painel nunca recebia resposta).
- Hoje os dados no n8n (node "Seed ROC Data") são **hardcoded manualmente** — não lê
  o `.docx` do ROC em tempo real. Alguém precisa atualizar o JSON à mão quando o ROC muda.
- **Nunca hospedar este tipo de painel como Claude Artifact.** Artifacts bloqueiam
  `fetch`/`XHR` para domínios externos (CSP) e a chamada falha silenciosamente,
  sem erro visível — só cai no `catch()`. Por isso é arquivo estático no GitHub Pages.
- Editar workflow n8n ou tabela `links` do Supabase: use as MCP tools
  (`mcp__n8n__*`, `mcp__Supabase__*`) direto, sem passo manual.
- Editar o `.html` do painel: mesmo fluxo de qualquer outro arquivo deste repo
  (commit + push em `main`). Se `git push` for bloqueado pelo proxy da sessão,
  avise o usuário — o workaround é upload manual pela interface web do GitHub.

## Painel ROC CSU (dinâmico)
Mesmo padrão do painel ZUP: dashboard que mostra status de preenchimento do
ROC PCI DSS v4.0.1 da CSU Digital S/A, atualizado a cada 30s via `fetch()`.

- **Arquivo:** `painel_roc_csu_dinamico.html`
- **Acesso no portal:** menu "Painéis PCI DSS" → card "Painel PCI DSS: CSU ROC (Dinâmico)"
- **Fonte dos dados:** workflow n8n "ROC Status API - CSU" (id `5KCTDqnrlcoi4eYf`), via
  webhook `https://n8n.guardiantechit.com.br/webhook/ba60e66c-d57c-4953-8ea9-1ac66adb7186`
  — de novo, é ID do *webhook*, não do workflow.
- **Diferença em relação ao ZUP:** este workflow já nasceu com a expressão correta
  no node de resposta (`JSON.parse($input.first().json.rocData)`) — não teve o bug
  de duplo-embrulho JSON que o ZUP teve. Não precisa reaplicar essa correção aqui.
- Cada card mostra "ver pendências →" com a lista de `unfilled_ids` (sub-requisitos
  ainda sem Assessment Finding e/ou evidência completa), diferente do painel ZUP.
- O painel antigo `painel_roc_csu.html` (estático, sem API) foi mantido no ar sem
  alteração — mesma regra do ZUP: nunca sobrescrever o que já funciona, só adicionar.
- Linha correspondente na tabela `links` do Supabase: id `fbceb6e4-4d57-4c93-8b3b-5380c2452bb8`.
- Mesmas regras de Claude Artifact e fluxo de edição do painel ZUP, acima.

## Dados
- Backend é Supabase (tabela `links`). URL e chave pública ficam hardcoded no
  `index.html` (é a chave pública, não é segredo).
- Categorias e ordem vêm do banco, não do HTML.

## Fluxo de trabalho
1. Editar HTML/CSS/JS.
2. Testar visualmente antes de commitar — abrir o arquivo local no navegador
   ou usar a skill `run`/Playwright. Nunca commitar mudança de CSS/JS sem ver
   rodando primeiro.
3. Commit direto em `main` (não há PR review neste projeto — é site de uso próprio).
4. Push. Deploy é automático.

## Armadilhas conhecidas
- **`.nav-categories` tem `overflow-x: auto`** → isso força `overflow-y: auto`
  também (regra do CSS), cortando qualquer dropdown que exceda a altura do
  header. Por isso `.nav-dropdown` usa `position: fixed` com posição calculada
  via JS (`getBoundingClientRect()`), não `position: absolute`.
- Antes de dizer "corrigido" para qualquer mudança visual (CSS, layout, dropdown),
  comprovar rodando a página, não só ler o código e assumir que vai funcionar.
- Não adicionar `console.log` de debug como primeira tentativa — testar local
  primeiro (Playwright ou abrir o HTML direto) é mais rápido que ida-e-volta
  de deploy.

## Git
- Branch principal: `main`. É nela que o deploy acontece.
- Não fazer force-push sem confirmar com o usuário antes.

## Manual do projeto (Supabase)
Existe um manual completo do portal salvo na tabela `documentos` do
Supabase (`portal-guardiantech`, `zprzmhavbjiggqfzzzbt`), registro com
`slug = 'manual-portal'`. É a documentação de referência do projeto inteiro
(arquitetura, tabelas, painéis, fluxo de trabalho).

**Regra permanente:** toda vez que uma mudança no projeto tornar esse
manual desatualizado — nova página, nova integração, novo painel, mudança
de arquitetura ou de fluxo — atualizar esse registro no banco na mesma
sessão, sem esperar o usuário pedir. Fazer via `UPDATE documentos SET
conteudo = ..., updated_at = now() WHERE slug = 'manual-portal'` (MCP
`mcp__Supabase__execute_sql`).

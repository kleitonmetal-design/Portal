-- ==============================================================================
-- SCRIPT SQL: INSERIR OU ATUALIZAR GUIA DO FOCUSFLOW NO BANCO DE DADOS (SUPABASE)
-- Tabela: public.documentos
-- ==============================================================================

-- 1. Inserir na tabela oficial de documentos do Portal GuardianTech
INSERT INTO public.documentos (titulo, conteudo)
VALUES (
    'FocusFlow — Guia de Uso e Produtividade Acessível (TDAH & Dislexia)',
    '# Guia Completo de Uso — FocusFlow (FocoLivre)
### Produtividade Acessível para TDAH, Dislexia e Fadiga Decisória
*GuardianTech IT Portal — Ferramentas de Alta Performance Cognitiva*

---

## 🌊 1. Visão Geral do FocusFlow

O **FocusFlow** é uma plataforma de produtividade e execução desenhada sob os pilares da neurodivergência (TDAH e Dislexia) e do design **Zero-Culpa** (*Zero-Guilt*). Ele elimina a sobrecarga sensorial, o congelamento por paralisia de escolha e a cegueira temporal, guiando você da ideação caótica até a conclusão real de microetapas acionáveis.

---

## 🚀 2. Como Usar Cada Módulo & Ferramenta

### 🎯 Módulo 1: O Quebrador de Metas (Decomposição Cognitiva)
1. **Entrada Sem Atrito:**
   - Digite o que você precisa fazer no campo de texto ou clique em **`🎤 Ditado por Voz`** para falar naturalmente (Web Speech API).
2. **Seleção de Bateria Mental:**
   - **🪫 Bateria Baixa (20%):** Gera passos microscópicos de 2 a 5 minutos, começando por ações fisiológicas simples (respirar, beber água, abrir o app).
   - **⚡ Bateria Média (50%):** Passos intermediários de 10 a 15 minutos para ritmo estável de trabalho.
   - **🔋 Bateria Alta (100%):** Marcos consolidados de 20 a 30 minutos para sprints profundos de foco.
3. **Desmembramento:**
   - Clique em **`✨ Desmembrar em Microetapas`**. A IA (ou heurística local resiliente) quebra o objetivo explicando *o que fazer* e *por que começar por ali*.

---

### 🕒 Módulo 2: Linha do Tempo Visual Contínua & Agendamento Realista
1. **Modo Lista vs. Linha do Tempo:**
   - Alterne entre a visão em **Lista** e a visão em **Linha do Tempo Horária Contínua** (calcula os horários exatos de início e término com base na hora atual).
2. **Buffer de Transição Anti-Cegueira Temporal:**
   - Botão **`⏳ Buffer 10m`**: insere automaticamente pausas de 10 minutos entre as etapas para descompressão neurológica, hidratação e estiramento, evitando exaustão.
3. **Reorganização Intuitiva (Drag & Drop):**
   - Arraste as etapas pelo ícone `⋮⋮` para reordenar a sequência no fluxo que fizer mais sentido no momento.
4. **Exportação com 1 Clique:**
   - **📅 Exportar:** Baixa um arquivo `.ics` com todas as etapas e buffers prontos para importar no Google Calendar, Apple Calendar ou Outlook.
   - **📋 Notion:** Copia toda a estrutura formatada em Markdown com checkboxes para colar no Notion, Obsidian ou Todoist.

---

### 🚀 Módulo 3: Cockpit Monotarefa (Execução Imersiva)
1. **Foco Estrito de 1 Única Coisa:**
   - Exibe exclusivamente a etapa atual na tela com fonte grande e legível, eliminando a distração das etapas seguintes.
2. **Time Timer Visual Não-Ansioso:**
   - Uma barra com gradiente suave preenche o tempo sem contagens regressivas estressantes em vermelho ou bipes punitivos.
   - Botão **`Modo Sem Pressão`**: remove qualquer expectativa de tempo e apenas cronometra com calma quanto você já investiu.
3. **Botão de Pânico — *"🚨 Travei nesta etapa"**:**
   - Se você congelar durante uma etapa, clique no botão de pânico. O sistema divide imediatamente a etapa atual em 2 microações imperdíveis (1 min de pausa sensorial + 1 clique inicial).

---

### 🧠 Módulo 4: Caixa de Despejo de Distrações ("Pensou? Guarda aqui!")
- **Atalho Global:** `Ctrl + D` ou `Cmd + D` a qualquer momento (inclusive durante o Cockpit).
- **Como Usar:** Quando surgir um pensamento intrusivo ou lembrete aleatório (*"preciso pagar a conta", "comprar ração"*), aperte o atalho, digite a ideia em 2 segundos e aperte `Enter`.
- Sua mente fica limpa para continuar a etapa atual. Ao final, acerte suas ideias na gaveta lateral ou clique em `🎯` para transformá-la direto em uma nova meta do FocusFlow.

---

### 📏 Módulo 5: Régua Guia de Leitura Visual (Apoio à Dislexia)
- **Ativação:** Botão **`📏 Régua`** no cabeçalho ou tecla `Esc` para fechar.
- **Como Usar:** Acompanha o movimento do mouse ou dedo, escurecendo as linhas ao redor e iluminando apenas uma faixa de 60px sobre a linha atual. Evita que os olhos saltem involuntariamente de linha ao ler enunciados, instruções ou códigos.

---

### 🪄 Módulo 6: "Simplifique para Mim" & Dicionário Visual Instantâneo
1. **Tradutor de Textos Complexos:**
   - Acesse a aba **`🪄 Simplifique para Mim`**.
   - Cole e-mails densos, comunicados corporativos, termos técnicos ou regulamentos.
   - O sistema resume em frases curtas e diretas com **ações essenciais destacadas em negrito**.
   - Clique em **`🚀 Executar no FocusFlow`** para enviar o resumo para o quebrador de metas.
2. **Dicionário Visual Instantâneo:**
   - Dê **duplo-clique** em qualquer palavra complexa ou abstrata (*procrastinar, prioridade, escopo, alinhamento, pendência, etc.*).
   - Um card flutuante exibirá instantaneamente um ícone ilustrativo e o significado descomplicado.

---

### 📋 Módulo 7: Gaveta de Rotinas Pré-configuradas ("Piloto Automático")
- Acesse pela aba **`📋 Rotinas Rápidas`**.
- Templates prontos de 1 clique para quebrar a inércia em momentos críticos:
  - ☀️ **Aterrissagem Matinal (~15 min):** Hidratação, organização física da mesa, checagem da agenda e definição de 1 prioridade real.
  - 🤝 **Pré-Reunião / Call (~8 min):** Teste de som/câmera, abertura do link da chamada e anotação da pauta.
  - 🚨 **Protocolo Destravar (~5 min):** Reset muscular: levantar da cadeira, lavar as mãos com água fria e respiração lenta 4x.
  - 🌙 **Fechamento do Expediente (~10 min):** Despejo de pendências soltas, fechamento de abas e celebração sem culpa.

---

### 📍 Módulo 8: Resgate de Sessão Instantâneo ("Onde eu estava?")
- Se a página for recarregada ou a aba fechada por engano, um banner acolhedor no topo pergunta:
  > *"📍 Onde você estava? Você estava focado na Etapa X de Y em: [Meta]. Deseja retomar o foco?"*
- Clique em **`🚀 Retomar Foco`** para restaurar o Cockpit no mesmo segundo em que parou.

---

### 👥 Módulo 9: Body Doubling Assíncrono (Companheiro Silencioso)
- Um badge com pulso verde suave no Cockpit: *"🟢 42 pessoas focando agora com você no Portal"*.
- Fornece presença acolhedora e elimina o sentimento de isolamento que fomenta a paralisia procrastinatória no TDAH.

---

### 🎧 Módulo 10: Dock de Ruído Procedural para Foco
- Localizado na barra inferior fixa, sintetizado 100% localmente no navegador via **Web Audio API** (zero consumo de internet):
  - **🟤 Ruído Marrom (Brownian Noise):** Ideal para acalmar mentes hiperativas e mascarar sons agudos externos.
  - **🌸 Ruído Rosa (Pink Noise):** Frequências equilibradas para concentração prolongada e leitura fluida.
  - **🧠 Ondas Alpha (10Hz Binaural Beats):** Estimulação estéreo para foco relaxado e estado de presença.

---

## 💾 3. Armazenamento Local-First & Supabase Sync
- **Design Offline/Local-First:** Todo o seu histórico, notas e progresso funcionam perfeitamente sem internet e ficam salvos em `localStorage`.
- **Sincronização em Nuvem:** Quando conectado, as metas concluídas sincronizam de forma transparente com a tabela `focusflow_historico` no Supabase do Portal.
'
);

-- ==============================================================================
-- 2. Tabela de Apoio e Histórico FocusFlow
-- ==============================================================================
CREATE TABLE IF NOT EXISTS public.focusflow_historico (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    task_title TEXT NOT NULL,
    battery_level VARCHAR(20) DEFAULT 'medium',
    minutes_invested INTEGER DEFAULT 0,
    steps_completed INTEGER DEFAULT 1,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

ALTER TABLE public.focusflow_historico ENABLE ROW LEVEL SECURITY;

DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_policies WHERE tablename = 'focusflow_historico' AND policyname = 'Permitir insercao anonima focusflow'
    ) THEN
        CREATE POLICY "Permitir insercao anonima focusflow" ON public.focusflow_historico FOR INSERT WITH CHECK (true);
    END IF;

    IF NOT EXISTS (
        SELECT 1 FROM pg_policies WHERE tablename = 'focusflow_historico' AND policyname = 'Permitir leitura anonima focusflow'
    ) THEN
        CREATE POLICY "Permitir leitura anonima focusflow" ON public.focusflow_historico FOR SELECT USING (true);
    END IF;
END
$$;

# Memória & Diretrizes do Projeto — Portal GuardianTech

Documento de instruções e contexto para o assistente **Antigravity (Google DeepMind)**.

---

## 📌 Visão Geral & Arquitetura

- **Domínio Público:** `https://portal.guardiantechit.com.br`
- **Repositório:** `git@github.com:kleitonmetal-design/Portal.git` (`branch: main`)
- **Pasta Local de Trabalho:** `/Users/kleitonrodrigues/Projects/Portal_Git`
- **Hospedagem:** GitHub Pages (deploy automático após push em `main`).
- **Stack:** HTML5 + CSS3 + Vanilla JavaScript puro (sem build, sem framework, sem npm).

---

## 🗄️ Backend & Integrações

1. **Supabase (`portal-guardiantech`):**
   - **URL:** `https://zprzmhavbjiggqfzzzbt.supabase.co`
   - **Key:** `sb_publishable_zucE5w9pyxnkXU0r3A8LYQ_ERuwax9r`
   - **Tabela `links`:** Armazena os cards, categorias, links e ordem de exibição do portal.
   - **Tabela `documentos`:** Armazena manuais e documentações técnicas (`slug: manual-portal`, `plataforma-thyreos-pci`, `sistema-marcacao-deploys`, etc.).

2. **n8n Workflows (`n8n.guardiantechit.com.br`):**
   - **Painel ROC ZUP:** `painel_roc_zup_updated_1.html`
     - Webhook: `https://n8n.guardiantechit.com.br/webhook/1cb9a3a5-aebe-45a8-aea6-4f6376f0303c`
     - Workflow ID: `w8yV8wOmXDAZQB9L`
   - **Painel ROC CSU:** `painel_roc_csu_dinamico.html`
     - Webhook: `https://n8n.guardiantechit.com.br/webhook/ba60e66c-d57c-4953-8ea9-1ac66adb7186`
     - Workflow ID: `5KCTDqnrlcoi4eYf`
   - **Painel Legado CSU:** `painel_roc_csu.html` mantido estático sem alteração.

---

## 🏷️ Sistema de Marcação de Commits por Origem (v2.0)

Configurado via githooks em `.githooks/` (`prepare-commit-msg` e `post-commit`):
- **Antigravity:** Prefixo `[antigravity]` | Autor: `Antigravity IDE <antigravity-ide@guardiantechit.com.br>`
- **Claude Code:** Prefixo `[claude]` | Autor: `Claude <noreply@anthropic.com>`
- **Manual:** Sem prefixo | Identidade Git local da máquina
- **Ativação local:** `git config core.hooksPath .githooks` (ativado neste clone).

---

## ⚠️ Regras Permanentes & Armadilhas

1. **Validação Visual Obrigatória:**
   - Antes de commitar qualquer mudança em CSS/JS, testar abrindo o arquivo localmente ou usando o conector Playwright.
2. **Dropdown do Menu (`.nav-categories`):**
   - Possui `overflow-x: auto` que força `overflow-y: auto`, cortando dropdowns com `position: absolute`. Por isso, `.nav-dropdown` utiliza `position: fixed` com coordenadas dinâmicas calculadas via JS (`getBoundingClientRect()`).
3. **Atualização da Documentação:**
   - Toda alteração estrutural no Portal exige atualizar o registro `manual-portal` na tabela `documentos` do Supabase.

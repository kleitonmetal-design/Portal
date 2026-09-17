# 🔄 GuardianTech - Portal de Serviços & Thyreos Compliance Manager

Portal unificado de serviços de cibersegurança e plataforma de gestão de conformidade **PCI DSS v4.0.1** da **GuardianTech / Thyreos Trust Platform**.

> **Última Atualização de Deploy (Antigravity IDE):** 17/09/2026 - Validação de Log e Prefixos Git Automáticos (`[antigravity]`)

---

## 🚀 Módulos & Suíte PCI DSS v4.0.1 (Multiperfil)

A plataforma conta com uma arquitetura flexível que suporta tanto a **simulação interativa unificada** quanto **telas isoladas dedicadas** com autenticação simulada via `localStorage`.

### 1. 🛡️ Painel de Demonstração Multiperfil Unificado (`demo-perfis-pci.html`)
- **URL Direta:** `https://portal.guardiantechit.com.br/demo-perfis-pci.html`
- **Descrição:** Ambiente máster de simulação que permite alternar em tempo real entre os 4 perfis da auditoria (*Operacional*, *Executivo*, *QSA Auditor Lead* e *Admin Governança*).
- **Recursos Principais:**
  - Seletor rápido de perfil (Dropdown & Pílulas de Acesso Rápido).
  - 10 Requisitos PCI DSS v4.0.1 mapeados com dados fictícios ricos.
  - Matriz de Risco 5x5 (Probabilidade x Impacto).
  - Modal de Envio de Evidências com gerador/validador automático de Hash **SHA-256**.
  - Modal de Parecer do QSA Lead com justificativa obrigatória de **GAP**.
  - Tabela de Delegação & Atribuição Dinâmica de Equipe.
  - Motores de persistência sincronizados em `localStorage.getItem('portal_pci_requisitos')`.

---

### 2. 🔑 Portal de Login Exclusivo (`login.html`)
- **URL Direta:** `https://portal.guardiantechit.com.br/login.html`
- **Descrição:** Interface de autenticação com cartões visuais para selecionar a visão desejada e redirecionar para a página autônoma dedicada.
- **Perfis de Acesso:**
  1. 👩‍💻 **Ponto Focal Operacional** (*Ana Ribeiro — Dev & Engenharia*)
  2. 📊 **Ponto Focal Executivo** (*Mariana Silva — Diretora de Segurança / CISO*)
  3. 🔍 **QSA Auditor Lead** (*Carlos Costa — QSA Principal #40291*)
  4. ⚙️ **Admin / Governança** (*Kleiton Rodrigues — Lead Admin / CISO*)

---

### 3. 📂 Páginas Autônomas Isoladas por Perfil

- **📂 Painel Focal Operacional (`painel-operacional.html`)**
  - **URL:** `https://portal.guardiantechit.com.br/painel-operacional.html`
  - **Recursos:** Alerta de requisitos expirados (*Vencido há 29 dias*), abas de filtro (*Pendentes*, *Em revisão*, *Aceitos*), upload de evidências com hash SHA-256.

- **📈 Painel Executivo & Matriz 5x5 (`painel-executivo.html`)**
  - **URL:** `https://portal.guardiantechit.com.br/painel-executivo.html`
  - **Recursos:** Selo de Risco Geral (🔴 *Alto Risco*), Medidor de Conformidade Consolidada (20%), Gráfico de Distribuição, Grid de Requisitos 1-12, Matriz de Risco 5x5, Alertas de SLA e progresso por área.

- **⚖️ Painel QSA Auditor Lead (`painel-qsa.html`)**
  - **URL:** `https://portal.guardiantechit.com.br/painel-qsa.html`
  - **Recursos:** Fila de auditoria, abas de filtro (*Aguardando revisão*, *Aceitas*, *Ajustes*), visualização de evidência, validação de Hash SHA-256 e modal com campo obrigatório de GAP.

- **👥 Painel Admin Governança (`painel-admin.html`)**
  - **URL:** `https://portal.guardiantechit.com.br/painel-admin.html`
  - **Recursos:** Tabela de delegação de responsáveis, automação por área, trava de escopo e link para onboarding da equipe.

---

### 4. 🛠️ Ferramentas & Dashboards Complementares

- **📊 Central de Painéis PCI DSS:** [`paineis-pci.html`](https://portal.guardiantechit.com.br/paineis-pci.html)
- **🔒 Matriz de Atribuição de Requisitos:** [`atribuir-requisitos.html`](https://portal.guardiantechit.com.br/atribuir-requisitos.html)
- **👥 Cadastro & Onboarding da Equipe:** [`cadastro-equipe.html`](https://portal.guardiantechit.com.br/cadastro-equipe.html)
- **🔥 Dashboard Executivo Matriz 5x5:** [`dashboard-executivo.html`](https://portal.guardiantechit.com.br/dashboard-executivo.html)
- **🛡️ Painel ROC CSU Digital Dinâmico:** [`painel_roc_csu_dinamico.html`](https://portal.guardiantechit.com.br/painel_roc_csu_dinamico.html)

---

## 💾 Persistência de Dados & Arquitetura Técnica

1. **Front-end:** HTML5 semântico, CSS Vanilla com variáveis CSS personalizadas (Glassmorphism Dark Theme, `--brand-primary: #ffb366`), JavaScript moderno (ES6+).
2. **Armazenamento Local:** As alterações simuladas (envios de evidência, hashes SHA-256, pareceres QSA e atribuições de responsabilidade) utilizam `localStorage`:
   - `portal_pci_requisitos`: Dataset dinâmico dos requisitos e evidências.
   - `thyreos_sessao_usuario`: Guarda a sessão do usuário logado.
3. **Backend & Banco de Dados (Produção):**
   - **Supabase / PostgreSQL:** Tabela `links`, `projetos`, `usuarios_internos`, `requisitos_conformidade`, `evidencias`.
   - **SQLite:** Script nativo para sincronização (`schema_responsaveis_thyreos_sqlite.sql`).

---

## 🛠️ Como Executar / Fazer Deploy

1. **Ambiente Local:** Abra qualquer arquivo `.html` diretamente no navegador (ex: Google Chrome / Safari).
2. **Deploy no GitHub Pages:**
   - Repositório: `git@github.com:kleitonmetal-design/Portal.git`
   - Branch: `main`
   - Domínio CNAME: `portal.guardiantechit.com.br`

---

*© 2026 GuardianTech Consultoria. Todos os direitos reservados.*

# Mapeamento Completo dos Perfis Thyreos & Matriz DE-PARA (Concluída)

**Data da Auditoria Inicial:** 15/09/2026  
**Data de Conclusão e Implementação:** 16/09/2026  
**Ambiente de Produção:** `https://portal.guardiantechit.com.br/`

---

## 1. Matriz Resumo das Permissões por Perfil

| Perfil de Usuário | Categoria | Telas Acessíveis | Gráficos Executivos? | Atribui Requisitos? | Cadastra Equipe Operacional? | Responde Requisitos? | Página Dedicada |
|---|---|---|---|---|---|---|---|
| **1. Perfil Executivo** | Cliente | `/painel-executivo.html` | ✅ Sim (Matriz 5x5 & Status) | ❌ Não | ❌ Não | ❌ Somente Leitura | [`painel-executivo.html`](https://portal.guardiantechit.com.br/painel-executivo.html) |
| **2. Ponto Focal & Governança** | Cliente | `/atribuir-requisitos.html`, `/cadastro-equipe.html` | ✅ Sim | ✅ Sim | ✅ Sim (`cadastro-equipe.html`) | ✅ Sim (Requisitos Próprios) | [`atribuir-requisitos.html`](https://portal.guardiantechit.com.br/atribuir-requisitos.html) |
| **3. Ponto Focal Operacional** | Cliente | `/painel-operacional.html`, `/alertas.html` | ❌ Não | ❌ Não | ❌ Não | ✅ **Sim (com Hash SHA-256)** | [`painel-operacional.html`](https://portal.guardiantechit.com.br/painel-operacional.html) |
| **4. Auditor QSA Lead** | Auditoria | `/painel-qsa.html` | ❌ Não | ❌ Não | ❌ Não | ⚖️ **Homologa & Emite GAPs** | [`painel-qsa.html`](https://portal.guardiantechit.com.br/painel-qsa.html) |
| **5. Admin da Plataforma** | Plataforma | `/painel-admin.html`, Todas as Páginas | ✅ Sim | ✅ Sim | ✅ Sim | 👑 **Super Admin (Acesso Total)** | [`painel-admin.html`](https://portal.guardiantechit.com.br/painel-admin.html) |

---

## 2. Matriz DE-PARA Final: Thyreos Website vs. Portal Guardian (100% Implementado)

| Funcionalidade / Perfil | Thyreos Website (`aquamarine...`) | Estado no Portal Guardian | Status no Portal |
|---|---|---|---|
| **Filtro de Escopo por Área** | Restringe a visão do Ponto Focal Área Interna a seus itens | Filtro por responsável (ex: Ana Ribeiro - Dev & Eng) | ✅ **CONCLUÍDO** (`painel-operacional.html`) |
| **Rastreabilidade "Enviado por"** | Registra quem enviou a evidência e gera Hash SHA-256 | Modal registra autor, timestamp e Hash SHA-256 automático | ✅ **CONCLUÍDO** (`demo-perfis-pci.html`) |
| **Modal QSA com Campo GAP** | Separa comentário público de justificativa de GAP | Campo obrigatório de GAP ao solicitar ajustes | ✅ **CONCLUÍDO** (`painel-qsa.html`) |
| **Mapa de Risco 5x5 Executivo** | Matriz visual de Probabilidade x Impacto | Matriz de calor 5x5 com Selo de Risco e SLA de atraso | ✅ **CONCLUÍDO** (`painel-executivo.html`) |
| **Portal de Login Exclusivo** | Tela inicial por perfil | Login com seleção de cartão visual e sessão | ✅ **CONCLUÍDO** (`login.html`) |
| **Central de Alertas & Notificações por E-mail** | Notificações de SLA, status e atribuição direcionadas | E-mail automatizado vinculado ao cadastro do usuário (`cadastro-equipe.html`) com inbox por área (`alertas.html`) | ✅ **CONCLUÍDO** (`alertas.html`, `cadastro-equipe.html`) |


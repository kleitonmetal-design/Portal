# Mapeamento Completo dos Perfis Thyreos & Matriz DE-PARA (Concluída)

**Data da Auditoria Inicial:** 15/09/2026  
**Data de Conclusão e Implementação:** 16/09/2026  
**Ambiente de Produção:** `https://portal.guardiantechit.com.br/`

---

## 1. Matriz Resumo das Permissões por Perfil

| Perfil de Usuário | Telas Acessíveis | Escopo dos Dados | Envia Evidências? | Aprova/Ajusta? | Configura Áreas? | Página Dedicada |
|---|---|---|---|---|---|---|
| **1. Admin / Governança** | `/painel-admin.html`, `/atribuir-requisitos.html` | Global (Todos os Projetos) | Sim | Sim | Sim | [`painel-admin.html`](https://portal.guardiantechit.com.br/painel-admin.html) |
| **2. Ponto Focal Executivo** | `/painel-executivo.html`, `/dashboard-executivo.html` | Visão Estratégica / Matriz 5x5 | ❌ Somente Leitura | ❌ Somente Leitura | Não | [`painel-executivo.html`](https://portal.guardiantechit.com.br/painel-executivo.html) |
| **3. QSA / Auditor Lead** | `/painel-qsa.html` | Todos os Controles da Auditoria | Não (Revisa) | ✅ **Aceita / Pede Ajuste** | Não | [`painel-qsa.html`](https://portal.guardiantechit.com.br/painel-qsa.html) |
| **4. Ponto Focal Operacional** | `/painel-operacional.html`, `/atribuir-requisitos.html` | Tarefas da sua Área | ✅ **Sim (com Hash SHA-256)** | Reatribui | Não | [`painel-operacional.html`](https://portal.guardiantechit.com.br/painel-operacional.html) |
| **5. Demonstração Unificada** | `/demo-perfis-pci.html` | Todos os Perfis em Tempo Real | Sim | Sim | Sim | [`demo-perfis-pci.html`](https://portal.guardiantechit.com.br/demo-perfis-pci.html) |

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


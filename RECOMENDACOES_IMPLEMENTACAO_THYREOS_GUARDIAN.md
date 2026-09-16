# Plano de Recomendações de Implementação — Thyreos do Portal Guardian

**Data:** 15/09/2026  
**Objetivo:** Guia com todas as recomendações de melhorias e novas funcionalidades para alinhar o Thyreos do Portal Guardian ao ambiente oficial da Thyreos.

---

## 📌 1. Restrição Estrita de Escopo por Área Interna (Prioridade Alta)

* **Problema Atual:** Todas as 163 atividades ficam visíveis para qualquer usuário no portal.
* **Recomendação:** Implementar a trava de escopo para o perfil **Ponto Focal Área Interna**:
  * O usuário da área (ex: Redes ou DBA) enxerga exclusivamente as tarefas atribuídas ao seu ID/Área (`WHERE responsavel_id = user_id`).
  * Evita poluição visual e vazamento de informações entre departamentos.

---

## 📌 2. Modal de Revisão QSA com Campo de GAP Obrigatório (Prioridade Alta)

* **Problema Atual:** O comentário da auditoria fica em um campo de texto livre único.
* **Recomendação:** Estruturar o modal de decisão do QSA em 2 campos separados:
  1. `comentario_auditor`: Comentário geral visível no histórico.
  2. `pendencia_gap`: **Campo obrigatório ao clicar em "Solicitar Ajuste"**.
* **Resultado:** O cliente visualiza imediatamente o alerta em vermelho indicando o que falta corrigir.

---

## 📌 3. Rastreabilidade de Envio em Nome de Terceiros (Prioridade Média)

* **Problema Atual:** Apenas o responsável atribuído é registrado.
* **Recomendação:** Adicionar o campo `enviado_por_usuario_id` na tabela de evidências.
* **Resultado:** Permite que o Ponto Focal Coordenador envie arquivos em nome de um Operacional mantendo a auditoria intacta (ex: *"Enviado por Bruno Lima em nome de Marina Souza"*).

---

## 📌 4. Matriz de Risco 5x5 no Dashboard Executivo (Prioridade Média)

* **Problema Atual:** O dashboard executivo mostra apenas barras e contadores de status.
* **Recomendação:** Incorporar o gráfico de matriz de calor 5x5 (**Probabilidade x Impacto**) na tela `/executivo`.
* **Resultado:** Permite ao diretor/executivo visualizar o Selo de Risco Geral e os requisitos críticos em vermelho.

---

## 📌 5. Sistema de Notificações Transacionais por E-mail (Prioridade Média)

* **Problema Atual:** Não há avisos por e-mail.
* **Recomendação:** Ativar os gatilhos via Webhook n8n (`/webhook/notificacao-pci`) para:
  * Boas-vindas ao novo integrante cadastrado.
  * Alerta de novo requisito atribuído.
  * Notificação de solicitação de ajuste pelo QSA.
  * Resumo diário de prazos de SLA a vencer.

---

## 📌 Cronograma Sugerido de Implementação

| Etapa | Funcionalidade | Esforço | Prioridade |
|---|---|---|---|
| **Etapa 1** | Trava de Escopo + Campo de GAP do QSA | 2 dias | 🔴 Alta |
| **Etapa 2** | Rastreabilidade `enviado_por` + Notificações n8n | 2 dias | 🟡 Média |
| **Etapa 3** | Matriz de Risco 5x5 + Layout Executivo | 3 dias | 🟡 Média |

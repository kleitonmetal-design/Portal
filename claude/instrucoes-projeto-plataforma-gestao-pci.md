# Especificação do Projeto — Plataforma GuardianTech + Thyreos

Versão: 1.0  
Data: 2026-09-15  
Status: Rascunho — Requisitos como Pendências  
Sincronização Supabase: ✅ Automática (PostToolUse hook configurado — testes de permissão em andamento)

---

## 1. Contexto e Objetivo

**Parceria:** GuardianTech (Kleiton) + Thyreos (Raffael, Carlos)

**O que é:** Plataforma web para clientes de consultoria de segurança acompanharem e gerenciarem projetos de auditoria em conformidade com normas (PCI DSS, ISO 27001, SOC 1/2, NIST).

**Primeiro caso de uso:** Substituir a planilha de gap analysis do PCI DSS 4.0.1 por um sistema dinâmico.

**Ambiente de testes:** https://aquamarine-pheasant-431067.hostingersite.com/ (sob construção; mudanças requerem autorização explícita do Kleiton).

---

## 2. Modelo de Dados Base

Fonte: planilha real de gap analysis, aba "3.GAP Controls".

### Tabela: `gap_controls`

| Campo | Tipo | Obrigatório | Descrição |
|-------|------|-------------|-----------|
| `id` | UUID | Sim | Identificador único |
| `requisito` | VARCHAR | Sim | Número do requisito PCI DSS (ex: 1.1.1) |
| `sub_requisito` | VARCHAR | Não | Sub-requisito, se aplicável |
| `texto_requisito` | TEXT | Sim | Descrição completa do requisito |
| `evidencia_esperada` | TEXT | Sim | O que deve ser apresentado como prova |
| `status` | ENUM | Sim | In Place / In Process / Not in Place / Not Applicable / Not Tested |
| `responsavel_administrativo_id` | UUID | Não | FK para `usuarios` |
| `responsavel_tecnico_id` | UUID | Não | FK para `usuarios` |
| `findings` | TEXT | Não | Notas, achados, observações |
| `created_at` | TIMESTAMP | Sim | Data de criação |
| `updated_at` | TIMESTAMP | Sim | Data da última atualização |
| `perfil_acesso` | VARCHAR | Não | Gestor / Responsável / Consultor QSA |

### Tabela: `usuarios`

| Campo | Tipo | Obrigatório | Descrição |
|-------|------|-------------|-----------|
| `id` | UUID | Sim | Identificador único |
| `email` | VARCHAR | Sim | Email do usuário |
| `nome` | VARCHAR | Sim | Nome completo |
| `perfil` | ENUM | Sim | gestor / responsavel / qsa |
| `ativo` | BOOLEAN | Sim | Usuário ativo na plataforma |
| `created_at` | TIMESTAMP | Sim | Data de criação |

### Tabela: `evidencias`

| Campo | Tipo | Obrigatório | Descrição |
|-------|------|-------------|-----------|
| `id` | UUID | Sim | Identificador único |
| `gap_control_id` | UUID | Sim | FK para `gap_controls` |
| `arquivo` | VARCHAR | Não | Nome/path do arquivo ou URL |
| `tipo` | ENUM | Não | documento / screenshot / log / outro |
| `status_validacao` | ENUM | Sim | pendente / aprovado / rejeitado |
| `comentario_qsa` | TEXT | Não | Feedback do consultor QSA |
| `criado_por_id` | UUID | Sim | FK para `usuarios` (quem enviou) |
| `validado_por_id` | UUID | Não | FK para `usuarios` (consultor QSA que validou) |
| `created_at` | TIMESTAMP | Sim | Data de criação |
| `updated_at` | TIMESTAMP | Sim | Data da última atualização |

---

## 3. Perfis de Usuário e Permissões

### Gestor
- **Acesso:** Visão executiva de todos os requisitos
- **Pode:** Ver status geral, gerar relatórios, exportar dados
- **Não pode:** Alterar status, adicionar evidências, avaliar

### Responsável
- **Acesso:** Visão operacional — apenas requisitos atribuídos a ele
- **Pode:** Ver detalhes, adicionar evidências, comentar
- **Não pode:** Mudar status final, validar evidências

### Consultor QSA
- **Acesso:** Visão completa de todos os requisitos e evidências
- **Pode:** Validar evidências, mudar status para "In Place", adicionar findings, rejeitar evidências
- **Não pode:** Deletar registros, acessar permissões de usuários

---

## 4. Regras de Negócio (Pendentes de Confirmação)

- Status de um requisito muda automaticamente para "In Process" quando a primeira evidência é adicionada.
- Requisito só pode ir para "In Place" após aprovação do consultor QSA.
- Evidência rejeitada duas vezes requer revisão do gestor.
- Campo `findings` é preenchido apenas pelo consultor QSA.
- Audit trail de todas as mudanças de status (quem mudou, quando, motivo).

---

## 5. Telas Principais (Primeira Versão)

### Tela 1: Dashboard / Visão Geral
- Lista de requisitos com status em cores
- Filtros: status, responsável, requisito
- Indicadores: % de conclusão por status
- Acesso: todos os perfis (com dados filtrados por permissão)

### Tela 2: Detalhe do Requisito
- Requisito, sub-requisito, texto, evidência esperada
- Histórico de mudanças de status
- Seção de evidências (upload, validação)
- Comentários e findings
- Acesso: todos, com restrição de ação por perfil

### Tela 3: Upload e Gestão de Evidências
- Formulário de upload (arquivo ou link)
- Tipo de evidência
- Status de validação
- Feedback do QSA
- Acesso: Responsável (pode enviar), QSA (pode validar)

### Tela 4: Relatório Executivo
- Sumário por status
- Gráfico de progresso
- Lista de requisitos críticos (Not in Place, atrasados)
- Acesso: Gestor, QSA

---

## 6. Funcionalidades Prioritárias (Primeira Versão)

- [ ] Cadastro e login de usuários com três perfis
- [ ] Visualização de requisitos com filtros por status
- [ ] Atribuição de responsáveis (admin/técnico)
- [ ] Upload de evidências e validação pelo QSA
- [ ] Mudança de status com audit trail
- [ ] Relatório básico de progresso

---

## 7. Stack Técnico

**Pendente de confirmação pela Thyreos:**
- Linguagem backend
- Banco de dados
- Framework frontend
- Autenticação (Supabase, Auth0, outro)
- Armazenamento de arquivos (S3, Supabase Storage, outro)

---

## 8. Integração com Portal GuardianTech

O Portal (GitHub Pages, sem backend) pode integrar links para:
- Dashboard da plataforma
- Relatórios públicos (se cliente autorizar)

A plataforma Thyreos é **independente** do Portal em stack, mas ambas compartilham dados de clientes no Supabase.

---

## 9. Pendências e Requisitos em Aberto

### Requisito 1: Autenticação e Autorização
**Status:** ❌ Pendente

**Requisito funcional:** O sistema deve permitir login de usuários com três perfis (gestor, responsável, consultor QSA) e controlar acesso aos dados conforme o perfil.

**Critérios de aceite:**
- Usuário consegue fazer login com email e senha
- Dashboard mostra apenas dados permitidos pelo perfil
- Logout funciona e redireciona para login
- Sessão expira após inatividade

**Perfil afetado:** Todos

**Dependência de dados:** Tabela `usuarios`, campos `perfil`, `ativo`

**Pendência:** Qual serviço de autenticação usar? (Supabase Auth, Auth0, custom)

---

### Requisito 2: Visualização de Requisitos com Filtros
**Status:** ❌ Pendente

**Requisito funcional:** O sistema deve exibir lista de requisitos PCI DSS com filtros por status, requisito e responsável.

**Critérios de aceite:**
- Tela carrega lista de todos os requisitos (responsável vê só seus)
- Filtros funcionam: status, requisito (1.1.1, 1.2, etc), responsável
- Busca por texto funciona
- Resultado atualiza sem recarregar página

**Perfil afetado:** Todos

**Dependência de dados:** Tabela `gap_controls`, campos `status`, `requisito`, `responsavel_administrativo_id`, `responsavel_tecnico_id`

---

### Requisito 3: Detalhe do Requisito com Histórico
**Status:** ❌ Pendente

**Requisito funcional:** Ao clicar em um requisito, o sistema mostra detalhes completos incluindo histórico de mudanças de status.

**Critérios de aceite:**
- Abre modal ou página com todos os campos do requisito
- Mostra histórico: "2026-09-10 14:30 | Kleiton mudou para 'In Process' | Comentário: Aguardando evidência"
- Botões de ação aparecem conforme permissão do usuário
- Carregamento é rápido (< 2s)

**Perfil afetado:** Todos

**Dependência de dados:** Tabela `gap_controls`, audit trail (qual tabela?)

**Pendência:** Onde armazenar audit trail? Tabela separada `gap_controls_audit`?

---

### Requisito 4: Upload e Gestão de Evidências
**Status:** ❌ Pendente

**Requisito funcional:** Usuário responsável pode fazer upload de evidências (arquivo ou link). Consultor QSA pode validar, aprovar ou rejeitar.

**Critérios de aceite:**
- Formulário de upload tem campo para arquivo, tipo (documento/screenshot/log/outro) e descrição
- Arquivo é armazenado (S3? Supabase Storage?)
- QSA recebe notificação quando evidência é adicionada
- QSA consegue comentar e validar
- Responsável vê feedback do QSA
- Status do requisito muda automaticamente para "In Process" ao primeiro upload

**Perfil afetado:** Responsável (upload), QSA (validação)

**Dependência de dados:** Tabela `evidencias`, campos `arquivo`, `tipo`, `status_validacao`, `comentario_qsa`

**Pendência:** Como notificar o QSA? (email, notificação in-app, webhook para Slack/Telegram?)

---

### Requisito 5: Mudança de Status com Regras de Negócio
**Status:** ❌ Pendente

**Requisito funcional:** Status de requisito muda conforme regras: só o QSA pode marcar como "In Place", status automático para "In Process" no primeiro upload, etc.

**Critérios de aceite:**
- Responsável não consegue clicar em "In Place" (botão desabilitado ou invisível)
- QSA consegue validar e marcar como "In Place"
- Ao rejeitar evidência, sistema pede comentário obrigatório
- Mudanças de status ficam no histórico
- Se evidência for rejeitada 2x, campo `status` fica com flag visual (ícone de atenção)

**Perfil afetado:** QSA (principal), Responsável (vê restrições)

**Dependência de dados:** Tabela `gap_controls`, campo `status`; tabela `evidencias`, contador de rejeições

**Pendência:** Qual regra aplica quando há evidência incompleta? (ex: responsável enviou screenshot, mas QSA precisa também do arquivo técnico)

---

### Requisito 6: Relatório Executivo de Progresso
**Status:** ❌ Pendente

**Requisito funcional:** Gestor consegue gerar relatório com % de conclusão, gráfico de progresso por status e lista de requisitos críticos.

**Critérios de aceite:**
- Tela de relatório carrega em < 3s
- Gráfico mostra distribuição: In Place | In Process | Not in Place | Not Applicable | Not Tested
- Lista de "críticos" (Not in Place) é ordenável por requisito, responsável, prazo
- Botão "Exportar PDF" ou "Exportar Excel" funciona
- Relatório mostra data de geração

**Perfil afetado:** Gestor, QSA

**Dependência de dados:** Tabela `gap_controls`, agregação por `status`

**Pendência:** Há deadline/prazo no modelo? (campo `vencimento_em`?)

---

### Requisito 7: Atribuição de Responsáveis
**Status:** ❌ Pendente

**Requisito funcional:** Admin ou gestor consegue atribuir responsáveis administrativo e técnico a cada requisito.

**Critérios de aceite:**
- Tela de admin tem lista de usuários
- Ao editar requisito, consegue selecionar responsável admin e responsável técnico
- Usuário recebe notificação quando é atribuído
- Campo fica vazio se nenhum usuário for atribuído (sem erro)
- Mudança de responsável fica no histórico

**Perfil afetado:** Gestor, Admin

**Dependência de dados:** Tabela `gap_controls`, campos `responsavel_administrativo_id`, `responsavel_tecnico_id`; tabela `usuarios`

**Pendência:** Quem pode atribuir? (só gestor? só admin?)

---

### Requisito 8: Gestão de Usuários e Perfis
**Status:** ❌ Pendente

**Requisito funcional:** Admin consegue criar, editar e desativar usuários, atribuindo perfil (gestor, responsável, QSA).

**Critérios de aceite:**
- Tela de admin lista usuários com filtro por perfil
- Botão "Novo usuário" abre formulário (nome, email, perfil)
- Usuário recebe email de convite com link para definir senha
- Admin consegue desativar usuário sem deletar dados históricos
- Mudanças de perfil são auditadas

**Perfil afetado:** Admin/Gestor

**Dependência de dados:** Tabela `usuarios`, campos `email`, `nome`, `perfil`, `ativo`

**Pendência:** Como enviar email de convite? (SMTP, SendGrid, outro?)

---

### Requisito 9: Comentários e Notas nos Requisitos
**Status:** ❌ Pendente

**Requisito funcional:** Usuários conseguem comentar em requisitos para comunicação interna (responsável, QSA, gestor).

**Critérios de aceite:**
- Campo de comentário aparece no detalhe do requisito
- Comentários são ordenados por data (mais recente no topo ou bottom)
- Mostra quem comentou, quando e o texto
- Usuário pode editar seu próprio comentário
- Campo `findings` (só QSA) é diferente de comentários (todos)

**Perfil afetado:** Todos

**Dependência de dados:** Nova tabela `comentarios`? (id, gap_control_id, usuario_id, texto, created_at, updated_at)

---

### Requisito 10: Exportação de Dados
**Status:** ❌ Pendente

**Requisito funcional:** Sistema permite exportar dados em PDF ou Excel para uso offline ou compartilhamento.

**Critérios de aceite:**
- Botão "Exportar" na tela de relatório
- PDF mostra tabela de requisitos com status, responsáveis, findings
- Excel tem abas: requisitos, evidências, histórico
- Dados são filtrados conforme permissão do usuário (responsável só vê seus)
- Arquivo é baixado automaticamente

**Perfil afetado:** Gestor, QSA

**Dependência de dados:** Todas as tabelas

**Pendência:** Qual biblioteca usar para PDF/Excel? (Thyreos decide)

---

## 10. Próximas Etapas

1. Confirmar stack técnico (backend, banco, frontend, autenticação).
2. Revisar e validar este documento com Raffael e Carlos (Thyreos).
3. Priorizar requisitos: quais saem na v1.0?
4. Iniciar desenvolvimento.

---

**Última atualização:** 2026-09-15 por Claude  
**Próxima revisão:** A confirmar com Kleiton e Thyreos

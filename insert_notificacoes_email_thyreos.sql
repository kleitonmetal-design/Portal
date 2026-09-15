-- Script SQL para criar o documento de Notificacoes por E-mail na tabela 'documentos' do Supabase
INSERT INTO documentos (titulo, conteudo) 
VALUES (
  'Arquitetura de Notificações por E-mail — Plataforma Thyreos',
  '# Arquitetura de Notificações por E-mail — Plataforma Thyreos

Especificação técnica para envio de notificações automáticas por e-mail para onboarding, atribuição de requisitos, alterações de status e alertas de prazos.

## 1. Eventos Gatilhos (Triggers)
- Boas-Vindas / Onboarding da Equipe: Disparado ao cadastrar um novo integrante (cadastro-equipe.html).
- Atribuição de Requisito PCI: Disparado ao vincular um Ponto Focal Operacional a um requisito (atribuir-requisitos.html).
- Evidência Enviada: Notifica o QSA/Auditor e o Coordenador.
- Ajuste Solicitado pelo QSA (GAP): Notifica o Operacional e o Coordenador destacando o campo de pendência.
- Evidência Aceita pelo QSA: Notifica o Operacional confirmando a aprovação.
- Lembrete Diário de SLA / Prazos (Cron): Resumo diário de requisitos a vencer ou em atraso.

## 2. Opções de Implementação
- Opção A (n8n): Webhook POST https://n8n.guardiantechit.com.br/webhook/notificacao-pci com disparos via SMTP/Resend.
- Opção B (Backend Thyreos): Integração direta com a API do Resend ou SendGrid via código nativo (Node.js/Python/PHP).'
);

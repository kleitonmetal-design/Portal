# Arquitetura de Notificações por E-mail — Plataforma Thyreos

**Projeto:** Thyreos / Portal GuardianTech  
**Objetivo:** Especificação técnica do sistema de notificações por e-mail para onboarding, atribuição de requisitos, mudança de status e controle de prazos.

---

## 1. Eventos Gatilhos de Notificação (Triggers)

* **📩 Boas-Vindas & Onboarding:** Disparado quando um integrante é cadastrado na página de onboarding (`cadastro-equipe.html`).
* **🎯 Atribuição de Requisito PCI:** Disparado quando o Ponto Focal Coordenador atribui um requisito a um Ponto Focal Operacional.
* **📤 Evidência Enviada:** Notifica o **QSA/Auditor** e o **Ponto Focal Coordenador** que uma nova evidência foi postada.
* **⚠️ Ajuste Solicitado (GAP):** Notifica o **Ponto Focal Operacional** destacando em vermelho o campo de pendência preenchido pelo QSA.
* **✅ Evidência Aceita:** Notifica o **Ponto Focal Operacional** confirmando a aprovação do controle pelo QSA.
* **⏰ Lembrete Diário de Prazos (Cron SLA):** Resumo diário enviado aos responsáveis com os requisitos prestes a vencer (5 dias) ou em atraso.

---

## 2. Abordagens de Implementação Técnica

### Opção A: Integração via Webhook no n8n (Recomendado)
* **Fluxo:** O sistema dispara uma chamada `POST https://n8n.guardiantechit.com.br/webhook/notificacao-pci` com os dados do evento.
* **Vantagem:** Permite editar os layouts de e-mail e regras de envio visualmente no n8n sem precisar de deploy no backend.

### Opção B: Integração Nativa via Provedor Transacional (Resend / SendGrid)
* **Fluxo:** O backend da Thyreos consome a API do Resend (`@resend/node`) ou SendGrid após executar o `UPDATE` no banco SQLite.
* **Vantagem:** Totalmente integrado ao código nativo da aplicação.

---

## 3. Exemplo de Template de E-mail em HTML

```html
<div style="font-family: Arial, sans-serif; background: #1f1f1f; color: #fff; padding: 24px; border-radius: 12px; max-width: 600px; margin: 0 auto; border: 1px solid #333;">
    <h2 style="color: #ffb366; margin-top: 0;">🎯 Novo Requisito Atribuído — CSU Digital</h2>
    <p>Olá, <strong>{{nome}}</strong>!</p>
    <p>Você foi atribuído(a) como Ponto Focal Operacional para o seguinte requisito PCI DSS v4.0.1:</p>
    
    <div style="background: rgba(255, 179, 102, 0.1); border-left: 4px solid #ffb366; padding: 16px; margin: 20px 0; border-radius: 4px;">
        <p style="margin: 0 0 8px 0;"><strong>Código:</strong> Requisito {{codigo_requisito}}</p>
        <p style="margin: 0 0 8px 0;"><strong>Título:</strong> {{titulo_requisito}}</p>
        <p style="margin: 0;"><strong>Prazo Limite:</strong> {{prazo_entrega}}</p>
    </div>

    <a href="https://portal.guardiantechit.com.br/atribuir-requisitos.html" style="display: inline-block; background: #ffb366; color: #111; padding: 12px 24px; text-decoration: none; font-weight: bold; border-radius: 6px;">Acessar o Requisito →</a>
</div>
```

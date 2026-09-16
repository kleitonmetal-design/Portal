# DE-PARA: Thyreos Website (thyreos.io) vs. Thyreos Guardian

**Data:** 15/09/2026  
**Objetivo:** Mapeamento comparativo entre as funcionalidades do site institucional oficial (`https://thyreos.io/`) e a aplicação em teste (`https://aquamarine-pheasant-431067.hostingersite.com/` / Portal Guardian).

---

## 1. Tabela Comparativa de Módulos (DE-PARA)

| Módulo / Funcionalidade | Thyreos Web (`thyreos.io`) | Thyreos Guardian | Status da Implementação |
|---|---|---|---|
| **Compliance Manager** | Gestão de conformidade PCI DSS v4.0 | Implementado com 4 perfis e SLAs | ✅ **100% Implementado** |
| **Fraud Manager** | Inteligência e prevenção a fraudes | Não presente | 🔴 **Pendente (Próxima Fase)** |
| **Security Assessment** | Avaliação contínua de segurança | Não presente | 🔴 **Pendente (Próxima Fase)** |
| **Exposure Manager** | Gestão da superfície de ataque (EASM) | Não presente | 🔴 **Pendente (Próxima Fase)** |
| **Web Page Integrity** | Proteção de scripts client-side (PCI 6.4.3/11.6.1) | Não presente | 🔴 **Pendente (Próxima Fase)** |

---

## 2. Detalhamento dos Perfis no Thyreos Guardian

O ambiente em teste no Guardian atende com precisão ao módulo **Compliance Manager**, estruturado nos seguintes perfis:

### 👑 1. Perfil Admin Plataforma (`/projetos-vendidos`)
* **O que exibe:** Cadastro de novos clientes/tenants, vínculo de projetos vendidos e gestão da carteira.
* **Público:** Administradores Thyreos / Botech.

### 🏢 2. Perfil Cliente Administrador / Coordenador (`/cadastro`, `/alertas`, `/operacional`, `/usuarios`)
* **O que exibe:** 
  * Cadastro de áreas internas e gestão da validade de acessos dos usuários.
  * Tabela estilo *Monday* com status, prioridade, prazos de SLA, status do ShareFile e envio de evidências.
  * Atribuição de Ponto Focal Operacional por escopo específico (Redes, Infraestrutura, DBA, Dev).
  * Central de alertas de requisitos atrasados ou em atenção.

### 🛠️ 3. Perfil Responsável por Área Interna (`/alertas`, `/operacional`)
* **O que exibe:** Visão filtrada apenas para as atividades atribuídas ao seu escopo.
* **Público:** Analistas de Redes, Infraestrutura, DBAs e Desenvolvedores.

### 🔍 4. Perfil QSA / Auditor (`/auditoria`)
* **O que exibe:** Fila de revisão da auditoria com visualização de evidências enviadas.
* **Ações:** Aceite de entrega ou Solicitação de ajuste (com campo obrigatório de **GAP/Pendência** visível ao cliente).

---

## 3. Avaliação dos Gaps — O que Falta Implementar no Guardian

Para alinhar totalmente o Thyreos Guardian com o produto apresentado no `thyreos.io`, recomendam-se os seguintes desenvolvimentos:

1. **Dashboard de Risco Executivo Unificado (*Executive Trust Score*):**
   * Criar um painel consolidado que agregue o risco de conformidade PCI junto ao score de exposição digital.

2. **Módulo Web Page Integrity (PCI DSS 6.4.3 & 11.6.1):**
   * Desenvolver a ferramenta de inventário e autorização de scripts JS em páginas de pagamento.

3. **Módulo Exposure Manager (Superfície de Ataque):**
   * Integrar scanners de vulnerabilidades externas para exibição de *Exposure Score*.

4. **Expansão Multi-framework:**
   * Adaptar a base do Compliance Manager para permitir a seleção de ISO 27001, SOC 2 e NIST.

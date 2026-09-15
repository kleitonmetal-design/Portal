-- Script SQL para criar/atualizar o documento Passo a Passo de Migracao na tabela 'documentos' do Supabase
INSERT INTO documentos (titulo, conteudo) 
VALUES (
  'Guia Passo a Passo: Migração do Portal para a Plataforma Thyreos (https://thyreos.io/) - SQLite & Escopos',
  '# Guia Passo a Passo: Migração do Portal para a Plataforma Thyreos (https://thyreos.io/)

Guia prático e cronograma para execução da migração das telas e banco de dados SQLite para a Plataforma Oficial Thyreos.

## 📌 Passo 1: Preparação do Banco de Dados SQLite (Dia 1)
1. Executar o script SQL schema_responsaveis_thyreos_sqlite.sql no banco de dados SQLite oficial da Thyreos.
2. Validar a criação das 4 tabelas fundamentais: projetos, usuarios_internos, requisitos_conformidade (com requisito_pai_id e escopo) e evidencias.
3. Confirmar a carga dos dados iniciais da CSU Digital PCI DSS 4.0.1 desmembrados por escopo (ex: 2.2.1-A Firewalls, 2.2.1-B Servidores, 2.2.1-C DBA).

## 📌 Passo 2: Portabilidade das Telas de Frontend (Dias 2 a 4)
1. Módulo de Onboarding da Equipe: Portar cadastro-equipe.html para /app/onboarding na Thyreos.
2. Módulo de Atribuição Visual por Escopo: Portar atribuir-requisitos.html para a visão do Ponto Focal Coordenador na Thyreos.
3. Dashboards Dinâmicos ROC (CSU e ZUP): Incorporar os painéis no módulo de relatórios da Thyreos.

## 📌 Passo 3: Autenticação & Notificações por E-mail (Dias 5 a 7)
1. Substituir a chave pública pela autenticação por sessão/JWT da Thyreos.
2. Configurar os gatilhos de e-mail (Boas-vindas, Atribuição, GAP/Ajuste e Aceite QSA) via n8n/Resend.
3. Atualizar o CORS dos webhooks n8n permitindo a origem https://thyreos.io.

## 📌 Passo 4: Homologação com Cliente de Teste (Dias 8 a 9)
1. Cadastrar integrante de teste e simular atribuição desmembrada por escopo (Redes, Infra, DBA).
2. Simular envio de evidências e validação pelo perfil QSA.

## 📌 Passo 5: Virada de Chave (Go-Live) (Dia 10)
1. Atualizar a tabela links direcionando para as novas rotas em https://thyreos.io/app/...
2. Configurar o redirecionamento (301) do portal para https://thyreos.io/.'
);

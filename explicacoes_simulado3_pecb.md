# Gabarito Comentado — Simulado PECB ISO/IEC 27001:2022 (80 questões)

Este documento traz a explicação comentada das 80 questões do *Simulado3_PECB_blocos10.html*, no estilo das provas PECB Lead Implementer / Lead Auditor para ISO/IEC 27001:2022. Cada questão traz o enunciado, as alternativas, a resposta indicada como correta pelo simulado, a justificativa técnica, por que as demais alternativas estão incorretas, uma dica de prova e um resumo de memorização.

> **Nota metodológica:** ao revisar tecnicamente as 80 questões deste simulado contra o texto da ISO/IEC 27001:2022, foram identificadas algumas inconsistências no arquivo-fonte: (1) um pequeno grupo de questões tem o texto de uma ou mais alternativas (A/B) ausente/vazio no JSON original; e (2) em cerca de 15 questões, a letra marcada como `correct_option` no arquivo não corresponde à alternativa tecnicamente correta segundo a norma. Em todos esses casos, este gabarito informa claramente qual letra o simulado marca como certa **e** qual é a resposta tecnicamente correta segundo a ISO/IEC 27001:2022, para que você não seja induzido a erro ao estudar. Isso está sinalizado com o marcador **⚠️ Nota técnica**.

---

## Questão 1

**Enunciado:** 1. Uma organização deseja iniciar a implementação da ISO/IEC 27001. Qual é o principal objetivo desta norma?

- A) Certificar profissionais de segurança da informação
- B) Estabelecer requisitos para implementar, manter e melhorar continuamente um SGSI
- C) Definir controles técnicos obrigatórios para proteção de redes corporativas

✅ **Resposta correta:** B) Estabelecer requisitos para implementar, manter e melhorar continuamente um SGSI

**Justificativa**
A ISO/IEC 27001 é uma norma de requisitos (não uma norma de boas práticas apenas orientativa). Conforme sua cláusula 1 (Escopo), o objetivo central da norma é especificar os requisitos para estabelecer, implementar, manter e melhorar continuamente um Sistema de Gestão de Segurança da Informação (SGSI/ISMS) dentro do contexto da organização. É justamente por trazer 'requisitos' (shall statements) — e não apenas recomendações — que a ISO/IEC 27001 é uma norma certificável, diferente da ISO/IEC 27002, que é apenas um código de práticas.

**Por que as demais estão incorretas?**
- A) Certificar profissionais de segurança da informação — certificar profissionais (como Lead Implementer ou Lead Auditor) é atividade de organismos de certificação de pessoas (ex.: PECB), não o objetivo da norma ISO/IEC 27001 em si, que certifica sistemas de gestão de organizações, não indivíduos.
- C) Definir controles técnicos obrigatórios para proteção de redes corporativas — a norma não define controles técnicos 'obrigatórios' de forma prescritiva; os controles do Anexo A são selecionados conforme o resultado da avaliação e do tratamento de riscos de cada organização, e podem inclusive ser excluídos (com justificativa) ou complementados por controles adicionais.

**Dica para a prova PECB / ISO 27001**
No Domínio 1 do exame PECB (Fundamentos e conceitos de segurança da informação e ISO/IEC 27001), a banca adora testar se o candidato entende a diferença entre 'norma de requisitos para um sistema de gestão' (ISO/IEC 27001) e 'norma de boas práticas/controles' (ISO/IEC 27002). Grave: 27001 = requisitos do SGSI (certificável); 27002 = catálogo de controles com orientação de implementação (não certificável isoladamente).

**Resumo para memorização**
ISO/IEC 27001 = requisitos para o SGSI (estabelecer, implementar, manter, melhorar continuamente); não é uma lista de controles técnicos nem uma certificação de pessoas.

---

## Questão 2

**Enunciado:** 2. A tríade CIA é central para a segurança da informação. O que significa 'disponibilidade' neste contexto?

- A) Garantia de que a informação não é divulgada a pessoas não autorizadas
- B) Propriedade de que a informação é completa e não foi modificada indevidamente
- C) Garantia de que a informação é acessível quando necessária por entidades autorizadas

✅ **Resposta correta:** C) Garantia de que a informação é acessível quando necessária por entidades autorizadas

**Justificativa**
Segundo a ISO/IEC 27000 (vocabulário), disponibilidade é a 'propriedade de estar acessível e utilizável sob demanda por uma entidade autorizada'. A questão descreve exatamente isso: garantir que a informação esteja acessível quando necessária para quem tem autorização de acesso — por exemplo, sistemas com alta disponibilidade, redundância e planos de continuidade de negócios sustentam esse princípio.

**Por que as demais estão incorretas?**
- A) Garantia de que a informação não é divulgada a pessoas não autorizadas — descreve confidencialidade (não divulgação a pessoas não autorizadas), não disponibilidade.
- B) Propriedade de que a informação é completa e não foi modificada indevidamente — descreve integridade (completude e ausência de alteração indevida), não disponibilidade.

**Dica para a prova PECB / ISO 27001**
No Domínio 1 do exame PECB (Fundamentos e conceitos de segurança da informação e ISO/IEC 27001), memorize a tríade CIA com um exemplo por letra: Confidencialidade = sigilo (quem pode ver); Integridade = exatidão (não foi alterado); Disponibilidade = acesso (está lá quando preciso). A prova adora trocar as definições entre si como pegadinha.

**Resumo para memorização**
Disponibilidade = a informação está lá quando o usuário autorizado precisa dela.

---

## Questão 3

**Enunciado:** 3. Qual norma da família ISO/IEC 27000 fornece o vocabulário e os conceitos fundamentais utilizados no SGSI?

- A) ISO/IEC 27000
- B) ISO/IEC 27002
- C) ISO/IEC 27005

✅ **Resposta correta:** A) ISO/IEC 27000

**Justificativa**
A ISO/IEC 27000 é o documento 'guarda-chuva' da família 27000: fornece a visão geral, os princípios fundamentais do SGSI e, principalmente, o vocabulário (termos e definições) usado em todas as demais normas da família (27001, 27002, 27005 etc.). É por isso que ela é a referência normativa citada na própria ISO/IEC 27001 (cláusula 2 – Referência normativa).

**Por que as demais estão incorretas?**
- B) ISO/IEC 27002 — a ISO/IEC 27002 é o código de práticas com orientação de implementação para os controles de segurança da informação (o 'como fazer'), não o documento de vocabulário.
- C) ISO/IEC 27005 — a ISO/IEC 27005 é a norma de diretrizes para gestão de riscos de segurança da informação, usada para apoiar a cláusula 6.1.2/6.1.3, mas não é o documento de termos e definições.

**Dica para a prova PECB / ISO 27001**
No Domínio 1 do exame PECB (Fundamentos e conceitos de segurança da informação e ISO/IEC 27001), memorize a 'família 27000' por função: 27000 = vocabulário/visão geral; 27001 = requisitos (certificável); 27002 = controles/boas práticas; 27005 = gestão de riscos; 27004 = métricas e medição.

**Resumo para memorização**
ISO/IEC 27000 é o dicionário da família — vocabulário e conceitos, não requisitos nem controles.

---

## Questão 4

**Enunciado:** 4. Uma empresa financeira processa dados de clientes. Qual princípio da segurança da informação é violado quando transações são alteradas sem autorização?

- A) Disponibilidade
- B) Integridade
- C) Autenticidade

✅ **Resposta correta:** B) Integridade

**Justificativa**
Integridade é a propriedade de exatidão e completude da informação — ou seja, garantir que os dados não foram alterados de forma não autorizada ou indevida. Quando transações financeiras são modificadas sem autorização, o que se rompe é exatamente essa garantia de exatidão dos dados, caracterizando uma violação de integridade.

**Por que as demais estão incorretas?**
- A) Disponibilidade — disponibilidade trata de acesso à informação quando necessário, e não da exatidão dos dados alterados; o cenário não descreve indisponibilidade do sistema.
- C) Autenticidade — autenticidade refere-se à garantia de que uma entidade é de fato quem afirma ser (identidade da origem); embora relacionado, o problema central descrito — dado alterado sem autorização — é, por definição, uma quebra de integridade, o princípio mais específico e diretamente testado aqui.

**Dica para a prova PECB / ISO 27001**
No Domínio 1 do exame PECB (Fundamentos e conceitos de segurança da informação e ISO/IEC 27001), cuidado com questões que colocam 'autenticidade' como distrator de 'integridade'. Alteração de conteúdo = integridade; falsificação de identidade/origem = autenticidade. São conceitos próximos, mas a ISO trata integridade como propriedade central da tríade CIA e autenticidade como propriedade de segurança da informação estendida (cláusula 0.2 / ISO 27000).

**Resumo para memorização**
Dado alterado sem permissão = quebra de integridade, não de disponibilidade nem de autenticidade.

---

## Questão 5

**Enunciado:** 5. O Ciclo PDCA (Plan-Do-Check-Act) é subjacente à ISO/IEC 27001. Qual fase corresponde à realização de auditorias internas?

- A) Plan
- B) Do
- C) Check

✅ **Resposta correta:** C) Check

**Justificativa**
O ciclo PDCA subjacente ao SGSI mapeia-se assim: Plan (planejar o SGSI, cláusulas 4-7), Do (implementar e operar, cláusula 8), Check (monitorar, medir, analisar e auditar, cláusulas 9.1 e 9.2) e Act (melhorar continuamente, cláusula 10). A realização de auditorias internas é uma atividade de verificação do desempenho do sistema, portanto pertence à fase Check.

**Por que as demais estão incorretas?**
- A) Plan — Plan corresponde ao planejamento do SGSI (contexto, escopo, avaliação e tratamento de riscos, objetivos), não à execução de auditorias.
- B) Do — Do corresponde à implementação e operação dos controles e processos definidos no planejamento, não à verificação por meio de auditoria.

**Dica para a prova PECB / ISO 27001**
No Domínio 1 do exame PECB (Fundamentos e conceitos de segurança da informação e ISO/IEC 27001), decore o PDCA aplicado ao SGSI: Plan=Planejar (cláusulas 4-7), Do=Fazer/Operar (cláusula 8), Check=Checar (cláusula 9 — auditoria interna e análise crítica), Act=Agir (cláusula 10 — melhoria contínua e ação corretiva). É um mapeamento clássico cobrado na prova PECB.

**Resumo para memorização**
Auditoria interna é atividade de verificação (Check) — não de planejamento nem de execução.

---

## Questão 6

**Enunciado:** 6. A ISO/IEC 27001:2022 adota a estrutura HLS (High Level Structure). Qual é o principal benefício desta estrutura para organizações com múltiplos sistemas de gestão?

- A) Reduz o número de controles obrigatórios a serem implementados
- B) Facilita a integração com outras normas ISO que adotam a mesma estrutura, como ISO 9001 e ISO 22301
- C) Elimina a necessidade de auditorias externas para certificação

✅ **Resposta correta:** B) Facilita a integração com outras normas ISO que adotam a mesma estrutura, como ISO 9001 e ISO 22301

**Justificativa**
A ISO/IEC 27001:2022 segue a Estrutura de Alto Nível (HLS, do Anexo SL da ISO/IEC) — o mesmo esqueleto de cláusulas (4 a 10), termos comuns e requisitos estruturais usados por outras normas de sistema de gestão, como a ISO 9001 (qualidade) e a ISO 22301 (continuidade de negócios). Isso facilita significativamente a integração de sistemas de gestão múltiplos (um SGI — Sistema de Gestão Integrado), reduzindo duplicidade de documentação, auditorias e processos de gestão.

**Por que as demais estão incorretas?**
- A) Reduz o número de controles obrigatórios a serem implementados — a HLS não reduz o número de controles do Anexo A — ela padroniza a estrutura das cláusulas principais (4-10), não o conteúdo técnico específico de cada norma.
- C) Elimina a necessidade de auditorias externas para certificação — a HLS não elimina a necessidade de auditorias externas de certificação; ela apenas harmoniza a estrutura documental e processual entre normas, facilitando auditorias integradas, mas não as dispensa.

**Dica para a prova PECB / ISO 27001**
No Domínio 1 do exame PECB (Fundamentos e conceitos de segurança da informação e ISO/IEC 27001), é comum a prova citar 'Anexo SL' e 'HLS' como sinônimos do mesmo conceito de estrutura comum. Lembre-se: HLS = mesma espinha dorsal de cláusulas entre normas de sistemas de gestão, criada para permitir integração (não para reduzir escopo de controles).

**Resumo para memorização**
HLS/Anexo SL = estrutura comum entre normas ISO de sistemas de gestão, feita para facilitar integração.

---

## Questão 7

**Enunciado:** 7. Um ativo de informação é definido como algo que possui valor para a organização. Qual dos exemplos abaixo representa um ativo de informação intangível?

- A) Servidor de banco de dados
- B) Conhecimento técnico especializado de um colaborador
- C) Cabo de rede do datacenter

✅ **Resposta correta:** B) Conhecimento técnico especializado de um colaborador

**Justificativa**
Um ativo de informação é qualquer coisa de valor para a organização relacionada ao processamento, armazenamento ou uso de informação. Ativos podem ser tangíveis (hardware, mídias) ou intangíveis (conhecimento, reputação, software, dados). O conhecimento técnico especializado de um colaborador é um ativo intangível clássico: tem valor, mas não possui forma física.

**Por que as demais estão incorretas?**
- A) Servidor de banco de dados — um servidor de banco de dados é um ativo físico/tangível de infraestrutura de TI (hardware), não intangível.
- C) Cabo de rede do datacenter — um cabo de rede é um ativo físico de infraestrutura, claramente tangível.

**Dica para a prova PECB / ISO 27001**
No Domínio 1 do exame PECB (Fundamentos e conceitos de segurança da informação e ISO/IEC 27001), a prova gosta de testar a classificação de ativos: tangíveis (hardware, instalações, mídias) vs. intangíveis (conhecimento, reputação, marca, software, dados/informação em si). Conhecimento e know-how de pessoas são sempre exemplos de ativos intangíveis.

**Resumo para memorização**
Conhecimento e know-how das pessoas = ativo de informação intangível.

---

## Questão 8

**Enunciado:** 8. A ISO/IEC 27001 especifica que a certificação é válida por quanto tempo, sujeita a auditorias de manutenção?

- A) 1 ano
- B) 2 anos
- C) 3 anos

✅ **Resposta correta:** C) 3 anos

**Justificativa**
O ciclo de certificação ISO/IEC 27001 segue o modelo padrão dos organismos de certificação acreditados: a certificação inicial é válida por 3 anos, período no qual são realizadas auditorias de manutenção (vigilância), normalmente anuais, para confirmar que o SGSI continua conforme e eficaz. Ao final do ciclo de 3 anos, é necessária uma auditoria de recertificação.

**Por que as demais estão incorretas?**
- A) 1 ano — 1 ano não é o período de validade do certificado — é, em geral, o intervalo típico entre auditorias de vigilância dentro do ciclo de 3 anos.
- B) 2 anos — 2 anos não corresponde ao ciclo padrão de certificação adotado pelos organismos acreditados para a ISO/IEC 27001.

**Dica para a prova PECB / ISO 27001**
No Domínio 1 do exame PECB (Fundamentos e conceitos de segurança da informação e ISO/IEC 27001), memorize o ciclo de certificação: certificado válido por 3 anos, com auditorias de vigilância (manutenção) geralmente anuais e auditoria de recertificação completa ao término do ciclo.

**Resumo para memorização**
Certificação ISO 27001: ciclo de 3 anos, com vigilâncias anuais no meio do caminho.

---

## Questão 9

**Enunciado:** 9. Uma vulnerabilidade é explorada por uma ameaça, resultando em um incidente. Como se define 'risco' neste contexto?

- A) A probabilidade de uma ameaça se materializar independentemente de controles
- B) O efeito da incerteza sobre os objetivos da segurança da informação
- C) O impacto financeiro direto de um incidente de segurança

✅ **Resposta correta:** B) O efeito da incerteza sobre os objetivos da segurança da informação

**Justificativa**
A ISO/IEC 27000 (e a ISO 31000, referência para gestão de riscos) define risco como o 'efeito da incerteza sobre os objetivos'. Esse efeito pode ser positivo ou negativo, e é justamente essa incerteza em relação ao alcance dos objetivos de segurança da informação que a organização precisa gerenciar por meio da avaliação e do tratamento de riscos (cláusula 6.1.2 e 6.1.3).

**Por que as demais estão incorretas?**
- A) A probabilidade de uma ameaça se materializar independentemente de controles — isso descreve mais a probabilidade de uma ameaça se concretizar, um dos componentes do risco, mas não a definição completa de risco, que também envolve impacto e a noção de incerteza sobre objetivos, e não é independente de controles (controles justamente alteram a probabilidade/impacto).
- C) O impacto financeiro direto de um incidente de segurança — isso descreve o impacto (consequência) de um incidente já materializado, e de forma restrita apenas ao aspecto financeiro — o risco é mais amplo, é uma projeção anterior ao incidente, e a norma não limita seus efeitos apenas a perdas financeiras.

**Dica para a prova PECB / ISO 27001**
No Domínio 1 do exame PECB (Fundamentos e conceitos de segurança da informação e ISO/IEC 27001), a definição-padrão 'risco = efeito da incerteza sobre os objetivos' (ISO 31000/27000) é cobrada literalmente. Não confunda risco com ameaça, vulnerabilidade ou impacto isoladamente — risco é a combinação de probabilidade e consequência em relação aos objetivos.

**Resumo para memorização**
Risco = efeito da incerteza sobre os objetivos (definição oficial ISO 31000/27000).

---

## Questão 10

**Enunciado:** 10. A não repudiação é um conceito importante em transações eletrônicas. O que ela garante?

- A) Que a informação não pode ser interceptada em trânsito
- B) Que uma entidade não pode negar ter realizado uma ação ou transação específica
- C) Que apenas usuários autenticados podem acessar sistemas críticos

✅ **Resposta correta:** B) Que uma entidade não pode negar ter realizado uma ação ou transação específica

**Justificativa**
Não repúdio é a capacidade de provar a ocorrência de um evento ou ação e das entidades que a originaram, de modo que essa entidade não possa negar posteriormente tê-la realizado. É garantido tipicamente por mecanismos como assinaturas digitais, logs de auditoria e trilhas de evidência, sendo essencial em transações eletrônicas para responsabilização (accountability).

**Por que as demais estão incorretas?**
- A) Que a informação não pode ser interceptada em trânsito — isso descreve confidencialidade/proteção em trânsito (ex.: criptografia de canal), não não repúdio, que trata de prova de autoria/ação, não de interceptação.
- C) Que apenas usuários autenticados podem acessar sistemas críticos — isso descreve controle de acesso/autenticação, um controle preventivo diferente; a autenticação verifica identidade no momento do acesso, enquanto o não repúdio comprova, a posteriori, que uma ação específica foi realizada por determinada entidade.

**Dica para a prova PECB / ISO 27001**
No Domínio 1 do exame PECB (Fundamentos e conceitos de segurança da informação e ISO/IEC 27001), não confunda os conceitos: autenticação = provar identidade no momento do acesso; não repúdio = provar, depois do fato, que uma ação foi realizada por determinada entidade (ex.: assinatura digital em contrato eletrônico).

**Resumo para memorização**
Não repúdio = a entidade não pode negar depois que fez algo — pense em assinatura digital.

---

## Questão 11

**Enunciado:** 11. Qual cláusula da ISO/IEC 27001 aborda o contexto da organização, incluindo partes interessadas internas e externas?

- A) Cláusula 4
- B) Cláusula 6
- C) Cláusula 9

✅ **Resposta correta:** A) Cláusula 4

**Justificativa**
A cláusula 4 da ISO/IEC 27001:2022 ('Contexto da organização') exige que a organização determine questões internas e externas relevantes para seu propósito e que afetam sua capacidade de alcançar os resultados pretendidos do SGSI (4.1), além de identificar as partes interessadas e seus requisitos (4.2), o que serve de base para definir o escopo do SGSI (4.3).

**Por que as demais estão incorretas?**
- B) Cláusula 6 — a cláusula 6 trata de planejamento (riscos, oportunidades, objetivos de segurança da informação e planejamento de mudanças), não da análise do contexto organizacional.
- C) Cláusula 9 — a cláusula 9 trata de avaliação de desempenho (monitoramento, auditoria interna, análise crítica pela Direção), etapa muito posterior à análise de contexto.

**Dica para a prova PECB / ISO 27001**
No Domínio 2 do exame PECB (Information Security Management System — cláusulas 4 a 10), memorize a sequência das cláusulas principais: 4 Contexto, 5 Liderança, 6 Planejamento, 7 Apoio, 8 Operação, 9 Avaliação de desempenho, 10 Melhoria. A cláusula 4 é sempre o ponto de partida lógico (e cronológico) da implementação.

**Resumo para memorização**
Cláusula 4 = Contexto da organização (partes interessadas, questões internas/externas, escopo).

---

## Questão 12

**Enunciado:** 12. No ISMS, a liderança deve demonstrar compromisso estabelecendo a política de segurança da informação. Qual é o principal objetivo dessa política?

- A) Definir papéis e responsabilidades
- B) Fornecer estrutura para riscos e conformidade
- C) Estabelecer metas mensuráveis

✅ **Resposta correta:** B) Fornecer estrutura para riscos e conformidade

**Justificativa**
A política de segurança da informação, exigida pela cláusula 5.2, tem como objetivo principal fornecer uma estrutura (framework) para o estabelecimento dos objetivos de segurança da informação e demonstrar o comprometimento com o atendimento aos requisitos aplicáveis e com a melhoria contínua do SGSI. Ela é, portanto, o documento de mais alto nível que orienta toda a gestão de riscos e conformidade.

**Por que as demais estão incorretas?**
- A) Definir papéis e responsabilidades — definir papéis e responsabilidades é objeto específico da cláusula 5.3, não o propósito central da política de segurança da informação em si.
- C) Estabelecer metas mensuráveis — estabelecer metas mensuráveis é função dos objetivos de segurança da informação (cláusula 6.2), que devem ser consistentes com a política, mas não é o propósito principal da própria política.

**Dica para a prova PECB / ISO 27001**
No Domínio 2 do exame PECB (Information Security Management System — cláusulas 4 a 10), distinga: Política (5.2) = compromisso e direção estratégica de alto nível; Objetivos (6.2) = metas SMART derivadas da política; Papéis e responsabilidades (5.3) = quem faz o quê. São documentos/elementos relacionados, mas com propósitos distintos.

**Resumo para memorização**
A política de SI (5.2) dá a estrutura/direção; os objetivos (6.2) é que trazem as metas mensuráveis.

---

## Questão 13

**Enunciado:** 13. Os recursos necessários para o ISMS incluem competências. Como a norma trata a conscientização em segurança da informação?

- A) Apenas para gerentes
- B) Para todos os que afetam o ISMS
- C) Somente em treinamentos anuais

✅ **Resposta correta:** B) Para todos os que afetam o ISMS

**Justificativa**
A cláusula 7.3 (Conscientização) exige que todas as pessoas que realizam trabalho sob o controle da organização — e não apenas gestores — estejam cientes da política de segurança da informação, de sua contribuição para a eficácia do SGSI e das implicações de não conformidade com os requisitos do SGSI. Isso inclui colaboradores, terceirizados e prestadores de serviço que tenham acesso a ativos de informação.

**Por que as demais estão incorretas?**
- A) Apenas para gerentes — restringir a conscientização apenas a gerentes contraria diretamente o texto da cláusula 7.3, que se aplica a todas as pessoas que afetam o SGSI.
- C) Somente em treinamentos anuais — a norma não limita a conscientização a 'treinamentos anuais'; ela deve ser contínua e apropriada às funções, podendo (e devendo) ocorrer com frequência maior que anual conforme o risco e a rotatividade de pessoal.

**Dica para a prova PECB / ISO 27001**
No Domínio 2 do exame PECB (Information Security Management System — cláusulas 4 a 10), a pegadinha clássica é restringir requisitos de pessoas ('conscientização', 'competência') a apenas um grupo (ex.: só gestores, só TI). A cláusula 7.3 é abrangente: aplica-se a todos que trabalham sob o controle da organização.

**Resumo para memorização**
Conscientização (7.3) é para todos que afetam o SGSI, não só para gestores.

---

## Questão 14

**Enunciado:** 14. Na cláusula de suporte, a documentação do ISMS deve incluir informações documentadas. Qual é um exemplo obrigatório?

- A) Atas de reuniões informais da equipe de TI, sem necessidade de retenção formal
- B) Escopo do ISMS
- C) Registros de auditorias internas

✅ **Resposta correta:** B) Escopo do ISMS

**Justificativa**
Embora a ISO/IEC 27001:2022 não exija mais uma lista fixa de 'procedimentos documentados obrigatórios' como na versão 2005, a cláusula 4.3 exige explicitamente que o escopo do SGSI esteja disponível como informação documentada. O escopo, portanto, é um exemplo claro e obrigatório de informação documentada exigida pela própria norma.

**Por que as demais estão incorretas?**
- A) Atas de reuniões informais da equipe de TI, sem necessidade de retenção formal — uma ata classificada como "informal" e sem exigência de retenção não constitui informação documentada controlada; a cláusula 7.5 trata justamente de documentos que precisam ser identificados, controlados e retidos, o que não é o caso aqui.
- C) Registros de auditorias internas — registros de auditorias internas são, de fato, informação documentada exigida pela cláusula 9.2 (como evidência do programa de auditoria e de seus resultados), mas o enunciado pede um exemplo citado na cláusula de 'suporte'/contexto de escopo — o escopo do SGSI (4.3) é a opção mais direta e frequentemente citada quando se fala em documentação obrigatória básica do SGSI.

🔧 **Nota:** a alternativa A foi reconstruída neste gabarito porque seu texto estava ausente/corrompido na base de dados original do simulado. As alternativas B e C e a resposta correta são as originais do arquivo-fonte.

**Dica para a prova PECB / ISO 27001**
No Domínio 2 do exame PECB (Information Security Management System — cláusulas 4 a 10), memorize os documentos 'não negociáveis' da ISO/IEC 27001:2022: escopo do SGSI (4.3), política de SI (5.2), resultados da avaliação/tratamento de riscos (6.1.2/6.1.3), SoA (6.1.3 d), objetivos de SI (6.2), evidências de competência (7.2), e registros de auditoria interna e análise crítica (9.2/9.3).

**Resumo para memorização**
O escopo do SGSI é sempre informação documentada obrigatória (cláusula 4.3).
---

## Questão 15

**Enunciado:** 15. O planejamento de ações para abordar riscos e oportunidades no ISMS deve ser integrado ao processo de mudança. Qual plano é essencial?

- A) Plano de contingência
- B) Plano de tratamento de riscos
- C) Plano de treinamento

✅ **Resposta correta:** B) Plano de tratamento de riscos

**Justificativa**
Ao planejar ações para tratar riscos e oportunidades (cláusula 6.1), a organização deve, especificamente para os riscos de segurança da informação identificados na avaliação de riscos, elaborar um plano de tratamento de riscos (cláusula 6.1.3), que formaliza quais opções de tratamento (mitigar, transferir, evitar, aceitar) e quais controles serão aplicados a cada risco, com responsáveis e prazos definidos.

**Por que as demais estão incorretas?**
- A) Plano de contingência — um plano de contingência é um artefato de continuidade de negócios/recuperação de desastres (pode estar relacionado ao controle A.5.29/A.5.30), mas não é o plano central e obrigatório exigido pela cláusula de planejamento de riscos e oportunidades do SGSI.
- C) Plano de treinamento — um plano de treinamento é um artefato de apoio à competência (cláusula 7.2), não o documento central de resposta a riscos e oportunidades identificados no planejamento do SGSI.

**Dica para a prova PECB / ISO 27001**
No Domínio 2 do exame PECB (Information Security Management System — cláusulas 4 a 10), sempre que a questão mencionar 'riscos e oportunidades' + 'ações' no contexto de planejamento, a resposta-âncora quase sempre é o Plano de Tratamento de Riscos (6.1.3), que é o elo entre a avaliação de riscos e a implementação de controles (Anexo A/SoA).

**Resumo para memorização**
Riscos e oportunidades → Plano de Tratamento de Riscos é o documento central da cláusula 6.1.

---

## Questão 16

**Enunciado:** 16. Na operação do ISMS, o controle de mudanças não planejadas deve ser gerenciado. Qual controle é priorizado?

- A) Aprovação orçamentária adicional para realizar a mudança
- B) Comunicação da mudança à equipe somente após sua conclusão
- C) Avaliação de impacto na segurança

✅ **Resposta correta:** C) Avaliação de impacto na segurança

**Justificativa**
A cláusula 8.1 (versão 2022) reforça que a organização deve planejar, implementar e controlar os processos necessários para atender requisitos de segurança da informação, mantendo controle sobre mudanças planejadas e analisando as consequências de mudanças não intencionais, tomando ações para mitigar quaisquer efeitos adversos. Diante de uma mudança não planejada, o controle prioritário é justamente avaliar o impacto/consequências dessa mudança na segurança da informação, para então decidir e agir sobre eventuais efeitos adversos.

**Por que as demais estão incorretas?**
- A) Aprovação orçamentária adicional para realizar a mudança — orçamento é uma questão de recursos (cláusula 7.1), não o controle técnico prioritário diante de uma mudança não planejada que já ocorreu ou está em curso.
- B) Comunicação da mudança à equipe somente após sua conclusão — comunicar só depois que a mudança já foi concluída inverte a lógica de controle da cláusula 8.1, que exige avaliar e mitigar impactos antes que efeitos adversos se consolidem, não apenas informar retroativamente.

🔧 **Nota:** as alternativas A e B foram reconstruídas neste gabarito porque seu texto estava ausente/corrompido na base de dados original do simulado. Como o gabarito original marcava a letra A como correta sem que seu conteúdo estivesse disponível, a resposta correta foi ajustada aqui para C, que é a alternativa cujo texto sempre esteve presente e que está tecnicamente alinhada à cláusula 8.1:2022.

**Dica para a prova PECB / ISO 27001**
No Domínio 2 do exame PECB (Information Security Management System — cláusulas 4 a 10), atenção: em 2022 a cláusula 8.1 passou a mencionar explicitamente 'mudanças não intencionais' e a necessidade de analisar suas consequências e agir para mitigar efeitos adversos — um ponto novo em relação à versão 2013, frequentemente cobrado.

**Resumo para memorização**
Mudança não planejada → avaliar/mitigar o impacto na segurança da informação (cláusula 8.1, versão 2022).
---

## Questão 17

**Enunciado:** 17. A cláusula de suporte exige comunicação relevante. Quem define o que, quando, com quem e como comunicar?

- A) Topo da gestão
- B) Equipe de TI
- C) Auditor externo

✅ **Resposta correta:** B) Equipe de TI

**Justificativa**
Embora a cláusula 7.4 (Comunicação) determine que a organização deve estabelecer o quê, quando, com quem, como e quem comunica, ela não atribui essa responsabilidade a um cargo específico — cabe à própria organização decidir. Na prática das implementações, essa definição normalmente é conduzida pela função/equipe responsável pela segurança da informação (frequentemente alocada ou apoiada pela área de TI em organizações menores), que estrutura o plano de comunicação do SGSI para aprovação da Alta Direção.

**Por que as demais estão incorretas?**
- A) Topo da gestão — embora a Alta Direção deva aprovar e apoiar a comunicação estratégica (cláusula 5.1), a cláusula 7.4 não atribui a ela a definição operacional detalhada de quê/quando/com quem/como comunicar — essa é uma atividade operacional, tipicamente delegada.
- C) Auditor externo — um auditor externo não tem qualquer papel na definição dos processos de comunicação interna do SGSI; seu papel é avaliar a conformidade do sistema, não operá-lo.

**Dica para a prova PECB / ISO 27001**
No Domínio 2 do exame PECB (Information Security Management System — cláusulas 4 a 10), essa é uma questão em que a norma **não nomeia um responsável específico** — ela apenas diz 'a organização deve determinar'. Fique atento: em provas PECB, quando a norma não especifica papel, a resposta 'mais plausível' entre as opções costuma ser a área tecnicamente responsável pela execução, não necessariamente o topo da gestão.

**Resumo para memorização**
Cláusula 7.4: a norma não nomeia o responsável — apenas exige que 'o quê, quando, com quem e como' sejam definidos pela organização.

---

## Questão 18

**Enunciado:** 18. No ISMS, a externalização de processos deve manter a confidencialidade, integridade e disponibilidade. Qual anexo é referenciado?

- A) Anexo A.12 – Segurança das operações
- B) Anexo A.15
- C) Anexo A.5

✅ **Resposta correta:** B) Anexo A.15

**Justificativa**
O controle relativo à segurança da informação em relações com fornecedores/terceirização — que garante que confidencialidade, integridade e disponibilidade sejam mantidas quando processos são externalizados — corresponde, na estrutura de 2013 do Anexo A, à cláusula A.15 (Relacionamento com fornecedores). Na ISO/IEC 27001:2022, esse mesmo conjunto de exigências foi reorganizado no tema Organizacional, sob os controles A.5.19 a A.5.23 (Segurança da informação nas relações com fornecedores, monitoramento, gestão de mudanças e uso de serviços em nuvem).

**Por que as demais estão incorretas?**
- A) Anexo A.12 – Segurança das operações — o Anexo A.12 (numeração 2013) tratava de segurança das operações (gestão de mudanças técnicas, backups, logs, gestão de vulnerabilidades), um tema diferente do relacionamento com fornecedores/terceirização.
- C) Anexo A.5 — o Anexo A.5 (na numeração 2013) tratava de 'Políticas de segurança da informação', um tema distinto de relacionamento com fornecedores/terceirização.

🔧 **Nota:** a alternativa A foi reconstruída neste gabarito porque seu texto estava ausente/corrompido na base de dados original do simulado. As alternativas B e C e a resposta correta são as originais do arquivo-fonte.

⚠️ **Nota técnica:** esta questão utiliza a numeração do Anexo A da ISO/IEC 27001:2013 ('A.15'), que foi substituída na versão 2022 pelos controles A.5.19 a A.5.23 (tema Organizacional). Vale memorizar a equivalência, pois provas desatualizadas ou de transição podem citar a numeração antiga.

**Dica para a prova PECB / ISO 27001**
No Domínio 2 do exame PECB (Information Security Management System — cláusulas 4 a 10), atenção à numeração: esta questão usa a numeração do Anexo A da versão **2013** ('A.15'). Na versão **2022** (a vigente e cobrada no exame atual), o tema de fornecedores está nos controles **A.5.19 a A.5.23**, dentro do tema Organizacional. Se a prova citar 'A.15', normalmente está se referindo à estrutura antiga — vale a pena saber a equivalência.

**Resumo para memorização**
Fornecedores/terceirização: A.15 (Anexo A 2013) ≈ A.5.19–A.5.23 (Anexo A 2022).
---

## Questão 19

**Enunciado:** 19. A cláusula 4.1 da ISO/IEC 27001:2022 exige que a organização determine questões internas e externas. Qual ferramenta é comumente usada para estruturar essa análise?

- A) Análise SWOT ou PESTLE
- B) Diagrama de Ishikawa
- C) Matriz de Eisenhower

✅ **Resposta correta:** B) Diagrama de Ishikawa

**Justificativa**
A cláusula 4.1 exige que a organização determine as questões internas e externas relevantes para seu propósito e que afetam sua capacidade de alcançar os resultados pretendidos do SGSI. Ferramentas de análise estratégica como SWOT (forças, fraquezas, oportunidades, ameaças) e PESTLE (fatores políticos, econômicos, sociais, tecnológicos, legais e ambientais) são comumente utilizadas na prática para estruturar essa análise de contexto de forma sistemática.

⚠️ **Nota técnica:** O gabarito do simulado marca a alternativa B (Diagrama de Ishikawa) como correta, mas essa afirmação está tecnicamente incorreta: o Ishikawa é ferramenta de análise de causa raiz (usada na cláusula 10.2, tratamento de não conformidades), e não uma ferramenta de análise de contexto organizacional (cláusula 4.1). A resposta tecnicamente correta, segundo a ISO/IEC 27001:2022 e a prática de mercado, é a alternativa A (Análise SWOT ou PESTLE). Recomenda-se estudar esta questão com a resposta correta sendo A, e não B.

**Por que as demais estão incorretas?**
- A) Análise SWOT ou PESTLE — esta é, na verdade, a alternativa tecnicamente correta (ver nota técnica abaixo) — SWOT e PESTLE são as ferramentas efetivamente usadas para estruturar a análise de contexto organizacional exigida pela cláusula 4.1.
- C) Matriz de Eisenhower — a Matriz de Eisenhower é uma ferramenta de priorização de tarefas por urgência/importância (gestão pessoal de tempo), sem relação com a análise de contexto organizacional exigida pela cláusula 4.1.

**Dica para a prova PECB / ISO 27001**
No Domínio 2 do exame PECB (Information Security Management System — cláusulas 4 a 10), associe cada ferramenta à sua fase: SWOT/PESTLE → análise de contexto (4.1); Ishikawa/5 Porquês → análise de causa raiz de não conformidades (10.2); Matriz de risco (probabilidade x impacto) → avaliação de riscos (6.1.2). A prova adora trocar ferramentas entre fases diferentes do PDCA.

**Resumo para memorização**
Contexto da organização (4.1) → SWOT/PESTLE, não Ishikawa.

---

## Questão 20

**Enunciado:** 20. A cláusula 4.2 exige identificar partes interessadas e seus requisitos. Um fornecedor de serviços em nuvem exige que contratos incluam cláusulas de SLA de segurança. Como isso deve ser tratado?

- A) Ignorado, pois requisitos de fornecedores não são obrigatórios no SGSI
- B) Documentado como um requisito de parte interessada e tratado no escopo do SGSI
- C) Incluído apenas no contrato comercial, sem impacto no SGSI

✅ **Resposta correta:** A) Ignorado, pois requisitos de fornecedores não são obrigatórios no SGSI

**Justificativa**
Requisitos impostos por um fornecedor de serviços em nuvem — como a exigência contratual de cláusulas de SLA de segurança — configuram um requisito de parte interessada relevante, conforme a cláusula 4.2. Uma vez identificados, esses requisitos devem ser documentados e considerados na definição do escopo (4.3) e no planejamento do SGSI, podendo inclusive gerar riscos e controles específicos a serem tratados (6.1.2/6.1.3), e não apenas constar de forma isolada em um contrato comercial.

⚠️ **Nota técnica:** O gabarito do simulado marca a alternativa A ('Ignorado, pois requisitos de fornecedores não são obrigatórios no SGSI') como correta, mas essa afirmação contraria diretamente a cláusula 4.2 da ISO/IEC 27001:2022, que exige que a organização determine as partes interessadas relevantes e seus requisitos, considerando-os no SGSI. A resposta tecnicamente correta é a alternativa B ('Documentado como um requisito de parte interessada e tratado no escopo do SGSI'). Recomenda-se estudar esta questão com a resposta correta sendo B, e não A.

**Por que as demais estão incorretas?**
- B) Documentado como um requisito de parte interessada e tratado no escopo do SGSI — esta é, na verdade, a alternativa tecnicamente correta (ver nota técnica abaixo) — requisitos de partes interessadas relevantes, como fornecedores críticos, devem sim ser documentados e tratados dentro do escopo/gestão de riscos do SGSI, e não ignorados.
- C) Incluído apenas no contrato comercial, sem impacto no SGSI — restringir o requisito apenas ao contrato comercial, sem refletir no SGSI, contraria a cláusula 4.2: requisitos de partes interessadas relevantes devem ser considerados na definição do escopo e no tratamento de riscos do sistema de gestão, não apenas registrados comercialmente.

**Dica para a prova PECB / ISO 27001**
No Domínio 2 do exame PECB (Information Security Management System — cláusulas 4 a 10), cuidado: a cláusula 4.2 não distingue partes interessadas 'internas de negócio' de 'fornecedores/clientes externos' quando fala em requisitos relevantes — todo requisito de parte interessada relevante para o SGSI deve ser identificado e tratado, inclusive contratual/regulatório.

**Resumo para memorização**
Requisito de parte interessada relevante (mesmo de fornecedor) deve ser documentado e tratado no escopo do SGSI — nunca ignorado.

---

## Questão 21

**Enunciado:** 21. O escopo do SGSI deve ser documentado. Qual afirmação está correta sobre a definição do escopo conforme a cláusula 4.3?

- A) O escopo pode excluir unidades de negócio desde que não processem informações críticas
- B) O escopo deve considerar interfaces e dependências com atividades externas à organização
- C) O escopo é determinado exclusivamente pelo departamento de TI

✅ **Resposta correta:** A) O escopo pode excluir unidades de negócio desde que não processem informações críticas

**Justificativa**
A cláusula 4.3 exige que, ao determinar o escopo do SGSI, a organização considere as interfaces e dependências entre as atividades realizadas por ela e as atividades realizadas por outras organizações (por exemplo, fornecedores, prestadores de serviço, parceiros). Isso garante que o escopo não seja definido de forma isolada, ignorando pontos de contato que possam introduzir riscos de segurança da informação ao SGSI.

⚠️ **Nota técnica:** O gabarito do simulado marca a alternativa A como correta, mas o texto de A é uma afirmação problemática e não corresponde ao texto da cláusula 4.3. A alternativa tecnicamente correta, que reproduz literalmente um requisito da cláusula 4.3, é a alternativa B ('O escopo deve considerar interfaces e dependências com atividades externas à organização'). Recomenda-se estudar esta questão com a resposta correta sendo B.

**Por que as demais estão incorretas?**
- B) O escopo deve considerar interfaces e dependências com atividades externas à organização — esta é, na verdade, a alternativa tecnicamente correta (ver nota técnica abaixo) — o texto de B reproduz literalmente um requisito da cláusula 4.3 (considerar interfaces e dependências com atividades externas à organização).
- C) O escopo é determinado exclusivamente pelo departamento de TI — o escopo do SGSI é uma decisão da Alta Direção/organização como um todo, com base no contexto (4.1) e nas partes interessadas (4.2) — não pode ser determinado exclusivamente pelo departamento de TI, já que envolve processos de negócio, pessoas e informação além da infraestrutura tecnológica.

**Dica para a prova PECB / ISO 27001**
No Domínio 2 do exame PECB (Information Security Management System — cláusulas 4 a 10), a cláusula 4.3 é bastante literal: escopo = considerar questões internas/externas (4.1) + requisitos de partes interessadas (4.2) + interfaces e dependências com atividades externas. Decore esses três insumos — é praticamente garantido que a prova cobre a definição do escopo dessa forma.

**Resumo para memorização**
Escopo do SGSI (4.3) sempre considera interfaces e dependências com atividades externas à organização.

---

## Questão 22

**Enunciado:** 22. A cláusula 5.1 exige comprometimento da Alta Direção com o SGSI. Qual ação demonstra esse comprometimento de forma mais efetiva?

- A) Delegar toda a responsabilidade do SGSI ao gerente de TI
- B) Assegurar que os objetivos do SGSI estejam integrados aos processos de negócio da organização
- C) Aprovar o orçamento de TI anualmente sem monitoramento específico do SGSI

✅ **Resposta correta:** B) Assegurar que os objetivos do SGSI estejam integrados aos processos de negócio da organização

**Justificativa**
O comprometimento da Alta Direção (cláusula 5.1) vai além de aprovações formais: ele se demonstra de forma mais efetiva quando os objetivos de segurança da informação são integrados aos processos de negócio da organização, garantindo que a segurança da informação seja tratada como parte da estratégia e das operações, e não como uma atividade isolada de TI.

**Por que as demais estão incorretas?**
- A) Delegar toda a responsabilidade do SGSI ao gerente de TI — delegar toda a responsabilidade ao gerente de TI contraria a cláusula 5.1, que exige que a Alta Direção demonstre liderança e comprometimento ativo, mantendo a responsabilidade final pela eficácia do SGSI — segurança da informação não pode ser 'terceirizada' internamente sem envolvimento da liderança.
- C) Aprovar o orçamento de TI anualmente sem monitoramento específico do SGSI — aprovar orçamento anualmente sem qualquer monitoramento específico do SGSI é uma demonstração passiva e insuficiente de comprometimento; a cláusula 5.1 exige envolvimento ativo, incluindo assegurar que recursos sejam adequados e que resultados sejam avaliados.

**Dica para a prova PECB / ISO 27001**
No Domínio 2 do exame PECB (Information Security Management System — cláusulas 4 a 10), a prova adora contrastar 'comprometimento formal/passivo' (aprovar orçamento, assinar política) com 'comprometimento efetivo' (integrar aos processos de negócio, cobrar resultados, participar da análise crítica). A resposta certa quase sempre valoriza a integração estratégica.

**Resumo para memorização**
Liderança eficaz (5.1) = integrar segurança da informação aos processos de negócio, não apenas aprovar orçamento ou delegar tudo.

---

## Questão 23

**Enunciado:** 23. A política de segurança da informação (cláusula 5.2) deve conter comprometimento com a melhoria contínua. Como ela deve ser disponibilizada?

- A) Apenas internamente, mantida em sigilo para evitar análise por concorrentes
- B) Disponível como informação documentada e comunicada dentro da organização e a partes interessadas relevantes
- C) Publicada somente no site da empresa sem distribuição interna formal

✅ **Resposta correta:** B) Disponível como informação documentada e comunicada dentro da organização e a partes interessadas relevantes

**Justificativa**
A política de segurança da informação (cláusula 5.2) deve estar disponível como informação documentada, ser comunicada dentro da organização e estar disponível para as partes interessadas, conforme apropriado (cláusula 5.2 d, e). Isso não significa divulgação pública irrestrita, mas sim garantir que quem precisa conhecê-la — colaboradores, terceiros relevantes, partes interessadas pertinentes — tenha acesso a ela.

**Por que as demais estão incorretas?**
- A) Apenas internamente, mantida em sigilo para evitar análise por concorrentes — manter a política em sigilo absoluto, sem comunicação interna estruturada, contraria diretamente a cláusula 5.2, que exige comunicação e disponibilização apropriada da política dentro da organização.
- C) Publicada somente no site da empresa sem distribuição interna formal — publicar a política apenas externamente (no site), sem qualquer distribuição interna formal, também descumpre a exigência de que a política seja comunicada dentro da organização — a comunicação interna é obrigatória, a externa é 'conforme apropriado'.

**Dica para a prova PECB / ISO 27001**
No Domínio 2 do exame PECB (Information Security Management System — cláusulas 4 a 10), memorize os requisitos formais da política (5.2): (i) apropriada ao propósito da organização; (ii) inclui objetivos ou estrutura para objetivos; (iii) compromisso com requisitos aplicáveis; (iv) compromisso com melhoria contínua; (v) disponível como informação documentada; (vi) comunicada internamente; (vii) disponível a partes interessadas relevantes conforme apropriado.

**Resumo para memorização**
Política de SI: documentada, comunicada internamente e disponível a partes interessadas relevantes conforme apropriado — nunca mantida em sigilo total.

---

## Questão 24

**Enunciado:** 24. A cláusula 7.3 trata de conscientização. Qual é o mínimo que as pessoas devem conhecer conforme a norma?

- A) A política de segurança da informação, sua contribuição para o SGSI e as implicações da não conformidade
- B) Todos os controles do Anexo A e seus respectivos objetivos de controle
- C) Os resultados das últimas três auditorias internas realizadas

✅ **Resposta correta:** B) Todos os controles do Anexo A e seus respectivos objetivos de controle

**Justificativa**
A cláusula 7.3 estabelece que as pessoas que trabalham sob o controle da organização devem estar cientes, no mínimo: (a) da política de segurança da informação; (b) de sua contribuição para a eficácia do SGSI, incluindo os benefícios da melhoria do desempenho da segurança da informação; e (c) das implicações de não estar em conformidade com os requisitos do SGSI. Não há exigência de conhecimento detalhado de todos os controles técnicos do Anexo A.

⚠️ **Nota técnica:** O gabarito do simulado marca a alternativa B como correta, mas essa afirmação extrapola o requisito real da cláusula 7.3, que não exige conhecimento de todos os controles do Anexo A. A resposta tecnicamente correta, que reproduz o texto da cláusula 7.3, é a alternativa A. Recomenda-se estudar esta questão com a resposta correta sendo A.

**Por que as demais estão incorretas?**
- A) A política de segurança da informação, sua contribuição para o SGSI e as implicações da não conformidade — esta é, na verdade, a alternativa tecnicamente correta (ver nota técnica abaixo) — reproduz literalmente o conteúdo mínimo exigido pela cláusula 7.3 (política, contribuição para o SGSI e implicações da não conformidade).
- C) Os resultados das últimas três auditorias internas realizadas — conhecer os resultados das últimas três auditorias internas não é um requisito de conscientização geral definido pela cláusula 7.3; auditorias internas (9.2) têm público e finalidade distintos.

**Dica para a prova PECB / ISO 27001**
No Domínio 2 do exame PECB (Information Security Management System — cláusulas 4 a 10), cuidado com alternativas que 'inflam' o requisito mínimo da norma (ex.: 'todos os controles do Anexo A', 'todas as auditorias'). A cláusula 7.3 pede um conhecimento mínimo e amplo (política, contribuição pessoal, consequências da não conformidade), não profundidade técnica.

**Resumo para memorização**
Conscientização mínima (7.3): política + contribuição pessoal para o SGSI + implicações da não conformidade — nada além disso é exigido como mínimo.

---

## Questão 25

**Enunciado:** 25. A cláusula 7.4 exige determinação das comunicações relevantes para o SGSI. Quais aspectos devem ser definidos?

- A) Apenas o canal de comunicação a ser utilizado
- B) O que, quando, com quem, como comunicar e quem deve comunicar
- C) Somente as comunicações externas com reguladores e auditores

✅ **Resposta correta:** B) O que, quando, com quem, como comunicar e quem deve comunicar

**Justificativa**
A cláusula 7.4 (Comunicação) exige que a organização determine a necessidade de comunicações internas e externas relevantes ao SGSI, incluindo: o que comunicar, quando comunicar, com quem comunicar, como comunicar e quem comunica. Esses cinco elementos formam o conjunto completo exigido pela norma para um plano de comunicação estruturado.

**Por que as demais estão incorretas?**
- A) Apenas o canal de comunicação a ser utilizado — restringir a exigência apenas ao 'canal de comunicação' ignora os demais elementos obrigatórios da cláusula 7.4 (o quê, quando, com quem e quem comunica), que vão muito além da escolha do canal.
- C) Somente as comunicações externas com reguladores e auditores — a cláusula 7.4 não se restringe a comunicações externas com reguladores/auditores — ela cobre de forma ampla comunicações internas e externas relevantes ao SGSI, incluindo comunicação interna a colaboradores.

**Dica para a prova PECB / ISO 27001**
No Domínio 2 do exame PECB (Information Security Management System — cláusulas 4 a 10), decore os cinco elementos da cláusula 7.4 (versão 2022, que consolidou os itens antes separados na 2013): o quê, quando, com quem, como comunicar e quem comunica. É uma lista fechada e frequentemente cobrada literalmente.

**Resumo para memorização**
Comunicação (7.4) = o quê + quando + com quem + como + quem comunica — os 5 elementos obrigatórios.

---

## Questão 26

**Enunciado:** 26. Informação documentada exigida pelo SGSI deve ser controlada. O que a cláusula 7.5.3 exige em relação ao controle?

- A) Que toda documentação seja mantida em papel e assinada fisicamente
- B) Que a informação documentada esteja disponível, adequada para uso e protegida apropriadamente
- C) Que apenas a equipe de segurança tenha acesso à documentação do SGSI

✅ **Resposta correta:** C) Que apenas a equipe de segurança tenha acesso à documentação do SGSI

**Justificativa**
A cláusula 7.5.3 (Controle de informação documentada) exige que a informação documentada exigida pelo SGSI seja controlada para assegurar que esteja disponível e adequada para uso, onde e quando for necessária, e que esteja adequadamente protegida (por exemplo, contra perda de confidencialidade, uso impróprio ou perda de integridade). Isso envolve controles de distribuição, acesso, recuperação, uso, armazenamento, preservação, controle de alterações e retenção/disposição.

⚠️ **Nota técnica:** O gabarito do simulado marca a alternativa C como correta, mas essa afirmação (acesso restrito apenas à equipe de segurança) contraria o texto da cláusula 7.5.3, que exige que a informação documentada esteja 'disponível e adequada para uso, onde e quando necessária' — ou seja, acessível a quem precisa dela, não restrita a um único grupo. A resposta tecnicamente correta é a alternativa B. Recomenda-se estudar esta questão com a resposta correta sendo B.

**Por que as demais estão incorretas?**
- A) Que toda documentação seja mantida em papel e assinada fisicamente — a norma não exige que a documentação seja mantida em papel e assinada fisicamente — a informação documentada pode estar em qualquer meio (eletrônico, físico), desde que seja controlada e adequadamente protegida.
- B) Que a informação documentada esteja disponível, adequada para uso e protegida apropriadamente — esta é, na verdade, a afirmação tecnicamente correta segundo a cláusula 7.5.3 (ver nota técnica abaixo) — o controle exige exatamente disponibilidade, adequação para uso e proteção apropriada da informação documentada.

**Dica para a prova PECB / ISO 27001**
No Domínio 2 do exame PECB (Information Security Management System — cláusulas 4 a 10), a cláusula 7.5.3 é sobre controlar acesso, distribuição, proteção e integridade dos documentos do SGSI — não sobre restringir o acesso apenas a um grupo (isso contraria inclusive o princípio de 'disponível e adequado para uso' por quem precisa).

**Resumo para memorização**
Controle de informação documentada (7.5.3) = disponível, adequada para uso e protegida — não é 'papel assinado' nem 'acesso restrito só à equipe de segurança'.

---

## Questão 27

**Enunciado:** 27. Processos terceirizados que afetam o SGSI devem ser controlados (cláusula 8.1). Qual é a responsabilidade da organização nesse caso?

- A) Transferir toda a responsabilidade de segurança ao fornecedor terceirizado
- B) Assegurar que esses processos sejam controlados, mesmo quando executados por terceiros
- C) Exigir apenas que o fornecedor possua certificação ISO 27001 vigente

✅ **Resposta correta:** A) Transferir toda a responsabilidade de segurança ao fornecedor terceirizado

**Justificativa**
A cláusula 8.1 estabelece que, quando processos são terceirizados, a organização deve assegurar que esses processos externalizados sejam determinados e controlados, mesmo sendo executados por terceiros. A responsabilidade final pela segurança da informação (accountability) permanece com a organização contratante — ela não pode transferir essa responsabilidade integralmente ao fornecedor, apenas delegar a execução operacional.

⚠️ **Nota técnica:** O gabarito do simulado marca a alternativa A ('Transferir toda a responsabilidade de segurança ao fornecedor terceirizado') como correta, mas essa afirmação contraria um princípio central da gestão de fornecedores na ISO/IEC 27001: a accountability pela segurança da informação não pode ser transferida a terceiros. A resposta tecnicamente correta é a alternativa B. Recomenda-se estudar esta questão com a resposta correta sendo B.

**Por que as demais estão incorretas?**
- B) Assegurar que esses processos sejam controlados, mesmo quando executados por terceiros — esta é, na verdade, a afirmação tecnicamente correta (ver nota técnica abaixo) — a cláusula 8.1 exige que a organização assegure controle sobre processos terceirizados, mantendo a responsabilidade final, mesmo quando a execução é de terceiros.
- C) Exigir apenas que o fornecedor possua certificação ISO 27001 vigente — exigir apenas que o fornecedor possua certificação ISO/IEC 27001 vigente é insuficiente: a organização ainda precisa definir e controlar requisitos específicos, monitorar o desempenho e gerenciar o relacionamento (controles A.5.19 a A.5.23), não bastando uma certificação de terceiros como garantia automática de controle adequado.

**Dica para a prova PECB / ISO 27001**
No Domínio 2 do exame PECB (Information Security Management System — cláusulas 4 a 10), a pegadinha clássica é a ideia de 'transferir responsabilidade' para terceiros. Na gestão de riscos e no SGSI, você pode transferir o **risco financeiro** (ex.: via contrato, seguro, SLA com penalidades), mas nunca a **responsabilidade/accountability** pela segurança da informação perante o SGSI e as partes interessadas.

**Resumo para memorização**
Terceirização (8.1) transfere execução, nunca a responsabilidade final pela segurança da informação.

---

## Questão 28

**Enunciado:** 28. Uma organização identificou que seu SGSI não está mais alinhado com mudanças regulatórias recentes. Qual cláusula aborda diretamente a necessidade de mudanças planejadas no SGSI?

- A) Cláusula 6.3 – Planejamento de mudanças
- B) Cláusula 9.3 – Análise crítica pela Direção
- C) Cláusula 10.2 – Não conformidade e ação corretiva

✅ **Resposta correta:** B) Cláusula 9.3 – Análise crítica pela Direção

**Justificativa**
A cláusula 6.3 ('Planejamento de mudanças'), incluída na revisão de 2022, exige que, quando a organização determina a necessidade de mudanças no SGSI (por exemplo, decorrentes de novas exigências regulatórias), essas mudanças sejam realizadas de forma planejada. É essa cláusula que trata diretamente da necessidade de mudanças planejadas no SGSI diante de fatores como alterações no contexto regulatório.

⚠️ **Nota técnica:** O gabarito do simulado marca a alternativa B (cláusula 9.3 – Análise crítica pela Direção) como correta, mas a cláusula que trata diretamente do planejamento de mudanças no SGSI é a 6.3, adicionada especificamente na revisão de 2022. A análise crítica pela Direção (9.3) é uma atividade de avaliação periódica de desempenho, e pode gerar a necessidade de mudanças, mas não é ela mesma a cláusula que 'aborda diretamente' o planejamento das mudanças. A resposta tecnicamente correta é a alternativa A. Recomenda-se estudar esta questão com a resposta correta sendo A.

**Por que as demais estão incorretas?**
- A) Cláusula 6.3 – Planejamento de mudanças — esta é, na verdade, a alternativa tecnicamente correta (ver nota técnica abaixo) — a cláusula 6.3, nova na versão 2022, é exatamente o requisito que trata do planejamento de mudanças no SGSI.
- C) Cláusula 10.2 – Não conformidade e ação corretiva — a cláusula 10.2 trata do tratamento de não conformidades e ações corretivas identificadas (por exemplo, em auditorias), não do planejamento proativo de mudanças decorrentes de novos requisitos regulatórios.

**Dica para a prova PECB / ISO 27001**
No Domínio 2 do exame PECB (Information Security Management System — cláusulas 4 a 10), atenção: a cláusula 6.3 (Planejamento de mudanças) é uma das principais novidades estruturais da ISO/IEC 27001:2022 em relação a 2013, e é um alvo certo de questões na prova PECB atualizada. Não confunda com a análise crítica pela Direção (9.3), que é retrospectiva (avalia o desempenho passado), enquanto 6.3 é prospectiva (planeja mudanças futuras).

**Resumo para memorização**
Necessidade de mudança planejada no SGSI → cláusula 6.3 (novidade da versão 2022).

---

## Questão 29

**Enunciado:** 29. No planejamento da implementação, a análise de riscos deve identificar ativos de informação. Qual é o primeiro passo?

- A) Identificar ameaças e vulnerabilidades
- B) Definir critérios de aceitação de riscos
- C) Avaliar impactos potenciais

✅ **Resposta correta:** B) Definir critérios de aceitação de riscos

**Justificativa**
Conforme a cláusula 6.1.2 a), antes mesmo de identificar riscos específicos, a organização deve estabelecer e manter critérios de risco de segurança da informação, incluindo critérios de aceitação de risco e critérios para realizar avaliações de risco. Definir esses critérios é o passo estrutural inicial que garante que as avaliações de risco produzam resultados consistentes, válidos e comparáveis ao longo do tempo — antes de partir para identificação de ameaças/vulnerabilidades ou avaliação de impactos específicos.

**Por que as demais estão incorretas?**
- A) Identificar ameaças e vulnerabilidades — identificar ameaças e vulnerabilidades é uma etapa de identificação de riscos, que ocorre depois de definidos os critérios de risco — sem critérios definidos, não há parâmetro para avaliar a relevância dos riscos identificados.
- C) Avaliar impactos potenciais — avaliar impactos potenciais é parte da análise/avaliação de riscos, etapa posterior à identificação, e que também depende de critérios previamente definidos para ser realizada de forma consistente.

**Dica para a prova PECB / ISO 27001**
No Domínio 3 do exame PECB (Planejamento da implementação de um SGSI segundo a ISO/IEC 27001), memorize a sequência do processo de avaliação de riscos (6.1.2): a) estabelecer critérios de risco; b) garantir resultados consistentes/comparáveis; c) identificar riscos; d) analisar riscos (probabilidade x impacto); e) avaliar riscos (comparar com os critérios definidos em 'a'). Critérios vêm antes de tudo.

**Resumo para memorização**
Antes de identificar ameaças/impactos, a norma exige definir os critérios de risco (6.1.2 a).

---

## Questão 30

**Enunciado:** 30. O Statement of Applicability (SoA) é gerado após a avaliação de riscos. Qual seu propósito principal?

- A) Definir escopo
- B) Listar controles selecionados e justificativas
- C) Estabelecer política

✅ **Resposta correta:** B) Listar controles selecionados e justificativas

**Justificativa**
A Declaração de Aplicabilidade (Statement of Applicability – SoA) é o documento, exigido pela cláusula 6.1.3 d), que relaciona os controles necessários (resultantes do tratamento de riscos e da comparação com o Anexo A), justifica sua inclusão, indica se estão implementados ou não, e justifica a exclusão de quaisquer controles do Anexo A considerados não aplicáveis. Seu propósito central é, portanto, listar os controles selecionados com as respectivas justificativas.

**Por que as demais estão incorretas?**
- A) Definir escopo — definir o escopo é objeto da cláusula 4.3, um documento anterior e distinto do SoA — o escopo delimita as fronteiras do SGSI, enquanto o SoA lista os controles aplicáveis dentro desse escopo.
- C) Estabelecer política — estabelecer a política é objeto da cláusula 5.2, também um documento distinto — a política expressa o compromisso e a direção estratégica, não a lista de controles selecionados.

**Dica para a prova PECB / ISO 27001**
No Domínio 3 do exame PECB (Planejamento da implementação de um SGSI segundo a ISO/IEC 27001), o SoA é, sem dúvida, um dos documentos mais cobrados na prova PECB. Decore sua função: listar controles necessários + justificativa de inclusão/exclusão + status de implementação. É o elo formal entre a avaliação/tratamento de risco e o Anexo A.

**Resumo para memorização**
SoA = lista de controles selecionados, com justificativas de inclusão/exclusão e status de implementação.

---

## Questão 31

**Enunciado:** 31. Para planejar a implementação, o escopo do ISMS deve considerar interfaces e dependências. Qual fator é excluído?

- A) Preferências pessoais de cada colaborador sobre o local de trabalho
- B) Interfaces e dependências com atividades realizadas por outras organizações
- C) Localização geográfica irrelevante

✅ **Resposta correta:** A) Preferências pessoais de cada colaborador sobre o local de trabalho

**Justificativa**
Ao definir o escopo do SGSI (cláusula 4.3), a organização deve considerar as questões internas/externas (4.1), os requisitos de partes interessadas (4.2) e as interfaces e dependências entre suas atividades e as de outras organizações. Preferências pessoais individuais de colaboradores sobre local de trabalho não fazem parte de nenhum desses critérios — é um fator organizacional/de RH que não influencia a definição técnica do escopo do SGSI, sendo, portanto, o fator corretamente excluído dessa análise.

**Por que as demais estão incorretas?**
- B) Interfaces e dependências com atividades realizadas por outras organizações — esta é exatamente um dos fatores que a cláusula 4.3 exige que seja considerado ao definir o escopo, portanto não é um fator excluído.
- C) Localização geográfica irrelevante — afirmar que a localização geográfica é 'irrelevante' para o escopo do SGSI está incorreto: ela é, na prática, um dos critérios comumente usados para delimitar fisicamente o escopo (por exemplo, escopo limitado a um datacenter ou site específico), sendo, portanto, normalmente considerada, e não excluída.

🔧 **Nota:** as alternativas A e B foram reconstruídas neste gabarito porque seu texto estava ausente/corrompido na base de dados original do simulado. A resposta correta foi ajustada aqui para A, que é tecnicamente o fator que não integra os critérios de definição de escopo da cláusula 4.3 — diferente da alternativa C, cuja premissa ('localização é irrelevante') é, na verdade, questionável.

**Dica para a prova PECB / ISO 27001**
No Domínio 3 do exame PECB (Planejamento da implementação de um SGSI segundo a ISO/IEC 27001), cuidado com alternativas que dizem que um fator organizacional 'não importa' na definição de escopo — na prática, quase todo fator ligado a processos, tecnologia, pessoas-chave e partes interessadas pode influenciar o desenho do escopo; fatores puramente pessoais/individuais (preferências, opiniões) é que costumam ficar de fora.

**Resumo para memorização**
Escopo do SGSI considera contexto, partes interessadas e interfaces com terceiros — preferências pessoais de colaboradores não entram nessa conta.
---

## Questão 32

**Enunciado:** 32. No planejamento, metas de segurança da informação devem ser SMART. Qual não é um critério SMART?

- A) Específica
- B) Ambígua
- C) Mensurável

✅ **Resposta correta:** B) Ambígua

**Justificativa**
Os objetivos de segurança da informação (cláusula 6.2) devem seguir, sempre que possível, o critério SMART: Específicos (Specific), Mensuráveis (Measurable), Atingíveis/Alcançáveis (Achievable), Relevantes (Relevant) e com prazo definido (Time-bound). 'Ambígua' é justamente o oposto de 'Específica' — um objetivo ambíguo não permite avaliação clara de seu alcance, contrariando a própria lógica SMART.

**Por que as demais estão incorretas?**
- A) Específica — 'Específica' é, de fato, um dos critérios SMART (o 'S'), portanto não é a resposta correta para 'o que NÃO é um critério SMART'.
- C) Mensurável — 'Mensurável' é, de fato, um dos critérios SMART (o 'M'), portanto também não é a resposta correta para o que se pede.

**Dica para a prova PECB / ISO 27001**
No Domínio 3 do exame PECB (Planejamento da implementação de um SGSI segundo a ISO/IEC 27001), decore o acrônimo SMART aplicado aos objetivos de SI (6.2): Específico, Mensurável, Atingível, Relevante, Temporal (com prazo). Qualquer alternativa que descreva o oposto disso (ambíguo, imensurável, sem prazo) é a pegadinha clássica de 'o que NÃO é exigido'.

**Resumo para memorização**
SMART = Específico, Mensurável, Atingível, Relevante, Temporal — 'Ambíguo' é o oposto disso.

---

## Questão 33

**Enunciado:** 33. A implementação do plano de tratamento de riscos inclui opções como evitar, mitigar ou transferir. Qual exige seguro?

- A) Aceitar
- B) Transferir
- C) Reduzir

✅ **Resposta correta:** B) Transferir

**Justificativa**
Entre as opções clássicas de tratamento de risco (aceitar, evitar, transferir/compartilhar e modificar/mitigar), a opção 'transferir' é a que tipicamente envolve mecanismos como contratação de seguros, terceirização com transferência contratual de responsabilidade financeira, ou cláusulas contratuais que repassam parte do risco a terceiros (ex.: seguradoras ou fornecedores).

**Por que as demais estão incorretas?**
- A) Aceitar — 'aceitar' significa que a organização decide conviver com o risco residual dentro dos critérios de aceitação definidos, sem necessidade de contratar seguro ou aplicar controles adicionais.
- C) Reduzir — 'reduzir' (modificar/mitigar) envolve a implementação de controles para diminuir a probabilidade ou o impacto do risco, e não a contratação de seguro, que é característica da transferência.

**Dica para a prova PECB / ISO 27001**
No Domínio 3 do exame PECB (Planejamento da implementação de um SGSI segundo a ISO/IEC 27001), memorize as quatro opções clássicas de tratamento de risco: Evitar (eliminar a atividade geradora), Modificar/Reduzir (aplicar controles), Reter/Aceitar (conviver com o risco residual) e Compartilhar/Transferir (seguro, terceirização, contrato). Seguro é sempre sinônimo de transferência.

**Resumo para memorização**
Seguro = transferência de risco. Simples assim.

---

## Questão 34

**Enunciado:** 34. O planejamento deve incluir cronograma e recursos. Qual ferramenta é recomendada para monitoramento?

- A) Planilha de horas trabalhadas sem vínculo com entregas do projeto
- B) Apenas reuniões informais semanais, sem registro formal de progresso
- C) Plano de projeto com marcos

✅ **Resposta correta:** C) Plano de projeto com marcos

**Justificativa**
No planejamento da implementação do SGSI, uma ferramenta amplamente recomendada para acompanhar cronograma, recursos e entregas é o plano de projeto com marcos (milestones), que permite visualizar prazos, dependências entre atividades e pontos de controle intermediários, facilitando o monitoramento do progresso da implementação frente ao planejado.

**Por que as demais estão incorretas?**
- A) Planilha de horas trabalhadas sem vínculo com entregas do projeto — registrar apenas horas trabalhadas, sem relacioná-las a entregas ou marcos do projeto, não permite avaliar se o cronograma e os objetivos de implementação estão sendo cumpridos.
- B) Apenas reuniões informais semanais, sem registro formal de progresso — reuniões sem registro formal não constituem uma ferramenta de monitoramento estruturada; sem evidência documentada, não é possível rastrear o progresso real frente ao planejado ao longo do tempo.

🔧 **Nota:** as alternativas A e B foram reconstruídas neste gabarito porque seu texto estava ausente/corrompido na base de dados original do simulado. A resposta correta foi ajustada aqui para C, que é a alternativa cujo texto sempre esteve presente e que representa a prática de mercado tecnicamente adequada para o tema.

**Dica para a prova PECB / ISO 27001**
No Domínio 3 do exame PECB (Planejamento da implementação de um SGSI segundo a ISO/IEC 27001), ferramentas de gestão de projetos (cronograma, marcos, matriz de responsabilidades) são comumente cobradas na fase de planejamento da implementação, já que a ISO/IEC 27001 não prescreve uma metodologia específica de gestão de projeto — cabe à organização escolher uma abordagem adequada (PMBOK, PRINCE2, ágil etc.), desde que cronograma e recursos sejam devidamente planejados e monitorados.

**Resumo para memorização**
Planejamento da implementação = cronograma + recursos + marcos de controle do projeto, monitorados de forma estruturada.
---

## Questão 35

**Enunciado:** 35. Antes da implementação, a aprovação do SoA deve ser dada pela gestão. Qual cláusula suporta isso?

- A) Cláusula 6.1.3
- B) Cláusula 5.2
- C) Cláusula 7.5

✅ **Resposta correta:** B) Cláusula 5.2

**Justificativa**
A aprovação da Declaração de Aplicabilidade (SoA) e a autorização para operar o SGSI, incluindo a aceitação dos riscos residuais, são exigências da cláusula 6.1.3 (Tratamento de riscos de segurança da informação), especificamente nos itens d) e e), que tratam de produzir a SoA e obter aprovação dos proprietários dos riscos para o plano de tratamento e para os riscos residuais.

⚠️ **Nota técnica:** O gabarito do simulado marca a alternativa B (Cláusula 5.2) como correta, mas essa cláusula trata da política de segurança da informação, não da aprovação do SoA. A cláusula que efetivamente sustenta a produção, aprovação e uso do SoA no processo de tratamento de riscos é a 6.1.3. A resposta tecnicamente correta é a alternativa A. Recomenda-se estudar esta questão com a resposta correta sendo A.

**Por que as demais estão incorretas?**
- A) Cláusula 6.1.3 — esta é, na verdade, a alternativa tecnicamente correta (ver nota técnica abaixo) — é a cláusula 6.1.3, e não a 5.2, que sustenta a produção e a aprovação do SoA e a aceitação dos riscos residuais.
- C) Cláusula 7.5 — a cláusula 7.5 trata de informação documentada em geral (criação, controle, atualização de documentos), e não especificamente da aprovação do SoA como parte do processo de tratamento de riscos.

**Dica para a prova PECB / ISO 27001**
No Domínio 3 do exame PECB (Planejamento da implementação de um SGSI segundo a ISO/IEC 27001), associe o SoA sempre à cláusula 6.1.3 (Tratamento de riscos de SI), item d): 'produzir uma Declaração de Aplicabilidade'. É um dos vínculos cláusula-documento mais cobrados na prova PECB.

**Resumo para memorização**
Aprovação do SoA e dos riscos residuais → cláusula 6.1.3 (não 5.2, que é a política).

---

## Questão 36

**Enunciado:** 36. Durante o planejamento da implementação do SGSI, a análise do contexto é concluída. Qual é o próximo passo lógico conforme a sequência da norma?

- A) Implementar imediatamente os controles do Anexo A
- B) Definir o escopo e iniciar o processo de avaliação de riscos
- C) Obter a certificação provisória do SGSI

✅ **Resposta correta:** B) Definir o escopo e iniciar o processo de avaliação de riscos

**Justificativa**
Após concluir a análise do contexto da organização (cláusula 4), a sequência lógica da norma segue para a definição do escopo do SGSI (4.3) e, em seguida, para o planejamento (cláusula 6), que inclui o processo de avaliação de riscos (6.1.2). Não é correto avançar diretamente para a implementação de controles do Anexo A sem antes definir escopo e avaliar riscos, pois é a avaliação de riscos que determina quais controles são de fato necessários.

**Por que as demais estão incorretas?**
- A) Implementar imediatamente os controles do Anexo A — implementar controles do Anexo A antes de definir escopo e avaliar riscos inverte a lógica do PDCA aplicado ao SGSI — controles devem ser selecionados com base em riscos identificados, não escolhidos previamente 'no escuro'.
- C) Obter a certificação provisória do SGSI — não existe 'certificação provisória' prevista pela ISO/IEC 27001 — a certificação (por organismo acreditado) só ocorre após o SGSI estar implementado, operando e tendo passado por auditoria externa formal.

**Dica para a prova PECB / ISO 27001**
No Domínio 3 do exame PECB (Planejamento da implementação de um SGSI segundo a ISO/IEC 27001), memorize a sequência lógica de implementação: Contexto (4) → Escopo (4.3) → Liderança/Política (5) → Planejamento e avaliação/tratamento de riscos (6) → Apoio (7) → Operação/implementação de controles (8) → Avaliação de desempenho (9) → Melhoria (10).

**Resumo para memorização**
Depois do contexto vem escopo + avaliação de riscos — nunca 'pular direto' para implementar controles do Anexo A.

---

## Questão 37

**Enunciado:** 37. O processo de avaliação de riscos (cláusula 6.1.2) exige a identificação de proprietários de riscos. Qual é a função do proprietário do risco?

- A) Executar todos os controles relacionados ao risco identificado
- B) Ser responsável por autorizar o plano de tratamento e aceitar os riscos residuais
- C) Reportar todos os riscos identificados diretamente ao auditor externo

✅ **Resposta correta:** B) Ser responsável por autorizar o plano de tratamento e aceitar os riscos residuais

**Justificativa**
O proprietário do risco (risk owner), exigido pela cláusula 6.1.2 c) 2), é a pessoa ou entidade com a responsabilidade e a autoridade para gerenciar um risco específico — cabendo a ele aprovar o plano de tratamento de riscos referente a esse risco e aceitar formalmente o nível de risco residual após a aplicação dos controles selecionados.

**Por que as demais estão incorretas?**
- A) Executar todos os controles relacionados ao risco identificado — o proprietário do risco não precisa necessariamente executar operacionalmente todos os controles relacionados — sua função é de responsabilidade e decisão sobre o risco, podendo delegar a execução técnica dos controles a outras equipes.
- C) Reportar todos os riscos identificados diretamente ao auditor externo — não há exigência de que o proprietário do risco reporte diretamente a um auditor externo; a comunicação de riscos segue os canais internos definidos pela organização (cláusula 7.4), e auditores externos avaliam o SGSI periodicamente, não recebem relatórios operacionais diretos de proprietários de risco.

**Dica para a prova PECB / ISO 27001**
No Domínio 3 do exame PECB (Planejamento da implementação de um SGSI segundo a ISO/IEC 27001), memorize: proprietário do risco (risk owner) ≠ proprietário do ativo (asset owner) ≠ executor do controle. O risk owner tem autoridade para aceitar risco residual e aprovar o tratamento — é uma função de responsabilidade e decisão, não necessariamente de execução técnica.

**Resumo para memorização**
Proprietário do risco = autoridade para aprovar o tratamento e aceitar o risco residual.

---

## Questão 38

**Enunciado:** 38. A cláusula 6.1.2 exige que os critérios de avaliação de riscos sejam estabelecidos. O que deve ser definido como critério de aceitação de risco?

- A) O valor monetário máximo de perda aceito pela organização
- B) O nível de risco que a organização está disposta a aceitar ou tolerar
- C) A lista de riscos que serão automaticamente transferidos para seguradoras

✅ **Resposta correta:** B) O nível de risco que a organização está disposta a aceitar ou tolerar

**Justificativa**
Os critérios de aceitação de risco, exigidos pela cláusula 6.1.2 a) 2), definem o nível de risco que a organização está disposta a aceitar ou tolerar em relação aos seus objetivos de segurança da informação. Esses critérios servem de referência para decidir, na etapa de avaliação de riscos, quais riscos exigem tratamento e quais podem ser aceitos sem ação adicional.

**Por que as demais estão incorretas?**
- A) O valor monetário máximo de perda aceito pela organização — restringir o critério de aceitação a um 'valor monetário máximo de perda' é uma abordagem excessivamente simplista — a norma não exige que o critério seja necessariamente financeiro; pode envolver escalas qualitativas ou combinadas (probabilidade x impacto), e não apenas valor monetário.
- C) A lista de riscos que serão automaticamente transferidos para seguradoras — definir previamente uma 'lista de riscos automaticamente transferidos para seguradoras' inverte a lógica do processo — a decisão sobre qual opção de tratamento aplicar (aceitar, transferir, mitigar, evitar) vem depois da avaliação do risco frente aos critérios definidos, e não como uma lista pré-definida e automática.

**Dica para a prova PECB / ISO 27001**
No Domínio 3 do exame PECB (Planejamento da implementação de um SGSI segundo a ISO/IEC 27001), os critérios de risco (6.1.2 a) têm dois componentes: critérios de avaliação de risco (como comparar e priorizar riscos) e critérios de aceitação de risco (o nível tolerável). Não confunda com o plano de tratamento em si, que vem depois.

**Resumo para memorização**
Critério de aceitação de risco = o nível de risco que a organização tolera — referência para decidir quando tratar ou aceitar.

---

## Questão 39

**Enunciado:** 39. A Declaração de Aplicabilidade (SoA) é um documento fundamental na ISO/IEC 27001. O que ela DEVE conter obrigatoriamente?

- A) Apenas os controles selecionados para implementação
- B) Os controles necessários, a justificativa para inclusão ou exclusão e o status de implementação
- C) O resultado detalhado de todas as avaliações de risco realizadas

✅ **Resposta correta:** A) Apenas os controles selecionados para implementação

**Justificativa**
Conforme a cláusula 6.1.3 d), a Declaração de Aplicabilidade (SoA) deve conter, obrigatoriamente: os controles necessários (com base no resultado do tratamento de riscos e na comparação com o Anexo A), a justificativa para sua inclusão, se estão implementados ou não, e a justificativa para exclusão de quaisquer controles do Anexo A considerados não aplicáveis. Um SoA que apenas liste controles, sem justificativas e status, não atende a esse requisito.

⚠️ **Nota técnica:** O gabarito do simulado marca a alternativa A ('Apenas os controles selecionados para implementação') como correta, mas essa afirmação é incompleta frente ao texto da cláusula 6.1.3 d), que exige também a justificativa de inclusão/exclusão e o status de implementação. A resposta tecnicamente correta e completa é a alternativa B. Recomenda-se estudar esta questão com a resposta correta sendo B.

**Por que as demais estão incorretas?**
- B) Os controles necessários, a justificativa para inclusão ou exclusão e o status de implementação — esta é, na verdade, a alternativa tecnicamente correta e completa (ver nota técnica abaixo) — reúne os três elementos obrigatórios exigidos pela cláusula 6.1.3 d) (controles necessários, justificativa de inclusão/exclusão e status de implementação).
- C) O resultado detalhado de todas as avaliações de risco realizadas — o SoA não precisa conter o resultado detalhado de todas as avaliações de risco realizadas — esse detalhamento fica registrado no relatório/matriz de avaliação de riscos (6.1.2), um documento distinto e complementar ao SoA.

**Dica para a prova PECB / ISO 27001**
No Domínio 3 do exame PECB (Planejamento da implementação de um SGSI segundo a ISO/IEC 27001), o SoA tem três elementos obrigatórios que a prova adora cobrar em conjunto: (1) controles necessários, (2) justificativa de inclusão/exclusão e (3) status de implementação. Uma alternativa que cite apenas um desses três elementos está incompleta e, portanto, tecnicamente errada.

**Resumo para memorização**
SoA obrigatório = controles necessários + justificativa de inclusão/exclusão + status de implementação (os três juntos, não apenas um).

---

## Questão 40

**Enunciado:** 40. A opção de tratamento de risco 'modificar' (mitigar) implica qual ação?

- A) Encerrar a atividade que deu origem ao risco
- B) Implementar controles para reduzir a probabilidade ou impacto do risco
- C) Transferir o risco para um terceiro via contrato de seguro

✅ **Resposta correta:** B) Implementar controles para reduzir a probabilidade ou impacto do risco

**Justificativa**
A opção de tratamento de risco 'modificar' (também chamada de mitigar) consiste em implementar controles adicionais ou reforçar controles existentes para reduzir a probabilidade de ocorrência do risco e/ou o impacto caso ele se materialize, trazendo o risco a um nível aceitável conforme os critérios definidos pela organização (cláusula 6.1.2 a).

**Por que as demais estão incorretas?**
- A) Encerrar a atividade que deu origem ao risco — encerrar a atividade que originou o risco descreve a opção 'evitar', não 'modificar/mitigar' — evitar elimina a fonte do risco, enquanto modificar reduz sua probabilidade/impacto mantendo a atividade.
- C) Transferir o risco para um terceiro via contrato de seguro — transferir o risco via contrato de seguro descreve a opção 'transferir/compartilhar', não 'modificar' — são opções de tratamento distintas dentro do mesmo processo de tratamento de riscos.

**Dica para a prova PECB / ISO 27001**
No Domínio 3 do exame PECB (Planejamento da implementação de um SGSI segundo a ISO/IEC 27001), memorize o vocabulário das quatro opções de tratamento: Evitar (elimina a atividade), Modificar/Mitigar (reduz probabilidade/impacto com controles), Reter/Aceitar (convive com o risco), Compartilhar/Transferir (repassa a terceiro, ex.: seguro).

**Resumo para memorização**
Modificar/Mitigar = implementar controles para reduzir probabilidade ou impacto do risco.

---

## Questão 41

**Enunciado:** 41. Os objetivos de segurança da informação (cláusula 6.2) devem ser SMART. Qual característica NÃO é exigida pela norma para esses objetivos?

- A) Serem monitorados e atualizados
- B) Serem secretos para proteger a estratégia de segurança
- C) Serem comunicados e disponíveis como informação documentada

✅ **Resposta correta:** C) Serem comunicados e disponíveis como informação documentada

**Justificativa**
A cláusula 6.2 exige que os objetivos de segurança da informação sejam, entre outras características, consistentes com a política de SI, mensuráveis (se praticável), monitorados, comunicados e disponibilizados como informação documentada, além de atualizados conforme apropriado. Manter os objetivos 'secretos' para proteger a estratégia de segurança não é uma característica exigida pela norma — pelo contrário, ela exige comunicação e disponibilização.

⚠️ **Nota técnica:** O gabarito do simulado marca a alternativa C ('Serem comunicados e disponíveis como informação documentada') como a característica NÃO exigida, mas essa é justamente uma exigência explícita da cláusula 6.2. A característica que, de fato, NÃO é exigida pela norma é a alternativa B ('Serem secretos para proteger a estratégia de segurança'). Recomenda-se estudar esta questão com a resposta correta sendo B.

**Por que as demais estão incorretas?**
- A) Serem monitorados e atualizados — 'serem monitorados e atualizados' é, de fato, uma exigência explícita da cláusula 6.2 — portanto não é a resposta correta para 'o que NÃO é exigido'.
- B) Serem secretos para proteger a estratégia de segurança — esta é, na verdade, a alternativa tecnicamente correta para a pergunta feita (ver nota técnica abaixo) — 'serem secretos para proteger a estratégia de segurança' é justamente a característica que a norma NÃO exige (ao contrário, a 6.2 pede comunicação e disponibilização).

**Dica para a prova PECB / ISO 27001**
No Domínio 3 do exame PECB (Planejamento da implementação de um SGSI segundo a ISO/IEC 27001), essa questão é do tipo 'qual NÃO é exigido' — sempre releia com atenção para não marcar um requisito real como se fosse a exceção. Sigilo estratégico não é um requisito da norma para os objetivos de SI: eles precisam ser comunicados e documentados, não escondidos.

**Resumo para memorização**
Objetivos de SI (6.2) devem ser comunicados e documentados — 'mantê-los em segredo' NÃO é exigência da norma.

---

## Questão 42

**Enunciado:** 42. Na fase de planejamento, ao selecionar controles para tratamento de risco, a organização deve comparar sua seleção com o Anexo A. Qual é o objetivo dessa comparação?

- A) Garantir que todos os 93 controles do Anexo A sejam implementados sem exceção
- B) Verificar se nenhum controle necessário foi omitido inadvertidamente
- C) Confirmar que os controles selecionados estão aprovados pela alta direção

✅ **Resposta correta:** B) Verificar se nenhum controle necessário foi omitido inadvertidamente

**Justificativa**
Ao selecionar controles para o tratamento de riscos, a cláusula 6.1.3 c) exige que a organização compare os controles determinados como necessários com os do Anexo A e verifique se nenhum controle necessário foi omitido. Esse é um mecanismo de checagem cruzada (cross-check), não uma exigência de implementar todos os 93 controles — a norma permite exclusões justificadas.

**Por que as demais estão incorretas?**
- A) Garantir que todos os 93 controles do Anexo A sejam implementados sem exceção — não é exigido implementar todos os 93 controles do Anexo A sem exceção; a seleção de controles deve ser baseada em risco, e controles não aplicáveis podem (e devem) ser excluídos com justificativa no SoA.
- C) Confirmar que os controles selecionados estão aprovados pela alta direção — a confirmação de aprovação pela Alta Direção é parte do processo de aprovação do plano de tratamento de riscos e do SoA (6.1.3 e), mas não é o objetivo específico da comparação com o Anexo A, que é evitar omissões de controles necessários.

**Dica para a prova PECB / ISO 27001**
No Domínio 3 do exame PECB (Planejamento da implementação de um SGSI segundo a ISO/IEC 27001), o Anexo A funciona como uma 'lista de verificação abrangente' (catálogo de referência), não como um checklist obrigatório completo. A comparação com o Anexo A serve para garantir completude (nada foi esquecido), não para forçar a adoção de todos os controles.

**Resumo para memorização**
Comparação com o Anexo A = checagem de completude, não obrigação de implementar os 93 controles.

---

## Questão 43

**Enunciado:** 43. Uma empresa está planejando implementar o SGSI em fases. A fase inicial cobre apenas a área de TI. Como deve ser documentado o escopo?

- A) O escopo deve sempre cobrir toda a organização para ser válido
- B) O escopo deve ser claramente documentado descrevendo os limites, interfaces e dependências
- C) O escopo parcial inviabiliza a certificação ISO 27001

✅ **Resposta correta:** B) O escopo deve ser claramente documentado descrevendo os limites, interfaces e dependências

**Justificativa**
A cláusula 4.3 exige que o escopo do SGSI seja documentado de forma clara, considerando os limites e a aplicabilidade do sistema, bem como interfaces e dependências. Uma implementação por fases, começando pela área de TI, é perfeitamente válida, desde que o escopo documentado descreva claramente esses limites, interfaces e dependências com as demais áreas da organização não incluídas inicialmente.

**Por que as demais estão incorretas?**
- A) O escopo deve sempre cobrir toda a organização para ser válido — não é verdade que o escopo deva sempre cobrir toda a organização — a norma permite escopos parciais (por exemplo, uma unidade de negócio, um serviço ou uma área específica), desde que devidamente documentados e delimitados.
- C) O escopo parcial inviabiliza a certificação ISO 27001 — um escopo parcial não inviabiliza a certificação ISO/IEC 27001; certificações com escopo restrito (por exemplo, 'gestão de segurança da informação para os serviços de TI da unidade X') são comuns e válidas, desde que corretamente documentadas e comunicadas.

**Dica para a prova PECB / ISO 27001**
No Domínio 3 do exame PECB (Planejamento da implementação de um SGSI segundo a ISO/IEC 27001), um mito comum é achar que o SGSI precisa cobrir 100% da organização para ser certificável. Na prática, escopos bem delimitados e documentados (mesmo que parciais) são amplamente aceitos por organismos de certificação — desde que as interfaces e dependências com o restante da organização estejam claramente descritas.

**Resumo para memorização**
Escopo parcial é válido, desde que bem documentado com limites, interfaces e dependências claras.

---

## Questão 44

**Enunciado:** 44. O plano de tratamento de riscos deve ser aprovado por quem, conforme a cláusula 6.1.3?

- A) Apenas pelo gerente de segurança da informação
- B) Pelos proprietários de riscos e pela Alta Direção
- C) Pelo auditor interno antes de qualquer implementação

✅ **Resposta correta:** C) Pelo auditor interno antes de qualquer implementação

**Justificativa**
Conforme a cláusula 6.1.3 e), o plano de tratamento de riscos deve ser formulado e, então, deve ser obtida a aprovação dos proprietários de riscos (risk owners) para o plano de tratamento e para a aceitação dos riscos residuais. Além disso, a Alta Direção, no exercício de sua liderança (cláusula 5.1), assegura que os recursos necessários para a implementação desse plano sejam disponibilizados e endossa formalmente o SGSI.

⚠️ **Nota técnica:** O gabarito do simulado marca a alternativa C ('Pelo auditor interno antes de qualquer implementação') como correta, mas essa afirmação contraria o papel do auditor interno, que é avaliar de forma independente a conformidade do SGSI (cláusula 9.2), e não aprovar planos de tratamento de risco — isso comprometeria sua independência. A resposta tecnicamente correta, alinhada à cláusula 6.1.3 e), é a alternativa B. Recomenda-se estudar esta questão com a resposta correta sendo B.

**Por que as demais estão incorretas?**
- A) Apenas pelo gerente de segurança da informação — restringir a aprovação apenas ao gerente de segurança da informação não atende à exigência de que os proprietários de riscos aceitem formalmente os riscos residuais — a aprovação não é uma decisão unilateral de um único gestor técnico.
- B) Pelos proprietários de riscos e pela Alta Direção — esta é, na verdade, a alternativa tecnicamente correta segundo a cláusula 6.1.3 e) (ver nota técnica abaixo) — a aprovação cabe aos proprietários de riscos (para aceitar o risco residual) e à Alta Direção (para apoiar e viabilizar a execução do plano).

**Dica para a prova PECB / ISO 27001**
No Domínio 3 do exame PECB (Planejamento da implementação de um SGSI segundo a ISO/IEC 27001), a prova gosta de testar 'quem aprova o quê': o SoA e o plano de tratamento de riscos envolvem aprovação dos proprietários de risco (aceitação de risco residual) e da Alta Direção (viabilização/liderança) — nunca apenas do auditor interno, que tem papel de avaliação independente, não de aprovação executiva.

**Resumo para memorização**
Plano de tratamento de riscos: aprovado pelos proprietários dos riscos e pela Alta Direção — nunca pelo auditor interno.

---

## Questão 45

**Enunciado:** 45. Ao planejar a implementação, a organização deve determinar recursos necessários (cláusula 7.1). Qual categoria de recurso é frequentemente subestimada?

- A) Infraestrutura de hardware para os sistemas de segurança
- B) Competência humana, incluindo treinamentos e contratação de especialistas
- C) Software de gestão de vulnerabilidades e SIEM

✅ **Resposta correta:** A) Infraestrutura de hardware para os sistemas de segurança

**Justificativa**
A cláusula 7.1 exige que a organização determine e forneça os recursos necessários para estabelecer, implementar, manter e melhorar continuamente o SGSI. Na prática de implementação, a competência humana — incluindo o tempo, o treinamento e, eventualmente, a contratação de especialistas em segurança da informação — é frequentemente subestimada em relação a investimentos mais visíveis como hardware e software, apesar de ser essencial para operar e manter o sistema de forma eficaz.

⚠️ **Nota técnica:** O gabarito do simulado marca a alternativa A ('Infraestrutura de hardware') como correta, mas a prática de implementação de SGSI (e a literatura de referência PECB) aponta a competência humana como o recurso mais frequentemente subestimado, não a infraestrutura de hardware, que costuma ser mais visível e orçada com antecedência. A resposta tecnicamente mais defensável é a alternativa B. Recomenda-se considerar essa nuance ao revisar esta questão.

**Por que as demais estão incorretas?**
- B) Competência humana, incluindo treinamentos e contratação de especialistas — esta é, na verdade, a alternativa tecnicamente correta (ver nota técnica abaixo) — recursos de competência/pessoas costumam ser mais frequentemente subestimados do que os investimentos em infraestrutura, que tendem a ser mais visíveis e fáceis de orçar.
- C) Software de gestão de vulnerabilidades e SIEM — softwares de gestão de vulnerabilidades e SIEM, embora representem investimentos significativos, costumam ser mais facilmente identificados e orçados no planejamento tecnológico do que os recursos de competência humana continuada (treinamento, retenção de especialistas), que exigem investimento recorrente e são mais difíceis de quantificar antecipadamente.

**Dica para a prova PECB / ISO 27001**
No Domínio 3 do exame PECB (Planejamento da implementação de um SGSI segundo a ISO/IEC 27001), uma das lições mais repetidas nos materiais PECB Lead Implementer é que projetos de SGSI frequentemente falham ou atrasam por subestimar recursos humanos e de competência (treinamento, retenção de especialistas, tempo dedicado), não por falta de hardware ou software.

**Resumo para memorização**
O recurso mais subestimado na implementação de um SGSI costuma ser a competência humana, não a infraestrutura tecnológica.

---

## Questão 46

**Enunciado:** 46. Na implementação, o controle de acesso lógico (A.9) exige autenticação forte. Qual é um método comum?

- A) Apenas senha
- B) Senha + biometria
- C) Token sem expiração

✅ **Resposta correta:** B) Senha + biometria

**Justificativa**
O controle de acesso lógico busca assegurar que apenas usuários autorizados e devidamente autenticados acessem sistemas e informações. Um método comum de autenticação forte é a autenticação multifator (MFA), combinando algo que o usuário sabe (senha) com algo que o usuário é (biometria) — reduzindo significativamente o risco de comprometimento de credenciais em comparação com um único fator.

**Por que as demais estão incorretas?**
- A) Apenas senha — usar apenas senha é um único fator de autenticação, mais vulnerável a ataques como força bruta, phishing e reutilização de credenciais — não caracteriza autenticação forte.
- C) Token sem expiração — um token sem expiração é uma prática de segurança fraca, pois credenciais/tokens sem prazo de validade aumentam o risco de uso indevido prolongado em caso de comprometimento, contrariando boas práticas de gestão de acesso.

**Dica para a prova PECB / ISO 27001**
No Domínio 4 do exame PECB (Implementação de um SGSI segundo a ISO/IEC 27001 — cláusula 8 e Anexo A), memorize o conceito de autenticação multifator (MFA): combinar pelo menos dois de três fatores — algo que você sabe (senha), algo que você tem (token/dispositivo) e algo que você é (biometria) — é a base de uma autenticação forte alinhada aos controles de identificação/autenticação do Anexo A (tema Tecnológico, ex.: A.8.5).

**Resumo para memorização**
Autenticação forte = múltiplos fatores (ex.: senha + biometria), nunca senha isolada ou token perpétuo.

---

## Questão 47

**Enunciado:** 47. Para implementar suporte, treinamentos devem ser planejados. Qual evidência é necessária?

- A) Registros de participação e eficácia
- B) Lista de participantes
- C) Certificados genéricos

✅ **Resposta correta:** B) Lista de participantes

**Justificativa**
Para demonstrar competência (cláusula 7.2) e a eficácia das ações de treinamento, a organização deve manter evidências não apenas de que as pessoas participaram de um treinamento, mas também de que esse treinamento foi eficaz — por exemplo, por meio de avaliações pós-treinamento, testes práticos (como simulações de phishing) ou indicadores de melhoria de comportamento. Registros de participação isolados não comprovam eficácia.

⚠️ **Nota técnica:** O gabarito do simulado marca a alternativa B ('Lista de participantes') como correta, mas essa evidência, isoladamente, é insuficiente frente à cláusula 7.2, que exige evidência de competência (o que inclui, na prática, avaliar a eficácia das ações de treinamento tomadas). A alternativa mais completa e tecnicamente correta é a A ('Registros de participação e eficácia'). Recomenda-se estudar esta questão com a resposta correta sendo A.

**Por que as demais estão incorretas?**
- A) Registros de participação e eficácia — não se aplica aqui, pois 'Registros de participação e eficácia' é justamente a alternativa tecnicamente mais completa e correta para o que a cláusula 7.2 exige.
- C) Certificados genéricos — certificados genéricos, sem vínculo com o conteúdo específico e sem evidência de avaliação de eficácia, não atendem plenamente ao requisito de demonstrar competência de forma objetiva conforme a cláusula 7.2.

**Dica para a prova PECB / ISO 27001**
No Domínio 4 do exame PECB (Implementação de um SGSI segundo a ISO/IEC 27001 — cláusula 8 e Anexo A), a cláusula 7.2 (Competência) não se satisfaz apenas com 'lista de presença' — a organização deve reter informação documentada apropriada como evidência de competência, o que inclui, sempre que possível, indicadores de eficácia das ações tomadas (treinamentos, mentoria, contratação), e não apenas comprovação de participação.

**Resumo para memorização**
Evidência de treinamento eficaz = participação + comprovação de eficácia, não apenas lista de presença.

---

## Questão 48

**Enunciado:** 48. A implementação operacional inclui gerenciamento de incidentes (A.16). Qual é o primeiro passo em um incidente?

- A) Identificação, registro e classificação inicial do incidente
- B) Divulgação pública do incidente a todas as partes interessadas
- C) Contenção e erradicação

✅ **Resposta correta:** A) Identificação, registro e classificação inicial do incidente

**Justificativa**
A gestão de incidentes de segurança da informação (controles A.5.24 a A.5.28 na numeração 2022, equivalentes ao antigo A.16 de 2013) segue um ciclo que começa pela detecção e identificação/relato do incidente (registro do evento e classificação inicial), etapa que precede a contenção, a erradicação e a recuperação. Sem essa etapa inicial de identificação e registro, não é possível sequer iniciar a resposta ao incidente.

**Por que as demais estão incorretas?**
- B) Divulgação pública do incidente a todas as partes interessadas — divulgar publicamente um incidente antes mesmo de identificá-lo, registrá-lo e classificá-lo corretamente pode gerar pânico desnecessário, informações incorretas e, em muitos casos, contraria políticas de comunicação de crise e obrigações legais que exigem análise prévia antes da divulgação.
- C) Contenção e erradicação — contenção e erradicação são etapas importantes do processo de resposta a incidentes, mas ocorrem depois da identificação/detecção e do registro inicial do evento — não são o 'primeiro passo' do processo.

🔧 **Nota:** as alternativas A e B foram reconstruídas neste gabarito porque seu texto estava ausente/corrompido na base de dados original do simulado. A resposta correta foi ajustada aqui para A, coerente com o ciclo padrão de gestão de incidentes (identificação antes de contenção/erradicação).

**Dica para a prova PECB / ISO 27001**
No Domínio 4 do exame PECB (Implementação de um SGSI segundo a ISO/IEC 27001 — cláusula 8 e Anexo A), memorize o ciclo clássico de resposta a incidentes: Preparação → Identificação/Detecção → Contenção → Erradicação → Recuperação → Lições aprendidas. A prova adora testar a ordem correta dessas fases, e a identificação/relato do incidente é sempre o passo que antecede a contenção.

**Resumo para memorização**
Antes de conter e erradicar um incidente, é preciso identificá-lo e registrá-lo — essa é sempre a primeira etapa.
---

## Questão 49

**Enunciado:** 49. No controle de fornecedores (A.15), acordos devem especificar responsabilidades de SI. Qual cláusula guia?

- A) Cláusula 7.1.2
- B) Cláusula 8.1.4
- C) Cláusula 9.1

✅ **Resposta correta:** B) Cláusula 8.1.4

**Justificativa**
O controle de segurança da informação nas relações com fornecedores está previsto, na estrutura de 2022, nos controles A.5.19 a A.5.23 (tema Organizacional), que exigem que os acordos com fornecedores especifiquem os requisitos de segurança da informação aplicáveis, incluindo responsabilidades de cada parte. Já no corpo principal da norma, é a cláusula 8.1 (Planejamento e controle operacional) que exige que processos terceirizados sejam determinados e controlados.

⚠️ **Nota técnica:** A numeração '8.1.4' citada na alternativa B não corresponde a nenhuma subcláusula real da ISO/IEC 27001:2022 (a estrutura oficial não subdivide a cláusula 8.1 dessa forma). A explicação acima trata do conceito correto — controle de processos terceirizados via cláusula 8.1 e controles A.5.19 a A.5.23 do Anexo A — em vez de validar um número de cláusula que não existe na norma.

**Por que as demais estão incorretas?**
- A) Cláusula 7.1.2 — não existe, na estrutura da ISO/IEC 27001:2022, uma subcláusula numerada '7.1.2' que trate especificamente de acordos com fornecedores — a cláusula 7.1 trata de recursos de forma geral.
- C) Cláusula 9.1 — a cláusula 9.1 trata de monitoramento, medição, análise e avaliação de desempenho do SGSI, e não da definição de responsabilidades contratuais de segurança da informação com fornecedores.

**Dica para a prova PECB / ISO 27001**
No Domínio 4 do exame PECB (Implementação de um SGSI segundo a ISO/IEC 27001 — cláusula 8 e Anexo A), cuidado: esta questão usa uma numeração de subcláusula ('8.1.4') que não corresponde à estrutura oficial da ISO/IEC 27001:2022 — as cláusulas principais do corpo da norma vão apenas até o nível '8.1', '8.2' e '8.3', sem subdivisões numeradas como '8.1.4'. O conceito correto a reter é: controle operacional de processos terceirizados → cláusula 8.1 (corpo da norma); requisitos específicos de segurança em contratos de fornecedores → controles A.5.19 a A.5.23 (Anexo A).

**Resumo para memorização**
Fornecedores/terceirização: cláusula 8.1 (controle operacional) + controles A.5.19–A.5.23 (Anexo A) — não existe cláusula '8.1.4' na norma.

---

## Questão 50

**Enunciado:** 50. Implementar criptografia (A.10) protege dados em trânsito. Qual algoritmo é aprovado pela ISO?

- A) AES-256
- B) DES
- C) MD5

✅ **Resposta correta:** B) DES

**Justificativa**
Entre os algoritmos citados, o AES-256 (Advanced Encryption Standard, com chave de 256 bits) é atualmente reconhecido como um algoritmo de criptografia simétrica robusto e amplamente aceito por padrões de segurança da informação (incluindo diretrizes que apoiam o controle A.8.24 – Uso de criptografia), sendo adequado para proteger dados em trânsito e em repouso.

⚠️ **Nota técnica:** O gabarito do simulado marca a alternativa B (DES) como correta, mas essa afirmação está tecnicamente incorreta: o DES é um algoritmo obsoleto e inseguro, não aprovado para uso atual. A resposta tecnicamente correta é a alternativa A (AES-256). Recomenda-se estudar esta questão com a resposta correta sendo A.

**Por que as demais estão incorretas?**
- A) AES-256 — esta é, na verdade, a alternativa tecnicamente correta (ver nota técnica abaixo) — o AES-256 é o algoritmo robusto e atualmente recomendado, ao contrário do DES, que é obsoleto e inseguro.
- C) MD5 — o MD5 não é sequer um algoritmo de criptografia (cifragem) — é uma função de hash, e além disso é considerada criptograficamente quebrada (vulnerável a colisões), não sendo apropriada para proteger a confidencialidade de dados em trânsito.

**Dica para a prova PECB / ISO 27001**
No Domínio 4 do exame PECB (Implementação de um SGSI segundo a ISO/IEC 27001 — cláusula 8 e Anexo A), cuidado com questões técnicas 'de pegadinha' envolvendo criptografia: DES e MD5 são frequentemente citados como distratores por soarem familiares, mas ambos são considerados obsoletos/inseguros pelos padrões atuais. O AES (especialmente AES-256) é a referência atual de criptografia simétrica robusta.

**Resumo para memorização**
DES e MD5 são obsoletos/inseguros; AES-256 é o algoritmo robusto e atualmente recomendado.

---

## Questão 51

**Enunciado:** 51. A segregação de funções é implementada para prevenir fraudes. Qual exemplo?

- A) Uma mesma pessoa solicitar, aprovar e executar o pagamento
- B) Compartilhar as mesmas credenciais de acesso entre toda a equipe financeira
- C) Aprovação separada de pagamentos

✅ **Resposta correta:** C) Aprovação separada de pagamentos

**Justificativa**
A segregação de funções (segregation of duties) é um controle preventivo clássico contra fraude e erro, que consiste em dividir tarefas e responsabilidades conflitantes entre diferentes pessoas, de modo que nenhuma pessoa sozinha consiga executar e ocultar uma ação fraudulenta de ponta a ponta. A separação entre quem solicita/executa um pagamento e quem o aprova (aprovação separada de pagamentos) é um exemplo clássico e frequentemente citado desse controle.

**Por que as demais estão incorretas?**
- A) Uma mesma pessoa solicitar, aprovar e executar o pagamento — este é exatamente o cenário oposto à segregação de funções: concentrar todas as etapas em uma única pessoa é o que a segregação de funções busca evitar, pois facilita a ocultação de fraudes.
- B) Compartilhar as mesmas credenciais de acesso entre toda a equipe financeira — compartilhar credenciais elimina a rastreabilidade individual das ações e vai na direção contrária da segregação de funções, dificultando inclusive a auditoria de quem realmente executou cada transação.

🔧 **Nota:** as alternativas A e B foram reconstruídas neste gabarito porque seu texto estava ausente/corrompido na base de dados original do simulado. A resposta correta foi ajustada aqui para C, que é a alternativa cujo texto sempre esteve presente e que já é, por si só, um exemplo tecnicamente correto e clássico de segregação de funções.

**Dica para a prova PECB / ISO 27001**
No Domínio 4 do exame PECB (Implementação de um SGSI segundo a ISO/IEC 27001 — cláusula 8 e Anexo A), segregação de funções é frequentemente cobrada com exemplos do tipo: quem desenvolve código não deve implantar em produção; quem cria um usuário não deve também aprová-lo; quem inicia um pagamento não deve ser quem o autoriza. Fixe esse padrão de 'separar quem faz de quem aprova/valida'.

**Resumo para memorização**
Segregação de funções = separar quem executa de quem aprova/valida — reduz risco de fraude não detectada.
---

## Questão 52

**Enunciado:** 52. Durante a implementação, mudanças devem ser controladas. Qual processo ISO?

- A) Auditoria interna
- B) Controle de mudanças (8.1.3)
- C) Revisão de gestão

✅ **Resposta correta:** A) Auditoria interna

**Justificativa**
Mudanças que afetam o SGSI durante a implementação devem ser controladas de forma estruturada. A cláusula 8.1 (corpo da norma) exige o planejamento e controle operacional dos processos, e o controle A.8.32 do Anexo A (tema Tecnológico) trata especificamente de gestão de mudanças, exigindo que mudanças em recursos de processamento e sistemas de informação sejam sujeitas a procedimentos de controle de mudanças.

⚠️ **Nota técnica:** O gabarito do simulado marca a alternativa A ('Auditoria interna') como correta, mas auditoria interna é um processo de avaliação de conformidade, não de controle de mudanças. A resposta tecnicamente correta é a alternativa B ('Controle de mudanças'). Vale notar também que a numeração '8.1.3' citada na alternativa B não corresponde a uma subcláusula oficial da ISO/IEC 27001:2022 (o controle de mudanças, no Anexo A 2022, está no controle A.8.32); ainda assim, o conceito descrito por essa alternativa (controle de mudanças) é o tecnicamente correto para a pergunta. Recomenda-se estudar esta questão com a resposta correta sendo B.

**Por que as demais estão incorretas?**
- B) Controle de mudanças (8.1.3) — esta é, na verdade, a alternativa tecnicamente correta (ver nota técnica abaixo) — controle de mudanças é o processo operacional (cláusula 8.1/controle A.8.32) que efetivamente gerencia alterações técnicas ou organizacionais durante a implementação/operação.
- C) Revisão de gestão — revisão de gestão (análise crítica pela Direção, cláusula 9.3) é uma atividade periódica de avaliação estratégica de desempenho do SGSI pela Alta Direção, e não o processo operacional que controla mudanças técnicas ou organizacionais no dia a dia.

**Dica para a prova PECB / ISO 27001**
No Domínio 4 do exame PECB (Implementação de um SGSI segundo a ISO/IEC 27001 — cláusula 8 e Anexo A), não confunda os três processos de 'controle e avaliação' do SGSI: Controle de mudanças (8.1/A.8.32) = gerenciar alterações técnicas/organizacionais no dia a dia; Auditoria interna (9.2) = verificação periódica e independente de conformidade; Análise crítica pela Direção (9.3) = avaliação estratégica periódica pela Alta Direção.

**Resumo para memorização**
Controle de mudanças é processo operacional contínuo (8.1/A.8.32) — diferente de auditoria interna e de análise crítica pela Direção.

---

## Questão 53

**Enunciado:** 53. O controle A.5.15 trata de controle de acesso. Qual é o princípio fundamental que deve orientar as regras de controle de acesso?

- A) Acesso máximo para garantir produtividade dos usuários
- B) Princípio do menor privilégio – acesso apenas ao necessário para executar funções
- C) Acesso baseado exclusivamente no cargo hierárquico do usuário

✅ **Resposta correta:** B) Princípio do menor privilégio – acesso apenas ao necessário para executar funções

**Justificativa**
O controle A.5.15 (Controle de acesso) exige que regras para controlar o acesso físico e lógico à informação e a outros ativos associados sejam estabelecidas e implementadas com base nos requisitos de negócio e de segurança da informação. O princípio fundamental que deve orientar essas regras é o do menor privilégio (least privilege): conceder a cada usuário apenas o acesso estritamente necessário para desempenhar suas funções, nada além disso.

**Por que as demais estão incorretas?**
- A) Acesso máximo para garantir produtividade dos usuários — conceder acesso máximo para 'garantir produtividade' contraria diretamente o princípio de segurança de minimizar a superfície de exposição — quanto mais acesso desnecessário, maior o risco de uso indevido, vazamento ou movimentação lateral em caso de comprometimento.
- C) Acesso baseado exclusivamente no cargo hierárquico do usuário — basear o acesso exclusivamente no cargo hierárquico, sem considerar a real necessidade funcional da tarefa, pode conceder acessos desnecessários a cargos de alto nível e negar acessos necessários a funções operacionais específicas — não reflete o princípio do menor privilégio nem uma análise baseada em necessidade real.

**Dica para a prova PECB / ISO 27001**
No Domínio 4 do exame PECB (Implementação de um SGSI segundo a ISO/IEC 27001 — cláusula 8 e Anexo A), o princípio do menor privilégio (least privilege) é um dos conceitos mais cobrados em controle de acesso em qualquer prova de segurança da informação, incluindo a PECB. Associe sempre A.5.15 a esse princípio central.

**Resumo para memorização**
Controle de acesso (A.5.15) = princípio do menor privilégio: só o acesso necessário para a função.

---

## Questão 54

**Enunciado:** 54. Durante a implementação do controle A.8.7 (proteção contra malware), qual abordagem é mais alinhada à norma?

- A) Instalar antivírus apenas em servidores críticos de produção
- B) Implementar controles de detecção, prevenção e recuperação combinados com conscientização dos usuários
- C) Bloquear todos os dispositivos externos sem exceção

✅ **Resposta correta:** B) Implementar controles de detecção, prevenção e recuperação combinados com conscientização dos usuários

**Justificativa**
O controle A.8.7 (Proteção contra malware) recomenda uma abordagem em camadas: implementar controles de detecção, prevenção e recuperação, combinados com adequada conscientização dos usuários, para proteger a organização contra códigos maliciosos de forma abrangente, e não depender de uma única medida técnica isolada.

**Por que as demais estão incorretas?**
- A) Instalar antivírus apenas em servidores críticos de produção — instalar antivírus apenas em servidores críticos deixa desprotegidos outros pontos de entrada comuns para malware (estações de trabalho, notebooks, dispositivos móveis), sendo uma abordagem incompleta frente ao controle A.8.7.
- C) Bloquear todos os dispositivos externos sem exceção — bloquear todos os dispositivos externos sem exceção é uma medida excessivamente restritiva que pode não ser proporcional ao risco nem viável operacionalmente, além de a norma recomendar uma combinação equilibrada de controles técnicos e comportamentais, não apenas bloqueios absolutos.

**Dica para a prova PECB / ISO 27001**
No Domínio 4 do exame PECB (Implementação de um SGSI segundo a ISO/IEC 27001 — cláusula 8 e Anexo A), controles do tema Tecnológico como A.8.7 costumam ser cobrados enfatizando 'abordagem combinada/em camadas' (detecção + prevenção + recuperação + conscientização), em vez de uma única medida isolada — fique atento a esse padrão de resposta 'mais completa' nas questões de Anexo A.

**Resumo para memorização**
A.8.7 (antimalware) = combinação de detecção, prevenção, recuperação e conscientização — nunca uma única medida isolada.

---

## Questão 55

**Enunciado:** 55. A implementação de criptografia (controle A.8.24) deve seguir uma política. O que essa política deve estabelecer?

- A) Apenas os algoritmos de criptografia aprovados pelo departamento de TI
- B) Abordagem para uso de criptografia, incluindo gestão de chaves criptográficas
- C) A lista de dados que NÃO precisam ser criptografados

✅ **Resposta correta:** B) Abordagem para uso de criptografia, incluindo gestão de chaves criptográficas

**Justificativa**
O controle A.8.24 (Uso de criptografia) exige que uma política sobre o uso de criptografia seja desenvolvida e implementada, definindo a abordagem da organização para uso de controles criptográficos, incluindo princípios gerais, requisitos legais/regulatórios aplicáveis e, de forma essencial, a gestão do ciclo de vida das chaves criptográficas (geração, distribuição, armazenamento, rotação e revogação).

**Por que as demais estão incorretas?**
- A) Apenas os algoritmos de criptografia aprovados pelo departamento de TI — restringir a política apenas aos 'algoritmos aprovados pelo departamento de TI' é insuficiente — a política de criptografia precisa abordar de forma mais ampla o uso apropriado da criptografia e, criticamente, a gestão das chaves criptográficas, não apenas uma lista de algoritmos permitidos.
- C) A lista de dados que NÃO precisam ser criptografados — definir 'o que NÃO precisa ser criptografado' não é o foco da política exigida pelo controle A.8.24 — a política deve estabelecer a abordagem positiva para uso apropriado de criptografia com base em riscos e requisitos, não uma lista de exceções.

**Dica para a prova PECB / ISO 27001**
No Domínio 4 do exame PECB (Implementação de um SGSI segundo a ISO/IEC 27001 — cláusula 8 e Anexo A), sempre que a prova mencionar A.8.24 (criptografia), lembre-se de que a gestão de chaves criptográficas é um elemento central e frequentemente citado como parte obrigatória da política de criptografia — é um detalhe técnico que a banca gosta de exigir.

**Resumo para memorização**
A.8.24: política de criptografia deve incluir, obrigatoriamente, a gestão do ciclo de vida das chaves criptográficas.

---

## Questão 56

**Enunciado:** 56. O controle A.5.24 exige planejamento para gestão de incidentes. O que deve ser definido durante a implementação?

- A) Apenas o contato do fornecedor de suporte técnico para situações emergenciais
- B) Processos, papéis, responsabilidades e procedimentos de comunicação para resposta a incidentes
- C) Somente os valores de RTO e RPO para sistemas críticos

✅ **Resposta correta:** B) Processos, papéis, responsabilidades e procedimentos de comunicação para resposta a incidentes

**Justificativa**
O controle A.5.24 (Planejamento e preparação para gestão de incidentes de segurança da informação) exige que a organização defina e comunique processos, papéis e responsabilidades para uma resposta consistente e eficaz a incidentes, incluindo procedimentos de comunicação para relatar eventos e gerenciar incidentes ao longo de todo o seu ciclo de vida.

**Por que as demais estão incorretas?**
- A) Apenas o contato do fornecedor de suporte técnico para situações emergenciais — restringir o planejamento apenas ao 'contato do fornecedor de suporte técnico' é claramente insuficiente diante da abrangência exigida pelo controle A.5.24, que trata de toda a estrutura de resposta a incidentes (processos, papéis, responsabilidades e comunicação), não apenas de um contato pontual.
- C) Somente os valores de RTO e RPO para sistemas críticos — os valores de RTO (Recovery Time Objective) e RPO (Recovery Point Objective) são métricas típicas de continuidade de negócios (relacionadas a controles como A.5.29/A.5.30), e não o foco central do planejamento de gestão de incidentes tratado pelo A.5.24.

**Dica para a prova PECB / ISO 27001**
No Domínio 4 do exame PECB (Implementação de um SGSI segundo a ISO/IEC 27001 — cláusula 8 e Anexo A), associe o A.5.24 a 'estrutura organizacional de resposta a incidentes' (processos, papéis, responsabilidades, comunicação) — diferente do A.5.26/A.5.27 (resposta e aprendizado com incidentes) e de controles de continuidade de negócios (RTO/RPO), que são temas relacionados, mas distintos.

**Resumo para memorização**
A.5.24 = estrutura de governança da resposta a incidentes: processos, papéis, responsabilidades e comunicação.

---

## Questão 57

**Enunciado:** 57. Um Lead Implementer está implementando o controle A.5.9 (inventário de ativos). Qual informação é essencial no inventário?

- A) Apenas o valor de mercado dos ativos físicos
- B) Identificação do ativo, proprietário, classificação e localização
- C) Data de compra e número de série de equipamentos de hardware

✅ **Resposta correta:** A) Apenas o valor de mercado dos ativos físicos

**Justificativa**
O controle A.5.9 (Inventário de ativos de informação e outros ativos associados) exige que os ativos sejam identificados e que um inventário adequado seja desenvolvido e mantido. As informações essenciais desse inventário incluem a identificação clara do ativo, seu proprietário (owner), sua classificação (conforme o esquema de classificação da informação, controle A.5.12) e sua localização — dados que permitem gerenciar e proteger o ativo de forma consistente.

⚠️ **Nota técnica:** O gabarito do simulado marca a alternativa A ('Apenas o valor de mercado dos ativos físicos') como correta, mas essa informação é insuficiente e não atende à finalidade de segurança da informação do inventário de ativos. A resposta tecnicamente correta é a alternativa B. Recomenda-se estudar esta questão com a resposta correta sendo B.

**Por que as demais estão incorretas?**
- B) Identificação do ativo, proprietário, classificação e localização — esta é, na verdade, a alternativa tecnicamente correta (ver nota técnica abaixo) — identificação, proprietário, classificação e localização são as informações essenciais recomendadas para um inventário de ativos eficaz conforme o A.5.9.
- C) Data de compra e número de série de equipamentos de hardware — data de compra e número de série são informações úteis para gestão patrimonial/financeira de ativos físicos, mas não são as informações centrais exigidas para fins de segurança da informação, que priorizam proprietário, classificação e localização para fins de proteção e responsabilização.

**Dica para a prova PECB / ISO 27001**
No Domínio 4 do exame PECB (Implementação de um SGSI segundo a ISO/IEC 27001 — cláusula 8 e Anexo A), o controle A.5.9 é frequentemente citado junto com A.5.10 (uso aceitável de ativos), A.5.11 (devolução de ativos) e A.5.12 (classificação da informação) — todos do tema Organizacional. Memorize: inventário eficaz = identificação + proprietário + classificação + localização.

**Resumo para memorização**
Inventário de ativos (A.5.9): identificação, proprietário, classificação e localização — não apenas valor de mercado ou dados patrimoniais.

---

## Questão 58

**Enunciado:** 58. O controle A.8.8 trata de gestão de vulnerabilidades técnicas. Qual processo deve ser implementado?

- A) Varredura de vulnerabilidades apenas após incidentes confirmados
- B) Identificação, avaliação e tratamento tempestivo de vulnerabilidades técnicas nos sistemas
- C) Aplicação automática de todos os patches sem avaliação prévia de impacto

✅ **Resposta correta:** C) Aplicação automática de todos os patches sem avaliação prévia de impacto

**Justificativa**
O controle A.8.8 (Gestão de vulnerabilidades técnicas) exige que a organização obtenha informações sobre vulnerabilidades técnicas de sistemas de informação em uso, avalie a exposição da organização a essas vulnerabilidades e tome medidas apropriadas e tempestivas para tratá-las — ou seja, um processo contínuo de identificação, avaliação e tratamento (correção priorizada com base em risco), e não aplicação cega de todos os patches sem qualquer avaliação prévia de impacto.

⚠️ **Nota técnica:** O gabarito do simulado marca a alternativa C ('Aplicação automática de todos os patches sem avaliação prévia de impacto') como correta, mas essa prática é, na verdade, contrária às boas práticas de gestão de vulnerabilidades e de mudanças, podendo causar indisponibilidades. A resposta tecnicamente correta, alinhada ao texto do controle A.8.8, é a alternativa B. Recomenda-se estudar esta questão com a resposta correta sendo B.

**Por que as demais estão incorretas?**
- A) Varredura de vulnerabilidades apenas após incidentes confirmados — realizar varreduras de vulnerabilidades apenas após incidentes confirmados caracteriza uma abordagem reativa e insuficiente — o controle A.8.8 exige um processo proativo e contínuo de identificação de vulnerabilidades, não apenas em resposta a incidentes já ocorridos.
- B) Identificação, avaliação e tratamento tempestivo de vulnerabilidades técnicas nos sistemas — esta é, na verdade, a alternativa tecnicamente correta (ver nota técnica abaixo) — descreve exatamente o processo equilibrado exigido pelo A.8.8: identificação, avaliação e tratamento tempestivo com base em risco.

**Dica para a prova PECB / ISO 27001**
No Domínio 4 do exame PECB (Implementação de um SGSI segundo a ISO/IEC 27001 — cláusula 8 e Anexo A), cuidado com alternativas 'radicais' em questões de gestão de vulnerabilidades — tanto 'só agir depois do incidente' quanto 'aplicar tudo automaticamente sem avaliar' são extremos incorretos. O processo correto (A.8.8) é equilibrado: identificar, avaliar (priorizar por risco) e tratar de forma tempestiva.

**Resumo para memorização**
Gestão de vulnerabilidades (A.8.8) = identificar + avaliar + tratar tempestivamente — nunca reativo apenas ou automático sem avaliação.

---

## Questão 59

**Enunciado:** 59. Durante a implementação, a organização deseja garantir a segurança no desenvolvimento de software. Qual controle do Anexo A aborda esse tema?

- A) A.8.25 – Ciclo de vida de desenvolvimento seguro
- B) A.8.15 – Log
- C) A.5.31 – Requisitos legais, estatutários, regulamentares e contratuais

✅ **Resposta correta:** B) A.8.15 – Log

**Justificativa**
O controle A.8.25 (Ciclo de vida de desenvolvimento seguro) exige que regras para o desenvolvimento seguro de software e sistemas sejam estabelecidas e aplicadas, cobrindo todo o ciclo de vida do desenvolvimento — desde requisitos de segurança, arquitetura, codificação segura, testes de segurança, até a implantação — sendo o controle específico do Anexo A que trata diretamente do tema de desenvolvimento seguro de software mencionado na questão.

⚠️ **Nota técnica:** O gabarito do simulado marca a alternativa B (A.8.15 – Log) como correta, mas esse controle trata de registro de eventos (logs), sem relação direta com desenvolvimento seguro de software. A resposta tecnicamente correta é a alternativa A (A.8.25 – Ciclo de vida de desenvolvimento seguro). Recomenda-se estudar esta questão com a resposta correta sendo A.

**Por que as demais estão incorretas?**
- A) A.8.25 – Ciclo de vida de desenvolvimento seguro — esta é, na verdade, a alternativa tecnicamente correta (ver nota técnica abaixo) — o A.8.25 é o controle específico do Anexo A que trata do ciclo de vida de desenvolvimento seguro de software.
- C) A.5.31 – Requisitos legais, estatutários, regulamentares e contratuais — o controle A.5.31 trata da identificação de requisitos legais, estatutários, regulamentares e contratuais relevantes para a segurança da informação, um tema de conformidade jurídica, não de desenvolvimento seguro de software.

**Dica para a prova PECB / ISO 27001**
No Domínio 4 do exame PECB (Implementação de um SGSI segundo a ISO/IEC 27001 — cláusula 8 e Anexo A), associe corretamente os controles do tema Tecnológico relacionados a desenvolvimento seguro: A.8.25 (ciclo de vida de desenvolvimento seguro), A.8.26 (requisitos de segurança em aplicações), A.8.27 (arquitetura e princípios de engenharia segura), A.8.28 (codificação segura), A.8.29/A.8.30/A.8.31 (testes de segurança, desenvolvimento terceirizado, separação de ambientes).

**Resumo para memorização**
Segurança no ciclo de desenvolvimento de software → controle A.8.25 (não A.8.15, que é logging).

---

## Questão 60

**Enunciado:** 60. A implementação de segurança física é regida pelos controles A.7.x. Qual princípio orienta a criação de perímetros de segurança?

- A) Usar barreiras únicas de alta tecnologia para reduzir custos
- B) Implementar múltiplas camadas de segurança física (defesa em profundidade)
- C) Restringir acesso físico apenas durante horário comercial

✅ **Resposta correta:** A) Usar barreiras únicas de alta tecnologia para reduzir custos

**Justificativa**
Os controles físicos do tema Físico (A.7.x) recomendam o uso de perímetros de segurança física organizados em múltiplas camadas (defesa em profundidade) — por exemplo, cerca externa, controle de acesso na portaria, catracas internas, salas restritas e, por fim, gabinetes/racks trancados no datacenter — de modo que a falha ou superação de uma única barreira não comprometa todo o ambiente protegido.

⚠️ **Nota técnica:** O gabarito do simulado marca a alternativa A ('Usar barreiras únicas de alta tecnologia para reduzir custos') como correta, mas essa abordagem contraria o princípio de defesa em profundidade recomendado pelos controles físicos do Anexo A — depender de uma única barreira, por mais avançada que seja, cria um ponto único de falha. A resposta tecnicamente correta é a alternativa B. Recomenda-se estudar esta questão com a resposta correta sendo B.

**Por que as demais estão incorretas?**
- B) Implementar múltiplas camadas de segurança física (defesa em profundidade) — esta é, na verdade, a alternativa tecnicamente correta (ver nota técnica abaixo) — múltiplas camadas de segurança física (defesa em profundidade) são o princípio recomendado pelos controles A.7.x para proteção de perímetros físicos.
- C) Restringir acesso físico apenas durante horário comercial — restringir o acesso físico apenas durante o horário comercial deixa o ambiente potencialmente vulnerável fora desse período (por exemplo, à noite ou em fins de semana) e não trata do princípio de desenho de perímetros de segurança, mas sim de controle temporal de acesso, um aspecto complementar e insuficiente isoladamente.

**Dica para a prova PECB / ISO 27001**
No Domínio 4 do exame PECB (Implementação de um SGSI segundo a ISO/IEC 27001 — cláusula 8 e Anexo A), o conceito de 'defesa em profundidade' (múltiplas camadas de proteção, sejam físicas ou lógicas) é transversal a vários controles do Anexo A e é um dos princípios de segurança mais cobrados em provas PECB, tanto para segurança física (A.7.x) quanto para segurança de redes (A.8.20-A.8.23).

**Resumo para memorização**
Segurança física eficaz = múltiplas camadas de proteção (defesa em profundidade), nunca uma única barreira isolada.

---

## Questão 61

**Enunciado:** 61. O controle A.6.3 exige treinamento em segurança da informação. Com qual frequência e abrangência ele deve ser realizado?

- A) Anualmente, apenas para novos funcionários admitidos no período
- B) Regularmente para todo o pessoal e partes interessadas relevantes, com conteúdo atualizado pertinente às funções
- C) Apenas quando houver mudanças significativas na política de segurança

✅ **Resposta correta:** C) Apenas quando houver mudanças significativas na política de segurança

**Justificativa**
O controle A.6.3 (Conscientização, educação e treinamento em segurança da informação) exige que colaboradores e partes interessadas relevantes recebam conscientização, educação e treinamento apropriados, com atualizações regulares e periódicas das políticas e procedimentos organizacionais relevantes para sua função — não apenas de forma pontual ou reativa a mudanças ou apenas para novos contratados.

⚠️ **Nota técnica:** O gabarito do simulado marca a alternativa C ('Apenas quando houver mudanças significativas na política de segurança') como correta, mas essa frequência é insuficiente frente ao texto do controle A.6.3, que exige regularidade e abrangência contínua. A resposta tecnicamente correta é a alternativa B. Recomenda-se estudar esta questão com a resposta correta sendo B.

**Por que as demais estão incorretas?**
- A) Anualmente, apenas para novos funcionários admitidos no período — restringir o treinamento a 'novos funcionários admitidos no período' ignora a necessidade de reforço contínuo para todo o pessoal já existente, algo explicitamente exigido pelo controle A.6.3 (regularidade e abrangência a todo o pessoal e partes interessadas relevantes).
- B) Regularmente para todo o pessoal e partes interessadas relevantes, com conteúdo atualizado pertinente às funções — esta é, na verdade, a alternativa tecnicamente correta segundo o controle A.6.3 (ver nota técnica abaixo) — o treinamento deve ser regular, abranger todo o pessoal e partes interessadas relevantes, com conteúdo atualizado e pertinente às funções de cada um.

**Dica para a prova PECB / ISO 27001**
No Domínio 4 do exame PECB (Implementação de um SGSI segundo a ISO/IEC 27001 — cláusula 8 e Anexo A), a palavra-chave do A.6.3 é 'regularmente' e 'todo o pessoal e partes interessadas relevantes' — evite alternativas que restrinjam o treinamento a eventos pontuais (apenas admissão, apenas após mudanças significativas), pois isso contraria a periodicidade e abrangência exigidas.

**Resumo para memorização**
A.6.3 = treinamento regular e contínuo para todo o pessoal relevante, não apenas eventos pontuais.

---

## Questão 62

**Enunciado:** 62. Ao implementar o controle A.5.14 sobre transferência de informações, o que deve ser estabelecido?

- A) Apenas a política de uso de e-mail corporativo criptografado
- B) Regras, procedimentos ou acordos para transferência de informações em todos os tipos de instalações
- C) Lista de destinatários aprovados para receber informações confidenciais

✅ **Resposta correta:** B) Regras, procedimentos ou acordos para transferência de informações em todos os tipos de instalações

**Justificativa**
O controle A.5.14 (Transferência de informações) exige que regras, procedimentos ou acordos de transferência de informações sejam estabelecidos para todos os tipos de instalações de transferência dentro da organização e entre a organização e partes externas — incluindo transferência eletrônica, física e verbal — e não apenas para um canal específico como o e-mail.

**Por que as demais estão incorretas?**
- A) Apenas a política de uso de e-mail corporativo criptografado — restringir o controle apenas à 'política de uso de e-mail corporativo criptografado' ignora outros meios de transferência de informação (mídias físicas, APIs, transferência verbal, aplicações de mensagens, etc.) que também precisam de regras e acordos conforme o A.5.14.
- C) Lista de destinatários aprovados para receber informações confidenciais — uma simples lista de destinatários aprovados é uma medida de controle de acesso pontual, mas não substitui a necessidade de regras, procedimentos e acordos formais que cubram todos os tipos de instalações e cenários de transferência de informação exigidos pelo controle.

**Dica para a prova PECB / ISO 27001**
No Domínio 4 do exame PECB (Implementação de um SGSI segundo a ISO/IEC 27001 — cláusula 8 e Anexo A), o controle A.5.14 cobre transferência de informação em todas as suas formas (eletrônica, física, verbal), tanto internamente quanto com terceiros — não se limita a um único canal tecnológico como e-mail.

**Resumo para memorização**
A.5.14 = regras/acordos de transferência de informação cobrindo todos os tipos de instalações, não só e-mail.

---

## Questão 63

**Enunciado:** 63. O monitoramento inclui KPIs. Qual método para medir eficácia do ISMS?

- A) Auditorias internas
- B) Pesquisas de satisfação
- C) Contagem de incidentes

✅ **Resposta correta:** B) Pesquisas de satisfação

**Justificativa**
A cláusula 9.1 permite que a organização utilize diferentes métodos para monitorar a percepção e a satisfação das partes interessadas com o desempenho do SGSI, sendo as pesquisas de satisfação um instrumento direto para captar essa percepção junto a colaboradores, clientes ou outras partes interessadas relevantes, complementando outras fontes objetivas de desempenho do sistema.

**Por que as demais estão incorretas?**
- A) Auditorias internas — auditorias internas (cláusula 9.2) são, de fato, um mecanismo essencial de avaliação de conformidade e desempenho do SGSI — mas medem principalmente aderência a requisitos, enquanto a pergunta, no contexto desta questão, busca destacar um método complementar de medição de eficácia percebida.
- C) Contagem de incidentes — a contagem de incidentes é um indicador quantitativo útil (KPI) sobre a exposição a eventos de segurança, mas não mede diretamente a 'eficácia' percebida do SGSI como um todo, sendo apenas uma das várias métricas possíveis dentro de um programa de medição mais amplo.

**Dica para a prova PECB / ISO 27001**
No Domínio 5 do exame PECB (Monitoramento e medição de um SGSI segundo a ISO/IEC 27001), tenha em mente que a cláusula 9.1 não define um único método de medição — a organização pode (e deve) combinar diversas fontes: auditorias internas, indicadores quantitativos (KPIs), pesquisas de satisfação e análise de incidentes. Questões desse tipo tendem a valorizar a diversidade de métodos, mas fique atento ao contexto específico de cada alternativa apresentada na prova.

**Resumo para memorização**
Eficácia do SGSI pode ser medida por múltiplas fontes (auditorias, KPIs, pesquisas) — não existe um único método 'correto' isoladamente.

---

## Questão 64

**Enunciado:** 64. A medição de conformidade legal exige monitoramento contínuo. Qual evidência?

- A) Declaração única
- B) Registros de revisões legais
- C) Relatório anual

✅ **Resposta correta:** B) Registros de revisões legais

**Justificativa**
A conformidade com requisitos legais e regulatórios de segurança da informação exige monitoramento contínuo, já que a legislação e as obrigações contratuais podem mudar ao longo do tempo. Registros de revisões legais periódicas — evidenciando quando e como a organização avaliou sua conformidade frente a requisitos legais aplicáveis (relacionado ao controle A.5.31 e à cláusula 9.1) — são a evidência apropriada desse monitoramento contínuo.

**Por que as demais estão incorretas?**
- A) Declaração única — uma declaração única, feita uma vez, não caracteriza monitoramento contínuo — a conformidade legal deve ser reavaliada periodicamente, à medida que mudam as leis e o contexto da organização.
- C) Relatório anual — um relatório anual isolado, sem registros de revisões intermediárias, também não caracteriza 'monitoramento contínuo' no sentido exigido pela norma, que pressupõe acompanhamento sistemático ao longo do tempo, não apenas um evento anual pontual.

**Dica para a prova PECB / ISO 27001**
No Domínio 5 do exame PECB (Monitoramento e medição de um SGSI segundo a ISO/IEC 27001), associe sempre 'monitoramento contínuo' a evidência de recorrência (registros periódicos), não a eventos únicos ou anuais isolados — esse é um padrão comum de pegadinha em questões sobre conformidade e desempenho do SGSI.

**Resumo para memorização**
Conformidade legal exige registros de revisões periódicas — não uma declaração única nem só um relatório anual.

---

## Questão 65

**Enunciado:** 65. No desempenho, a análise de dados de incidentes deve ser feita. Qual ferramenta?

- A) Apenas o número total de incidentes registrados, sem qualquer classificação
- B) Planilha de satisfação do cliente, sem relação com os incidentes
- C) Métricas de tempo médio de resolução (MTTR)

✅ **Resposta correta:** C) Métricas de tempo médio de resolução (MTTR)

**Justificativa**
Na análise de dados de desempenho relacionados a incidentes (cláusula 9.1), métricas de tempo médio de resolução (MTTR – Mean Time To Resolve/Repair) são amplamente utilizadas para avaliar a eficiência e a eficácia do processo de resposta a incidentes, permitindo identificar tendências de melhoria ou de deterioração ao longo do tempo.

**Por que as demais estão incorretas?**
- A) Apenas o número total de incidentes registrados, sem qualquer classificação — uma contagem bruta, sem classificação por severidade, tipo ou tempo de resposta, oferece pouca informação útil para avaliar o desempenho do processo de gestão de incidentes.
- B) Planilha de satisfação do cliente, sem relação com os incidentes — uma métrica sem qualquer vínculo com os dados reais de incidentes não serve como ferramenta de análise desse processo específico, por mais relevante que a satisfação do cliente seja em outros contextos.

🔧 **Nota:** as alternativas A e B foram reconstruídas neste gabarito porque seu texto estava ausente/corrompido na base de dados original do simulado. A resposta correta foi ajustada aqui para C, que é a alternativa cujo texto sempre esteve presente e que é tecnicamente a ferramenta mais adequada para o tema.

**Dica para a prova PECB / ISO 27001**
No Domínio 5 do exame PECB (Monitoramento e medição de um SGSI segundo a ISO/IEC 27001), métricas de tempo (MTTR, MTTD – tempo médio de detecção) são indicadores clássicos de desempenho operacional de segurança da informação, muito citados em provas que tratam de monitoramento e medição (cláusula 9.1) e de gestão de incidentes.

**Resumo para memorização**
MTTR (tempo médio de resolução) é uma métrica-padrão para avaliar a eficiência da resposta a incidentes.
---

## Questão 66

**Enunciado:** 66. A cláusula 9.1 exige monitoramento, medição, análise e avaliação. Quem define métodos?

- A) Topo da gestão
- B) Equipe de SI
- C) Consultor externo

✅ **Resposta correta:** B) Equipe de SI

**Justificativa**
A cláusula 9.1 exige que a organização determine os métodos de monitoramento, medição, análise e avaliação necessários para assegurar resultados válidos. Embora a norma não atribua essa responsabilidade a um cargo específico, na prática de implementação essa definição normalmente é conduzida pela equipe responsável pela segurança da informação, que possui o conhecimento técnico necessário para desenhar indicadores e métodos de medição relevantes, submetendo-os posteriormente à validação da Alta Direção.

**Por que as demais estão incorretas?**
- A) Topo da gestão — embora a Alta Direção deva assegurar que o desempenho do SGSI seja avaliado (cláusula 9.3) e aprove o programa de medição em nível estratégico, a definição operacional detalhada dos métodos de monitoramento e medição normalmente é tarefa técnica, não estratégica.
- C) Consultor externo — um consultor externo pode apoiar o desenho de indicadores, mas não é ele quem, segundo a norma, tem a responsabilidade de determinar os métodos de monitoramento — essa responsabilidade é da própria organização, tipicamente exercida por sua equipe de segurança da informação.

**Dica para a prova PECB / ISO 27001**
No Domínio 5 do exame PECB (Monitoramento e medição de um SGSI segundo a ISO/IEC 27001), a cláusula 9.1 não nomeia um cargo específico — repare que, novamente, a prova espera que você identifique a opção 'mais plausível' entre as disponíveis, já que a norma apenas diz 'a organização deve determinar', sem atribuir a função a um papel nominal.

**Resumo para memorização**
Cláusula 9.1: a norma não nomeia o responsável — na prática, cabe à equipe de segurança da informação definir métodos, com aval da Alta Direção.

---

## Questão 67

**Enunciado:** 67. Para medir eficácia dos controles, use conformidade e cobertura. Qual é um indicador?

- A) Número de funcionários
- B) Taxa de conformidade com SoA
- C) Orçamento de TI

✅ **Resposta correta:** B) Taxa de conformidade com SoA

**Justificativa**
Um indicador de eficácia dos controles relacionado à conformidade e cobertura da implementação é a taxa de conformidade com a Declaração de Aplicabilidade (SoA), que mostra o percentual de controles listados como aplicáveis no SoA que já foram efetivamente implementados e estão operando conforme planejado — uma métrica direta de progresso e maturidade da implementação.

**Por que as demais estão incorretas?**
- A) Número de funcionários — o número de funcionários é um dado organizacional geral, sem relação direta com a conformidade ou eficácia dos controles de segurança da informação implementados.
- C) Orçamento de TI — o orçamento de TI é um indicador de investimento/recurso, mas não mede, por si só, a conformidade ou a eficácia dos controles de segurança implementados — orçamento alto não garante controles eficazes, e vice-versa.

**Dica para a prova PECB / ISO 27001**
No Domínio 5 do exame PECB (Monitoramento e medição de um SGSI segundo a ISO/IEC 27001), indicadores de eficácia devem estar ligados a resultados de segurança da informação (conformidade com SoA, redução de incidentes, tempo de resposta), e não a dados administrativos genéricos como número de funcionários ou orçamento, que são insumos, não resultados.

**Resumo para memorização**
Taxa de conformidade com o SoA é um indicador direto de eficácia/cobertura de controles.

---

## Questão 68

**Enunciado:** 68. A satisfação das partes interessadas é monitorada por pesquisas. Qual frequência típica?

- A) A cada cinco anos, independentemente de mudanças no contexto
- B) Apenas uma vez, durante a implementação inicial do SGSI
- C) Anual ou após mudanças

✅ **Resposta correta:** C) Anual ou após mudanças

**Justificativa**
O monitoramento da satisfação de partes interessadas por meio de pesquisas costuma ser realizado com frequência anual, ou de forma adicional sempre que ocorrem mudanças significativas relevantes (por exemplo, mudanças de escopo, incidentes de grande impacto ou alterações regulatórias), garantindo que a percepção das partes interessadas seja capturada de forma periódica e também reativa a eventos relevantes.

**Por que as demais estão incorretas?**
- A) A cada cinco anos, independentemente de mudanças no contexto — um intervalo tão longo, e insensível a mudanças relevantes no contexto, não permite à organização perceber a tempo alterações na percepção das partes interessadas nem eventos que exijam reavaliação.
- B) Apenas uma vez, durante a implementação inicial do SGSI — a satisfação de partes interessadas deve ser monitorada de forma contínua ao longo do ciclo de vida do SGSI (alinhado à melhoria contínua da cláusula 10), e não apenas em um único momento inicial.

🔧 **Nota:** as alternativas A e B foram reconstruídas neste gabarito porque seu texto estava ausente/corrompido na base de dados original do simulado. A resposta correta foi ajustada aqui para C, que é a alternativa cujo texto sempre esteve presente e que representa a prática de mercado tecnicamente adequada para o tema.

**Dica para a prova PECB / ISO 27001**
No Domínio 5 do exame PECB (Monitoramento e medição de um SGSI segundo a ISO/IEC 27001), uma frequência 'anual, ou após mudanças relevantes' é um padrão comum em atividades de avaliação periódica dentro do SGSI (semelhante à lógica de análise crítica pela Direção e de revisão de riscos), pois combina regularidade com capacidade de resposta a eventos extraordinários.

**Resumo para memorização**
Pesquisas de satisfação de partes interessadas: frequência típica anual, ou após mudanças significativas.
---

## Questão 69

**Enunciado:** 69. Registros de monitoramento devem ser retidos. Qual cláusula?

- A) 7.5.3
- B) 9.1.3
- C) 10.2

✅ **Resposta correta:** B) 9.1.3

**Justificativa**
A cláusula 9.1 exige que a organização retenha informação documentada apropriada como evidência dos resultados de monitoramento, medição, análise e avaliação. Embora a numeração de subitem citada na alternativa ('9.1.3') não corresponda a uma subdivisão oficial da cláusula 9.1 na estrutura da ISO/IEC 27001:2022 (que apresenta a cláusula 9.1 como uma lista de itens a-f, sem numeração adicional de subcláusulas), o conceito correto é que a retenção de registros de monitoramento está prevista, sim, dentro da cláusula 9.1.

⚠️ **Nota técnica:** A numeração '9.1.3' citada na alternativa B não corresponde a uma subcláusula oficial da ISO/IEC 27001:2022 (a cláusula 9.1 não é subdividida dessa forma na norma). O conceito correto — retenção de registros de monitoramento e medição — está, de fato, dentro da cláusula 9.1 em sua totalidade, o que torna a alternativa B a mais próxima da correta entre as três, apesar do número de subcláusula ser impreciso.

**Por que as demais estão incorretas?**
- A) 7.5.3 — a cláusula 7.5.3 trata do controle de informação documentada em geral (regras de disponibilidade, proteção, distribuição), sendo uma cláusula 'de apoio' aplicável a toda documentação do SGSI, mas não é a cláusula que especificamente exige a retenção de registros de monitoramento e medição.
- C) 10.2 — a cláusula 10.2 trata do tratamento de não conformidades e ações corretivas, um processo distinto da retenção de registros de monitoramento/medição de desempenho, que é tratada na cláusula 9.1.

**Dica para a prova PECB / ISO 27001**
No Domínio 5 do exame PECB (Monitoramento e medição de um SGSI segundo a ISO/IEC 27001), cuidado com numerações de subcláusulas que não existem oficialmente na norma (como '9.1.3') — memorize o conceito pela cláusula principal: retenção de evidências de monitoramento e medição está dentro da cláusula 9.1 (item f, na estrutura da norma).

**Resumo para memorização**
Registros de monitoramento e medição são retidos como informação documentada dentro da cláusula 9.1.

---

## Questão 70

**Enunciado:** 70. A avaliação de conformidade inclui testes de penetração. Qual cláusula suporta?

- A) 6.1.2
- B) 9.2.1 (auditoria interna)
- C) 8.2

✅ **Resposta correta:** C) 8.2

**Justificativa**
A cláusula 8.2 (Avaliação de riscos de segurança da informação) exige que a organização realize avaliações de risco em intervalos planejados ou quando mudanças significativas forem propostas ou ocorrerem, considerando os critérios estabelecidos em 6.1.2. Testes de penetração são uma técnica prática de avaliação de riscos/vulnerabilidades técnicas que podem alimentar esse processo periódico de reavaliação de riscos.

**Por que as demais estão incorretas?**
- A) 6.1.2 — a cláusula 6.1.2 trata do processo (metodologia) de avaliação de riscos definido inicialmente no planejamento do SGSI, e não da execução periódica e contínua de avaliações operacionais, que é tratada pela cláusula 8.2.
- B) 9.2.1 (auditoria interna) — a cláusula 9.2.1 trata do programa de auditoria interna, cujo foco é avaliar a conformidade e a implementação eficaz do SGSI como um todo, e não especificamente a execução de testes técnicos como testes de penetração, que se relacionam mais diretamente com a reavaliação periódica de riscos (8.2) e com controles técnicos específicos (ex.: A.8.8).

**Dica para a prova PECB / ISO 27001**
No Domínio 5 do exame PECB (Monitoramento e medição de um SGSI segundo a ISO/IEC 27001), associe testes de penetração ao processo contínuo de avaliação de riscos técnicos (cláusula 8.2 e controle A.8.8 – Gestão de vulnerabilidades técnicas), e não à auditoria interna genérica de conformidade do sistema de gestão (9.2), que tem escopo e metodologia distintos.

**Resumo para memorização**
Testes de penetração alimentam a avaliação periódica de riscos (cláusula 8.2), distinta da auditoria interna do SGSI (9.2).

---

## Questão 71

**Enunciado:** 71. A cláusula 9.1 exige que a organização avalie o desempenho do SGSI. Qual dos indicadores abaixo é mais adequado para medir a eficácia de um controle de conscientização?

- A) Número de licenças de software de segurança adquiridas
- B) Percentual de funcionários que identificaram corretamente e-mails de phishing em testes simulados
- C) Valor do orçamento investido em treinamentos de segurança

✅ **Resposta correta:** A) Número de licenças de software de segurança adquiridas

**Justificativa**
Para medir a eficácia de um controle de conscientização (como campanhas de sensibilização contra phishing), o indicador mais adequado é uma métrica de resultado comportamental direto, como o percentual de funcionários que identificaram corretamente e-mails de phishing em testes simulados. Esse tipo de indicador mede o efeito real do controle sobre o comportamento das pessoas, e não apenas o esforço ou o investimento realizado.

⚠️ **Nota técnica:** O gabarito do simulado marca a alternativa A ('Número de licenças de software de segurança adquiridas') como correta, mas esse indicador não mede a eficácia de um controle de conscientização, e sim um investimento tecnológico não relacionado ao comportamento humano. A resposta tecnicamente correta é a alternativa B. Recomenda-se estudar esta questão com a resposta correta sendo B.

**Por que as demais estão incorretas?**
- B) Percentual de funcionários que identificaram corretamente e-mails de phishing em testes simulados — esta é, na verdade, a alternativa tecnicamente correta (ver nota técnica abaixo) — o percentual de acerto em simulações de phishing é um indicador de resultado comportamental direto, adequado para medir a eficácia de um controle de conscientização.
- C) Valor do orçamento investido em treinamentos de segurança — o valor do orçamento investido em treinamentos é um indicador de insumo (input), medindo o esforço financeiro dedicado, mas não o resultado (outcome) efetivo do treinamento sobre o comportamento das pessoas — orçamento alto não garante, por si só, conscientização eficaz.

**Dica para a prova PECB / ISO 27001**
No Domínio 5 do exame PECB (Monitoramento e medição de um SGSI segundo a ISO/IEC 27001), a prova adora distinguir indicadores de 'insumo/esforço' (orçamento, número de treinamentos realizados, licenças adquiridas) de indicadores de 'resultado/eficácia' (comportamento medido, redução de incidentes, taxa de acerto em simulações). A resposta tecnicamente mais forte para 'eficácia' é sempre um indicador de resultado.

**Resumo para memorização**
Eficácia de conscientização = medir comportamento real (ex.: acerto em simulação de phishing), não insumos como orçamento ou licenças.

---

## Questão 72

**Enunciado:** 72. O programa de auditoria interna (cláusula 9.2) deve ser planejado considerando quais fatores?

- A) Apenas a disponibilidade dos auditores internos e o calendário da organização
- B) A importância dos processos, resultados de auditorias anteriores e mudanças que afetam a organização
- C) Somente os requisitos definidos pelo organismo certificador externo

✅ **Resposta correta:** B) A importância dos processos, resultados de auditorias anteriores e mudanças que afetam a organização

**Justificativa**
A cláusula 9.2.2 exige que o(s) programa(s) de auditoria interna sejam planejados considerando a importância dos processos envolvidos, os resultados de auditorias anteriores e as mudanças que afetam a organização, além de outros fatores como requisitos legais e contratuais. Esse planejamento baseado em risco permite priorizar recursos de auditoria onde são mais necessários.

**Por que as demais estão incorretas?**
- A) Apenas a disponibilidade dos auditores internos e o calendário da organização — considerar apenas a disponibilidade dos auditores e o calendário organizacional, sem levar em conta risco, importância dos processos ou resultados anteriores, é uma abordagem insuficiente e contraria a exigência de planejamento baseado em critérios de risco e relevância definida pela cláusula 9.2.
- C) Somente os requisitos definidos pelo organismo certificador externo — o programa de auditoria interna não deve se basear apenas em requisitos do organismo certificador externo — ele é uma ferramenta de gestão interna do próprio SGSI, com periodicidade e critérios definidos pela organização, ainda que a auditoria externa também avalie esse programa.

**Dica para a prova PECB / ISO 27001**
No Domínio 5 do exame PECB (Monitoramento e medição de um SGSI segundo a ISO/IEC 27001), memorize os fatores de planejamento do programa de auditoria interna (9.2.2): importância dos processos, mudanças que afetam a organização e resultados de auditorias anteriores — uma abordagem baseada em risco, e não apenas em conveniência de calendário.

**Resumo para memorização**
Programa de auditoria interna (9.2) é planejado com base em importância dos processos, mudanças e auditorias anteriores — abordagem baseada em risco.

---

## Questão 73

**Enunciado:** 73. Um auditor interno encontrou evidências de que a análise crítica pela Direção (cláusula 9.3) não incluiu a situação de ações de análises críticas anteriores. Qual é a classificação correta dessa constatação?

- A) Observação, pois não compromete a eficácia do SGSI
- B) Não conformidade, pois a cláusula 9.3.2 a) exige explicitamente esse item como entrada
- C) Oportunidade de melhoria, pois a norma recomenda mas não exige esse item

✅ **Resposta correta:** C) Oportunidade de melhoria, pois a norma recomenda mas não exige esse item

**Justificativa**
A cláusula 9.3.2 a) exige explicitamente que a análise crítica pela Direção considere, como entrada, a situação de ações provenientes de análises críticas anteriores. Quando essa entrada obrigatória é omitida da análise crítica, trata-se de uma não conformidade, pois um requisito explícito da norma deixou de ser atendido — e não apenas uma sugestão de boa prática ou uma melhoria opcional.

⚠️ **Nota técnica:** O gabarito do simulado marca a alternativa C ('Oportunidade de melhoria, pois a norma recomenda mas não exige esse item') como correta, mas essa afirmação está tecnicamente incorreta: a cláusula 9.3.2 a) exige, de forma obrigatória, que a situação de ações de análises críticas anteriores seja uma entrada da análise crítica pela Direção. Sua omissão constitui, portanto, uma não conformidade, e a resposta tecnicamente correta é a alternativa B — que, inclusive, é a única alternativa cujo próprio texto já apresenta o argumento tecnicamente correto. Recomenda-se estudar esta questão com a resposta correta sendo B.

**Por que as demais estão incorretas?**
- A) Observação, pois não compromete a eficácia do SGSI — classificar a constatação como 'observação' minimiza indevidamente o problema: como a cláusula 9.3.2 a) exige esse item de forma explícita ('shall'), sua ausência é uma falha de conformidade com um requisito normativo, não uma simples observação sem relevância para a eficácia do SGSI.
- B) Não conformidade, pois a cláusula 9.3.2 a) exige explicitamente esse item como entrada — esta é, na verdade, a alternativa tecnicamente correta (ver nota técnica abaixo) — a cláusula 9.3.2 a) exige explicitamente ('the management review shall include consideration of...') que a situação de ações de análises críticas anteriores seja considerada, tornando sua omissão uma não conformidade.

**Dica para a prova PECB / ISO 27001**
No Domínio 5 do exame PECB (Monitoramento e medição de um SGSI segundo a ISO/IEC 27001), este é um excelente exemplo de questão de auditoria (Lead Auditor): sempre que um requisito 'shall' explícito da norma não for atendido, a classificação correta é não conformidade — 'oportunidade de melhoria' e 'observação' são usadas para lacunas que não descumprem um requisito normativo direto.

**Resumo para memorização**
Entrada obrigatória da análise crítica omitida (9.3.2 a) = não conformidade, nunca apenas observação ou oportunidade de melhoria.

---

## Questão 74

**Enunciado:** 74. Os resultados da análise crítica pela Direção devem incluir quais tipos de decisões?

- A) Apenas decisões sobre o orçamento do próximo exercício fiscal
- B) Decisões sobre oportunidades de melhoria contínua e necessidades de mudanças no SGSI
- C) Exclusivamente ações corretivas para não conformidades identificadas em auditorias

✅ **Resposta correta:** A) Apenas decisões sobre o orçamento do próximo exercício fiscal

**Justificativa**
Os resultados da análise crítica pela Direção (cláusula 9.3.3) devem incluir decisões relacionadas a oportunidades de melhoria contínua e a quaisquer necessidades de mudança no SGSI, incluindo mudanças em recursos, objetivos ou processos, com base na avaliação do desempenho, adequação e eficácia do sistema realizada durante a análise crítica.

⚠️ **Nota técnica:** O gabarito do simulado marca a alternativa A ('Apenas decisões sobre o orçamento do próximo exercício fiscal') como correta, mas essa afirmação restringe indevidamente o escopo da cláusula 9.3.3, que trata de melhoria contínua e necessidades de mudança no SGSI de forma ampla, não apenas orçamentária. A resposta tecnicamente correta é a alternativa B. Recomenda-se estudar esta questão com a resposta correta sendo B.

**Por que as demais estão incorretas?**
- B) Decisões sobre oportunidades de melhoria contínua e necessidades de mudanças no SGSI — esta é, na verdade, a alternativa tecnicamente correta (ver nota técnica abaixo) — os resultados da análise crítica pela Direção (9.3.3) devem incluir decisões sobre melhoria contínua e necessidades de mudança no SGSI, não apenas questões orçamentárias.
- C) Exclusivamente ações corretivas para não conformidades identificadas em auditorias — restringir os resultados 'exclusivamente' a ações corretivas de auditorias também é incompleto — a análise crítica pela Direção tem um escopo mais amplo, avaliando desempenho geral do SGSI, e não apenas tratando não conformidades específicas de auditoria.

**Dica para a prova PECB / ISO 27001**
No Domínio 5 do exame PECB (Monitoramento e medição de um SGSI segundo a ISO/IEC 27001), memorize que os resultados da análise crítica pela Direção (9.3.3) sempre incluem, no mínimo, decisões sobre oportunidades de melhoria contínua e necessidades de mudança no SGSI — evite alternativas que restrinjam esse resultado a um único aspecto (só orçamento, só ações corretivas).

**Resumo para memorização**
Análise crítica pela Direção (9.3.3): decisões sobre melhoria contínua e necessidades de mudança no SGSI — nunca restrita apenas a orçamento ou apenas a ações corretivas.

---

## Questão 75

**Enunciado:** 75. Ao definir o que monitorar e medir no SGSI (cláusula 9.1), qual informação deve ser determinada?

- A) Apenas os resultados financeiros impactados por incidentes de segurança
- B) O que monitorar, os métodos de análise, quando realizar e quem deve analisar e avaliar os resultados
- C) Somente os indicadores exigidos pelo organismo de certificação contratado

✅ **Resposta correta:** B) O que monitorar, os métodos de análise, quando realizar e quem deve analisar e avaliar os resultados

**Justificativa**
Ao definir o que monitorar e medir (cláusula 9.1), a organização deve determinar: o que precisa ser monitorado e medido, incluindo processos e controles de segurança da informação; os métodos de monitoramento, medição, análise e avaliação necessários para assegurar resultados válidos; quando o monitoramento e a medição devem ser realizados; quem deve monitorar e medir; quando os resultados devem ser analisados e avaliados; e quem deve analisar e avaliar esses resultados.

**Por que as demais estão incorretas?**
- A) Apenas os resultados financeiros impactados por incidentes de segurança — restringir a determinação apenas aos 'resultados financeiros impactados por incidentes' ignora o escopo muito mais amplo da cláusula 9.1, que trata do desempenho de processos e controles de segurança da informação de forma geral, não apenas do impacto financeiro de incidentes.
- C) Somente os indicadores exigidos pelo organismo de certificação contratado — a cláusula 9.1 não se limita aos indicadores exigidos por um organismo de certificação externo — a organização deve definir seus próprios métodos e indicadores de monitoramento com base em suas necessidades e riscos, independentemente de exigências externas de certificação.

**Dica para a prova PECB / ISO 27001**
No Domínio 5 do exame PECB (Monitoramento e medição de um SGSI segundo a ISO/IEC 27001), memorize os seis elementos que a cláusula 9.1 exige que sejam determinados: o quê, métodos, quando medir, quem mede, quando analisar/avaliar e quem analisa/avalia — uma estrutura bastante parecida (e frequentemente confundida) com a da cláusula 7.4 (comunicação).

**Resumo para memorização**
Cláusula 9.1: definir o quê, métodos, quando, quem mede e quem analisa/avalia — não apenas impacto financeiro ou exigências do certificador.

---

## Questão 76

**Enunciado:** 76. A cláusula 10.1 exige melhoria contínua do SGSI. Quais são as dimensões que devem ser aprimoradas continuamente?

- A) Apenas a eficiência operacional dos controles técnicos implementados
- B) A pertinência, adequação e eficácia do SGSI
- C) Somente os processos com não conformidades identificadas em auditorias

✅ **Resposta correta:** B) A pertinência, adequação e eficácia do SGSI

**Justificativa**
A cláusula 10.1 exige que a organização melhore continuamente a pertinência (adequação ao propósito), a adequação (suficiência dos recursos e processos) e a eficácia (capacidade de produzir os resultados pretendidos) do SGSI como um todo. Essa melhoria contínua vai além dos controles técnicos isoladamente ou de processos com não conformidades específicas — abrange o sistema de gestão de forma holística.

**Por que as demais estão incorretas?**
- A) Apenas a eficiência operacional dos controles técnicos implementados — restringir a melhoria contínua apenas à 'eficiência operacional dos controles técnicos' ignora as dimensões de pertinência e adequação, e limita indevidamente o escopo da melhoria contínua aos aspectos puramente técnicos, quando a norma trata do SGSI como um todo.
- C) Somente os processos com não conformidades identificadas em auditorias — limitar a melhoria contínua 'somente aos processos com não conformidades identificadas' contraria o espírito proativo da cláusula 10.1 — melhoria contínua deve ocorrer mesmo em processos sem não conformidades registradas, buscando aprimoramento constante e não apenas correção reativa de falhas.

**Dica para a prova PECB / ISO 27001**
No Domínio 6 do exame PECB (Melhoria contínua de um SGSI segundo a ISO/IEC 27001), decore as três dimensões exigidas pela cláusula 10.1: pertinência, adequação e eficácia do SGSI. É um trio frequentemente cobrado de forma literal na prova PECB.

**Resumo para memorização**
Melhoria contínua (10.1) = pertinência + adequação + eficácia do SGSI como um todo.

---

## Questão 77

**Enunciado:** 77. Ao tratar uma não conformidade (cláusula 10.2), qual passo é realizado APÓS controlar e corrigir a não conformidade?

- A) Notificar imediatamente o organismo certificador sobre a ocorrência
- B) Avaliar a necessidade de ações para eliminar as causas e evitar recorrência
- C) Arquivar a documentação e encerrar o registro da não conformidade

✅ **Resposta correta:** B) Avaliar a necessidade de ações para eliminar as causas e evitar recorrência

**Justificativa**
Ao tratar uma não conformidade (cláusula 10.2), a organização primeiro reage a ela — controlando e corrigindo a não conformidade e lidando com suas consequências (10.2 a). Em seguida, deve avaliar a necessidade de ação para eliminar a(s) causa(s) raiz da não conformidade, de modo a evitar que ela se repita ou ocorra em outro lugar (10.2 b) — essa avaliação de causa raiz é o que diferencia uma simples correção pontual de uma verdadeira ação corretiva.

**Por que as demais estão incorretas?**
- A) Notificar imediatamente o organismo certificador sobre a ocorrência — não há exigência genérica de notificar imediatamente o organismo certificador sobre toda não conformidade interna identificada — a comunicação com o organismo certificador segue regras contratuais específicas (geralmente relacionadas a não conformidades que afetem a validade da certificação), e não é o próximo passo padrão exigido pela cláusula 10.2.
- C) Arquivar a documentação e encerrar o registro da não conformidade — arquivar e encerrar o registro antes de avaliar a necessidade de ações para eliminar causas raiz e verificar a eficácia das ações tomadas contraria a sequência exigida pela cláusula 10.2, que só prevê o encerramento após a análise de causa, implementação de ações e revisão de eficácia.

**Dica para a prova PECB / ISO 27001**
No Domínio 6 do exame PECB (Melhoria contínua de um SGSI segundo a ISO/IEC 27001), memorize a sequência da cláusula 10.2: (a) reagir — controlar e corrigir + lidar com consequências; (b) avaliar a necessidade de eliminar causas (análise de causa raiz, se aplicável); (c) implementar ações necessárias; (d) revisar a eficácia de qualquer ação corretiva tomada; (e) fazer mudanças no SGSI, se necessário.

**Resumo para memorização**
Após corrigir a não conformidade, o próximo passo é avaliar a necessidade de eliminar suas causas raiz — não arquivar nem notificar o certificador automaticamente.

---

## Questão 78

**Enunciado:** 78. A análise de causa raiz é realizada no contexto do tratamento de não conformidades. Qual ferramenta é adequada para essa análise?

- A) Apenas análise de custo-benefício dos controles envolvidos
- B) Diagrama de Ishikawa (espinha de peixe) ou metodologia dos 5 Porquês
- C) Exclusivamente testes de penetração técnicos

✅ **Resposta correta:** B) Diagrama de Ishikawa (espinha de peixe) ou metodologia dos 5 Porquês

**Justificativa**
Para realizar a análise de causa raiz de uma não conformidade, ferramentas estruturadas como o Diagrama de Ishikawa (também chamado de diagrama de espinha de peixe ou causa-e-efeito) e a metodologia dos 5 Porquês (5 Whys) são amplamente recomendadas e utilizadas na prática de gestão da qualidade e segurança da informação, pois ajudam a investigar sistematicamente as causas subjacentes de um problema, e não apenas seus sintomas.

**Por que as demais estão incorretas?**
- A) Apenas análise de custo-benefício dos controles envolvidos — a análise de custo-benefício é uma ferramenta de avaliação de viabilidade financeira de controles, útil em outras etapas (como seleção de tratamento de riscos), mas não é a ferramenta indicada especificamente para investigar causas raiz de não conformidades.
- C) Exclusivamente testes de penetração técnicos — testes de penetração são uma técnica de avaliação de vulnerabilidades técnicas, mas não são uma ferramenta de análise de causa raiz de não conformidades em geral, que podem ter origem processual, humana ou organizacional, e não apenas técnica.

**Dica para a prova PECB / ISO 27001**
No Domínio 6 do exame PECB (Melhoria contínua de um SGSI segundo a ISO/IEC 27001), decore as ferramentas clássicas de análise de causa raiz cobradas pela PECB: Diagrama de Ishikawa (espinha de peixe) e metodologia dos 5 Porquês. Ambas aparecem com frequência em questões sobre tratamento de não conformidades (cláusula 10.2).

**Resumo para memorização**
Análise de causa raiz de não conformidades = Diagrama de Ishikawa ou 5 Porquês.

---

## Questão 79

**Enunciado:** 79. A informação documentada retida sobre não conformidades e ações corretivas (cláusula 10.2 f-g) serve a qual propósito principal?

- A) Comprovar ao organismo certificador que a organização seguiu todos os requisitos formais
- B) Evidenciar o aprendizado organizacional e a eficácia das ações tomadas para eliminar causas
- C) Calcular o custo total das não conformidades para reporte à Alta Direção

✅ **Resposta correta:** B) Evidenciar o aprendizado organizacional e a eficácia das ações tomadas para eliminar causas

**Justificativa**
A retenção de informação documentada sobre a natureza das não conformidades, as ações tomadas e os resultados de qualquer ação corretiva (cláusula 10.2 f e g) serve, principalmente, para evidenciar o aprendizado organizacional obtido com o tratamento do problema e a eficácia das ações implementadas para eliminar suas causas — permitindo, inclusive, identificar padrões e prevenir recorrências futuras.

**Por que as demais estão incorretas?**
- A) Comprovar ao organismo certificador que a organização seguiu todos os requisitos formais — embora essa documentação também possa ser usada como evidência de conformidade formal perante o organismo certificador, esse não é o propósito principal exigido pela norma — o foco central da cláusula 10.2 f-g está no aprendizado organizacional e na eficácia das ações, não em uma finalidade meramente burocrática de auditoria externa.
- C) Calcular o custo total das não conformidades para reporte à Alta Direção — calcular o custo total de não conformidades pode ser um subproduto útil da análise de dados, mas não é o propósito principal que a cláusula 10.2 atribui à retenção dessa informação documentada, que está centrado em aprendizado e eficácia das ações corretivas.

**Dica para a prova PECB / ISO 27001**
No Domínio 6 do exame PECB (Melhoria contínua de um SGSI segundo a ISO/IEC 27001), sempre que a prova perguntar 'para que serve' um registro exigido pela norma, busque a resposta ligada ao propósito de melhoria contínua e aprendizado organizacional — e não a finalidades burocráticas isoladas (só para o certificador) ou puramente financeiras.

**Resumo para memorização**
Registros de não conformidade e ação corretiva (10.2 f-g) existem para evidenciar aprendizado organizacional e a eficácia das ações tomadas.

---

## Questão 80

**Enunciado:** 80. A melhoria contínua do SGSI pode ser impulsionada por diversas fontes de informação. Qual das seguintes NÃO é uma fonte típica de oportunidades de melhoria?

- A) Resultados de auditorias internas e externas
- B) Relatórios de vendas do departamento comercial
- C) Lições aprendidas de incidentes de segurança

✅ **Resposta correta:** B) Relatórios de vendas do departamento comercial

**Justificativa**
A melhoria contínua do SGSI (cláusula 10.1) é tipicamente impulsionada por fontes diretamente ligadas ao desempenho de segurança da informação, como resultados de auditorias internas e externas, lições aprendidas de incidentes de segurança, resultados de análises críticas pela Direção e mudanças no contexto de riscos. Relatórios de vendas do departamento comercial não têm relação direta com o desempenho ou a eficácia do SGSI, não sendo, portanto, uma fonte típica de oportunidades de melhoria para a segurança da informação.

**Por que as demais estão incorretas?**
- A) Resultados de auditorias internas e externas — resultados de auditorias internas e externas são, de fato, uma fonte típica e frequentemente citada de oportunidades de melhoria do SGSI, portanto não é a resposta correta para 'o que NÃO é uma fonte típica'.
- C) Lições aprendidas de incidentes de segurança — lições aprendidas de incidentes de segurança são, de fato, uma fonte típica e valiosa de oportunidades de melhoria (alimentando inclusive a cláusula 10.2), portanto também não é a resposta correta para 'o que NÃO é uma fonte típica'.

**Dica para a prova PECB / ISO 27001**
No Domínio 6 do exame PECB (Melhoria contínua de um SGSI segundo a ISO/IEC 27001), esse tipo de questão 'qual NÃO é' pede atenção redobrada: releia cada alternativa perguntando se ela está genuinamente ligada à segurança da informação. Relatórios comerciais/vendas não se relacionam diretamente ao desempenho do SGSI, ao contrário de auditorias e lições aprendidas de incidentes.

**Resumo para memorização**
Relatórios de vendas não alimentam a melhoria contínua do SGSI — auditorias e lições de incidentes, sim.

---

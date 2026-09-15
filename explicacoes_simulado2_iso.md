# Gabarito Comentado — Simulado ISO/IEC 27001:2022 nº 2 (80 questões)

## Questão 1

**Enunciado:** Cenário 1: A empresa "TechSolution", especializada em desenvolvimento de software, está começando a entender a ISO 27001 para proteger suas propriedades intelectuais e dados de clientes.

1. Qual é a definição mais abrangente de "segurança da informação" no contexto da ISO 27001:2022, considerando seus pilares fundamentais?

- a) A proteção de ativos de hardware e software contra ataques cibernéticos e falhas.
- b) A preservação da confidencialidade, integridade e disponibilidade da informação.
- c) O cumprimento de todas as leis de privacidade de dados em nível internacional.

✅ **Resposta correta:** b) A preservação da confidencialidade, integridade e disponibilidade da informação.

**Justificativa**
A ISO/IEC 27000 (norma de vocabulário do conjunto 27k, referenciada normativamente pela ISO/IEC 27001:2022) define segurança da informação exatamente como a preservação da confidencialidade, integridade e disponibilidade da informação (o tradicional "CID" ou "CIA triad"), podendo ainda envolver outras propriedades como autenticidade, responsabilidade, não repúdio e confiabilidade. Esses três pilares são a base conceitual sobre a qual todo o SGSI (Sistema de Gestão da Segurança da Informação) é construído, independentemente da tecnologia usada.

**Por que as demais estão incorretas?**
- a) Restringe segurança da informação a hardware/software e a ataques cibernéticos, ignorando que a norma trata da informação em qualquer suporte (papel, conhecimento tácito, nuvem) e de qualquer ameaça (não só ataques, mas erros humanos, falhas de processo, desastres naturais etc.).
- c) Conformidade legal (privacidade, LGPD, GDPR etc.) pode ser uma das entradas do SGSI, mas não é a definição de segurança da informação — é apenas um dos requisitos de partes interessadas que o SGSI pode precisar atender.

**Dica para a prova ISO 27001**
Sempre que a questão perguntar "o que é segurança da informação", a resposta-âncora é CID (confidencialidade, integridade, disponibilidade). Cuidado com alternativas que citam apenas tecnologia ou apenas compliance — a norma é agnóstica de tecnologia e mais ampla que apenas leis.

**Resumo para memorização**
Segurança da informação = CID: Confidencialidade + Integridade + Disponibilidade.

---

## Questão 2

**Enunciado:** Cenário 1: A empresa "TechSolution", especializada em desenvolvimento de software, está começando a entender a ISO 27001 para proteger suas propriedades intelectuais e dados de clientes.

2. Para a TechSolution, a "confidencialidade" é essencial para proteger seus algoritmos proprietários. Qual é a essência deste princípio?

- a) Garantir que a informação seja acessível e utilizável por pessoas autorizadas quando necessário.
- b) Assegurar que a informação esteja completa e não tenha sido alterada ou destruída indevidamente.
- c) Proteger a informação contra divulgação não autorizada.

✅ **Resposta correta:** c) Proteger a informação contra divulgação não autorizada.

**Justificativa**
Confidencialidade, na ISO/IEC 27000, é a "propriedade de que a informação não esteja disponível ou revelada a indivíduos, entidades ou processos não autorizados". Para a TechSolution, isso significa impedir que algoritmos proprietários e código-fonte cheguem a concorrentes ou pessoas sem necessidade de acesso — a essência é o controle de quem pode ver a informação.

**Por que as demais estão incorretas?**
- a) Essa é a definição de disponibilidade, não de confidencialidade — foca em acesso quando necessário, não em restrição de acesso.
- b) Essa é a definição de integridade — trata de exatidão e completude da informação, não de sigilo.

**Dica para a prova ISO 27001**
A prova adora trocar as definições dos três pilares entre si. Decore a palavra-chave de cada um: Confidencialidade → sigilo/não divulgação; Integridade → exatidão/não alteração; Disponibilidade → acesso quando necessário.

**Resumo para memorização**
Confidencialidade é sobre "quem pode ver", não sobre "quando pode acessar" ou "se está correto".

---

## Questão 3

**Enunciado:** Cenário 1: A empresa "TechSolution", especializada em desenvolvimento de software, está começando a entender a ISO 27001 para proteger suas propriedades intelectuais e dados de clientes.

3. Um dos gerentes da TechSolution questiona a necessidade de um SGSI, achando que basta comprar um bom antivírus. Conforme a ABNT NBR ISO/IEC 27001:2022 (Introdução, 0.1), o SGSI baseia-se primariamente em qual processo?

- a) A implementação de tecnologias de segurança de ponta.
- b) Um processo de gestão de riscos contínuo para a informação.
- c) A contratação de especialistas externos em cibersegurança.

✅ **Resposta correta:** b) Um processo de gestão de riscos contínuo para a informação.

**Justificativa**
A Introdução da norma deixa claro que o SGSI compreende políticas, procedimentos, diretrizes e recursos associados, geridos coletivamente por uma organização, na busca por proteger seus ativos de informação, e que essa proteção é alcançada através de um processo de gestão de riscos contínuo. A tecnologia (como antivírus) é apenas um dos controles possíveis resultantes desse processo — não o fundamento do sistema de gestão.

**Por que as demais estão incorretas?**
- a) Tecnologia é um meio de tratamento de risco, não o fundamento do SGSI; um SGSI eficaz pode incluir controles organizacionais, físicos e de pessoas, não apenas tecnológicos.
- c) Consultoria externa pode apoiar a implementação, mas a norma não estabelece a contratação de terceiros como base do sistema — a responsabilidade e o processo de gestão de riscos são da própria organização.

**Dica para a prova ISO 27001**
Toda vez que a prova apresentar um "mito" (basta comprar ferramenta X), lembre que a ISO 27001 é, no núcleo, uma abordagem baseada em risco e em gestão (pessoas, processos e tecnologia), não uma lista de produtos de segurança.

**Resumo para memorização**
Antivírus não é SGSI: SGSI é gestão de risco contínua, sistemática e documentada.

---

## Questão 4

**Enunciado:** Cenário 2: A "HealthData Corp." gerencia um grande volume de prontuários eletrônicos e está explorando a ISO 27001 para fortalecer a proteção dos dados dos pacientes.

4. A ABNT NBR ISO/IEC 27001:2022 estabelece que a adoção de um SGSI é uma "decisão estratégica". O que essa característica implica para a HealthData Corp.?

- a) A decisão pode ser tomada pelo departamento de TI independentemente da direção estratégica da empresa.
- b) A implementação do SGSI deve ser alinhada aos objetivos de negócio da empresa e integrada à sua estrutura de administração.
- c) A certificação ISO 27001 é um diferencial de marketing, mas não afeta a operação diária.

✅ **Resposta correta:** b) A implementação do SGSI deve ser alinhada aos objetivos de negócio da empresa e integrada à sua estrutura de administração.

**Justificativa**
A cláusula 4.4, combinada com a Introdução (0.1), trata a adoção de um SGSI como decisão estratégica para a organização, o que significa que ela deve nascer do nível de liderança (Alta Direção), estar alinhada aos objetivos de negócio e ficar integrada aos processos e à estrutura de gestão já existentes — não é um projeto isolado de TI.

**Por que as demais estão incorretas?**
- a) Contradiz diretamente o conceito de "decisão estratégica": decisões estratégicas são de responsabilidade da Alta Direção, não de um departamento isoladamente, e devem estar conectadas à direção da empresa como um todo (cláusula 5.1).
- c) Subestima o impacto do SGSI: a norma exige que a segurança da informação seja incorporada aos processos de negócio (0.1), afetando a operação diária, e não apenas a imagem/marketing da organização.

**Dica para a prova ISO 27001**
Questões que citam "decisão estratégica", "liderança", "integração aos processos de negócio" apontam sempre para envolvimento da Alta Direção (cláusula 5) e alinhamento com o contexto/objetivos organizacionais (cláusula 4), nunca para decisões isoladas de TI.

**Resumo para memorização**
SGSI não é projeto de TI: é decisão estratégica da Alta Direção, integrada ao negócio.

---

## Questão 5

**Enunciado:** Cenário 2: A "HealthData Corp." gerencia um grande volume de prontuários eletrônicos e está explorando a ISO 27001 para fortalecer a proteção dos dados dos pacientes.

5. A "integridade" dos dados de prontuários é crítica para a HealthData Corp. O que garante a integridade?

- a) A não divulgação da informação a pessoas não autorizadas.
- b) A propriedade de que a informação é completa, precisa e protegida contra modificações indevidas.
- c) O acesso contínuo à informação por parte dos médicos autorizados.

✅ **Resposta correta:** b) A propriedade de que a informação é completa, precisa e protegida contra modificações indevidas.

**Justificativa**
Integridade, conforme a ISO/IEC 27000, é a propriedade de exatidão (accuracy) e completude da informação. Para prontuários eletrônicos, isso significa que os dados clínicos não podem ser alterados, corrompidos ou destruídos de forma não autorizada ou acidental — um requisito vital, já que uma alteração indevida em um prontuário pode colocar a vida do paciente em risco.

**Por que as demais estão incorretas?**
- a) Descreve confidencialidade, não integridade.
- c) Descreve disponibilidade, não integridade.

**Dica para a prova ISO 27001**
Em cenários de saúde (HealthData, hospitais), a banca costuma explorar a integridade porque um erro em um dado clínico é tão grave quanto um vazamento. Não caia na armadilha de associar "saúde" automaticamente à confidencialidade.

**Resumo para memorização**
Integridade = dado certo, completo e sem alteração indevida.

---

## Questão 6

**Enunciado:** Cenário 2: A "HealthData Corp." gerencia um grande volume de prontuários eletrônicos e está explorando a ISO 27001 para fortalecer a proteção dos dados dos pacientes.

6. Para a HealthData Corp., garantir que os médicos autorizados tenham acesso aos prontuários dos pacientes a qualquer momento é um exemplo de qual pilar da segurança da informação?

- a) Confidencialidade.
- b) Integridade.
- c) Disponibilidade.

✅ **Resposta correta:** c) Disponibilidade.

**Justificativa**
Disponibilidade é a propriedade de a informação estar acessível e utilizável sob demanda por uma entidade autorizada. Em um contexto hospitalar, isso significa que o sistema de prontuário eletrônico precisa estar operacional e acessível aos médicos autorizados sempre que necessário, inclusive em situações de emergência.

**Por que as demais estão incorretas?**
- a) Confidencialidade trataria de impedir acesso de pessoas não autorizadas, não de garantir acesso a quem é autorizado.
- b) Integridade trataria da exatidão do conteúdo do prontuário, não da capacidade de acessá-lo a qualquer momento.

**Dica para a prova ISO 27001**
Palavras-chave como "a qualquer momento", "quando necessário", "sistema no ar", "continuidade de acesso" apontam quase sempre para disponibilidade.

**Resumo para memorização**
Disponibilidade = acesso garantido a quem tem direito, no momento em que precisa.

---

## Questão 7

**Enunciado:** Cenário 3: A "Educação Online Global" está implementando a ISO 27001 para proteger dados de estudantes e garantir a continuidade de seus serviços de plataforma.

7. A ABNT NBR ISO/IEC 27001:2022, em sua introdução (0.2), menciona a compatibilidade com outras normas de sistemas de gestão por meio do "Anexo SL". Qual o benefício disso para a Educação Online Global, que já possui um SGQ ISO 9001?

- a) A ISO 9001 cobre automaticamente todos os requisitos da ISO 27001, eliminando a necessidade de nova implementação.
- b) Facilita a integração de processos e a gestão de múltiplos sistemas em uma única estrutura, otimizando recursos.
- c) Permite que a organização escolha quais requisitos da ISO 27001 ela deseja implementar, sem impacto na certificação.

✅ **Resposta correta:** b) Facilita a integração de processos e a gestão de múltiplos sistemas em uma única estrutura, otimizando recursos.

**Justificativa**
O Anexo SL (também chamado de "High Level Structure" ou Estrutura de Alto Nível) padroniza a estrutura de cláusulas (seções 4 a 10), termos e definições comuns entre as normas ISO de sistemas de gestão (9001, 14001, 27001, 22301 etc.). Isso permite que uma organização como a Educação Online Global integre seus sistemas de gestão (por exemplo, em um Sistema de Gestão Integrado), reaproveitando processos comuns como auditoria interna, análise crítica pela Direção, controle de documentos e gestão de não conformidades, otimizando recursos e reduzindo esforço duplicado.

**Por que as demais estão incorretas?**
- a) Ter a ISO 9001 não substitui nem dispensa a implementação dos requisitos específicos de segurança da informação (avaliação de riscos, Anexo A, SoA etc.) — a estrutura comum facilita a integração, mas não elimina requisitos próprios de cada norma.
- c) A compatibilidade estrutural entre normas não permite "escolher" requisitos da ISO 27001 a implementar; a Seção 1 da norma deixa claro que nenhum requisito das cláusulas 4 a 10 pode ser excluído para fins de certificação.

**Dica para a prova ISO 27001**
Sempre que aparecer "Anexo SL" ou "estrutura de alto nível", a resposta correta fala em integração/compatibilidade estrutural entre sistemas de gestão — nunca em substituição de requisitos ou "escolha à la carte".

**Resumo para memorização**
Anexo SL = mesmo "esqueleto" para todas as normas de gestão, facilitando integração — mas cada norma mantém seus requisitos específicos.

---

## Questão 8

**Enunciado:** Cenário 3: A "Educação Online Global" está implementando a ISO 27001 para proteger dados de estudantes e garantir a continuidade de seus serviços de plataforma.

8. O Anexo A da ABNT NBR ISO/IEC 27001:2022 é considerado normativo. Qual é o papel prático deste anexo?

- a) Ele fornece um conjunto de requisitos obrigatórios que a organização deve seguir ao pé da letra.
- b) Ele oferece uma referência de controles de segurança da informação que devem ser considerados e tratados na Declaração de Aplicabilidade.
- c) Ele define a metodologia para a avaliação de riscos, sem apresentar exemplos de controles.

✅ **Resposta correta:** b) Ele oferece uma referência de controles de segurança da informação que devem ser considerados e tratados na Declaração de Aplicabilidade.

**Justificativa**
O Anexo A é normativo porque o processo de comparação com ele (cláusula 6.1.3 c) é obrigatório: a organização deve verificar se nenhum controle necessário foi omitido. Porém, os controles listados não são todos de implementação obrigatória — cada um deve ser avaliado quanto à sua aplicabilidade e justificado (incluído ou excluído) na Declaração de Aplicabilidade (SoA), com base no resultado da avaliação e do tratamento de riscos.

**Por que as demais estão incorretas?**
- a) Errado dizer que todos os controles do Anexo A devem ser seguidos "ao pé da letra" — a norma exige apenas que sejam considerados; a implementação depende da análise de riscos de cada organização.
- c) O Anexo A não define metodologia de avaliação de riscos (isso é tratado na cláusula 6.1.2, cuja metodologia é definida pela própria organização); o Anexo A é justamente uma lista de referência de controles.

**Dica para a prova ISO 27001**
Decore: Anexo A é normativo quanto ao processo de comparação/verificação, mas não é uma lista de implementação obrigatória e universal — é referência de controle a ser justificada no SoA.

**Resumo para memorização**
Anexo A = catálogo de referência de controles; SoA = onde se justifica o que foi incluído/excluído.

---

## Questão 9

**Enunciado:** Cenário 3: A "Educação Online Global" está implementando a ISO 27001 para proteger dados de estudantes e garantir a continuidade de seus serviços de plataforma.

9. A "Educação Online Global" deve "reter informação documentada" dos objetivos da segurança da informação (ABNT NBR ISO/IEC 27001:2022, 6.2 g)). O que isso implica?

- a) Que os objetivos devem ser memorizados pela alta direção.
- b) Que os objetivos devem ser registrados em um formato controlável para evidência e rastreamento.
- c) Que apenas os auditores externos precisam ter acesso a esses objetivos.

✅ **Resposta correta:** b) Que os objetivos devem ser registrados em um formato controlável para evidência e rastreamento.

**Justificativa**
"Reter informação documentada" é uma exigência recorrente na norma (cláusula 7.5) que significa manter um registro formal, controlado (com identificação, versão, proteção e disponibilidade adequadas), capaz de servir como evidência objetiva de que um requisito foi cumprido. No caso dos objetivos de segurança da informação (6.2), isso garante rastreabilidade de metas, prazos e responsáveis, permitindo auditoria e análise crítica posteriores.

**Por que as demais estão incorretas?**
- a) A norma exige registro formal, não memorização — "informação documentada" é, por definição, informação que precisa ser controlada e mantida, e memória não atende a esse requisito nem gera evidência auditável.
- c) O acesso à informação documentada deve ser definido conforme a necessidade organizacional (inclusive das partes interessadas internas relevantes), não restrito apenas a auditores externos; isso limitaria indevidamente a gestão interna do próprio SGSI.

**Dica para a prova ISO 27001**
Toda vez que a norma disser "reter informação documentada" ou "manter informação documentada", pense em evidência objetiva, controlada e rastreável — é a linguagem-padrão de sistemas de gestão (Anexo SL) para "isso precisa estar registrado e disponível".

**Resumo para memorização**
Se não está documentado e controlado, para efeitos de auditoria, não aconteceu.

---

## Questão 10

**Enunciado:** Cenário 4: A "FinTech Solutions" está desenvolvendo um novo aplicativo de pagamentos e busca integrar a segurança desde as primeiras fases do projeto.

10. A ABNT NBR ISO/IEC 27001:2022 (Introdução, 0.1) enfatiza que a segurança da informação deve ser considerada no projeto de processos, sistemas e controles. Este conceito é conhecido como:

- a) Segurança reativa.
- b) Segurança por design.
- c) Segurança por compliance.

✅ **Resposta correta:** b) Segurança por design.

**Justificativa**
A Introdução da norma destaca que é importante que a segurança da informação seja considerada no projeto (design) de processos, sistemas de informação e controles — ou seja, incorporada desde a concepção, e não adicionada posteriormente como "remendo". Esse conceito é conhecido no mercado como "security by design" (segurança desde a concepção), análogo ao conceito de "privacy by design" da LGPD/GDPR.

**Por que as demais estão incorretas?**
- a) Segurança reativa é o oposto do que a norma preconiza: agir somente depois que um incidente ocorre, em vez de prevenir desde o início do projeto.
- c) Segurança por compliance foca apenas em atender exigências legais/regulatórias formalmente, o que não é a mesma coisa que incorporar segurança na arquitetura e no design de processos e sistemas desde o início.

**Dica para a prova ISO 27001**
Fixe o termo "security by design" (ou "segurança desde a concepção") — é um conceito frequentemente cobrado em provas de Lead Implementer, especialmente em cenários de desenvolvimento de software e novos produtos (como fintechs e apps).

**Resumo para memorização**
Segurança entra no projeto desde o dia zero — não é um adesivo colado depois de pronto.

---

## Questão 11

**Enunciado:** Cenário 4: A "FinTech Solutions" está desenvolvendo um novo aplicativo de pagamentos e busca integrar a segurança desde as primeiras fases do projeto.

11. A ABNT NBR ISO/IEC 27000 é uma norma de referência crucial para a "FinTech Solutions". Qual sua principal função para a compreensão da ISO 27001?

- a) Fornecer uma lista detalhada de todas as vulnerabilidades de segurança existentes.
- b) Estabelecer os requisitos técnicos para a implementação de firewalls e sistemas de detecção de intrusão.
- c) Descrever a visão geral e o vocabulário do sistema de gestão da segurança da informação.

✅ **Resposta correta:** c) Descrever a visão geral e o vocabulário do sistema de gestão da segurança da informação.

**Justificativa**
A ISO/IEC 27000 é a norma "guarda-chuva" da família 27k: apresenta uma visão geral dos SGSI e define os termos e conceitos usados em todas as demais normas da família (incluindo a 27001), como "risco", "ativo", "confidencialidade", "parte interessada" etc. É referência normativa explícita na cláusula 3 (Termos e definições) da ISO/IEC 27001:2022, que remete o leitor à 27000 para o vocabulário.

**Por que as demais estão incorretas?**
- a) A 27000 não é uma lista de vulnerabilidades — bases de vulnerabilidades são mantidas por outras fontes (como CVE), fora do escopo da família 27k.
- b) Requisitos técnicos detalhados de firewalls e IDS/IPS não são tratados na 27000 nem na 27001; controles técnicos de rede aparecem de forma genérica no Anexo A (ex.: 8.20, 8.21) e orientações mais detalhadas estão em normas complementares como a ISO/IEC 27033.

**Dica para a prova ISO 27001**
Toda vez que a prova perguntar sobre "vocabulário" ou "visão geral" do conjunto de normas 27k, a resposta é ISO/IEC 27000. Não confunda com a 27002 (guia de implementação de controles) nem com a 27005 (gestão de riscos).

**Resumo para memorização**
ISO/IEC 27000 = dicionário e mapa da família 27k.

---

## Questão 12

**Enunciado:** Cenário 4: A "FinTech Solutions" está desenvolvendo um novo aplicativo de pagamentos e busca integrar a segurança desde as primeiras fases do projeto.

12. No contexto de um SGSI para a "FinTech Solutions", o que representa um "risco de segurança da informação"?

- a) Um evento que já ocorreu e resultou em perda financeira.
- b) O efeito da incerteza nos objetivos da segurança da informação.
- c) Uma fraqueza em um sistema ou processo que pode ser explorada.

✅ **Resposta correta:** b) O efeito da incerteza nos objetivos da segurança da informação.

**Justificativa**
A ISO/IEC 27000 define risco (alinhado à ISO 31000) como o "efeito da incerteza nos objetivos", e risco de segurança da informação como associado ao potencial de ameaças explorarem vulnerabilidades de um ativo de informação, causando dano à organização. É um conceito prospectivo e probabilístico, não um evento já concretizado.

**Por que as demais estão incorretas?**
- a) Um evento que já ocorreu e causou dano é um incidente de segurança da informação, não um risco — risco é sobre possibilidade futura, incidente é sobre fato consumado.
- c) Isso descreve uma vulnerabilidade, que é apenas um dos componentes do risco (junto com ameaça e impacto), não o risco em si.

**Dica para a prova ISO 27001**
A prova adora confundir os três conceitos: vulnerabilidade (fraqueza), ameaça (potencial causador de dano) e risco (combinação de probabilidade e impacto de uma ameaça explorar uma vulnerabilidade). Risco ≠ vulnerabilidade ≠ incidente.

**Resumo para memorização**
Risco é o "e se" (futuro/incerto); incidente é o "aconteceu" (passado/fato).

---

## Questão 13

**Enunciado:** Cenário 5: A "Logística Inteligente" é uma empresa de transporte e armazenamento, implementando a ISO 27001 para proteger seus dados de carga e logística.

13. A Seção 1 da ABNT NBR ISO/IEC 27001:2022 especifica que a norma se aplica a todas as organizações, "independentemente do tipo, tamanho ou natureza". O que esta afirmação significa?

- a) A norma deve ser aplicada igualmente a qualquer organização sem qualquer adaptação.
- b) A norma é universalmente adaptável, mas a forma de implementação deve ser adequada ao contexto específico de cada organização.
- c) Organizações de pequeno porte podem obter isenção de alguns requisitos da norma.

✅ **Resposta correta:** b) A norma é universalmente adaptável, mas a forma de implementação deve ser adequada ao contexto específico de cada organização.

**Justificativa**
A Seção 1 (Escopo) afirma que os requisitos são genéricos e aplicáveis a qualquer organização, independentemente de tipo, tamanho e natureza. Isso não significa uniformidade de implementação: a cláusula 4.1 (contexto) e o próprio espírito da norma exigem que cada organização adapte a extensão e a profundidade dos controles ao seu próprio contexto, riscos e complexidade — uma pequena transportadora e uma multinacional terão SGSIs de porte e sofisticação diferentes, mas ambos igualmente válidos e certificáveis.

**Por que as demais estão incorretas?**
- a) Aplicar "sem qualquer adaptação" contraria o princípio de que o SGSI deve ser dimensionado ao contexto de cada organização — não existe um SGSI de "tamanho único".
- c) A norma não prevê isenções de requisitos por porte da empresa: a Seção 1 explicitamente proíbe a exclusão de qualquer requisito das cláusulas 4 a 10 para fins de certificação, independentemente do tamanho da organização.

**Dica para a prova ISO 27001**
"Aplicável a qualquer organização" é frequentemente mal interpretado como "implementação idêntica para todos". Lembre-se: os requisitos (cláusulas 4-10) são fixos e não podem ser excluídos, mas a forma/profundidade de atendê-los é escalável ao contexto.

**Resumo para memorização**
Requisitos são universais e não excludíveis; a implementação é sempre sob medida.

---

## Questão 14

**Enunciado:** Cenário 5: A "Logística Inteligente" é uma empresa de transporte e armazenamento, implementando a ISO 27001 para proteger seus dados de carga e logística.

14. A "Logística Inteligente" precisa determinar as "necessidades e expectativas das partes interessadas" (ABNT NBR ISO/IEC 27001:2022, 4.2). Quais são os requisitos que podem ser considerados neste contexto?

- a) Apenas os requisitos internos definidos pela alta direção da empresa.
- b) Somente os requisitos técnicos relacionados à infraestrutura de TI da organização.
- c) Requisitos legais, regulamentares, contratuais e as expectativas de segurança dos stakeholders.

✅ **Resposta correta:** c) Requisitos legais, regulamentares, contratuais e as expectativas de segurança dos stakeholders.

**Justificativa**
A cláusula 4.2 exige que a organização determine as partes interessadas relevantes para o SGSI e seus requisitos pertinentes. A própria norma traz uma nota esclarecendo que esses requisitos podem incluir requisitos legais e regulamentares e obrigações contratuais — além das expectativas de clientes, fornecedores, reguladores, acionistas e demais stakeholders relacionados à segurança da informação.

**Por que as demais estão incorretas?**
- a) Restringir a apenas requisitos internos da alta direção ignora a essência da cláusula 4.2, que é justamente identificar requisitos externos (legais, contratuais, de clientes) além dos internos.
- b) A cláusula 4.2 não se limita a requisitos técnicos de TI — trata de partes interessadas em sentido amplo (jurídico, comercial, regulatório, social), muito além da infraestrutura tecnológica.

**Dica para a prova ISO 27001**
Sempre que aparecer "partes interessadas" (cláusula 4.2), lembre da tríade: requisitos legais/regulamentares + obrigações contratuais + expectativas/necessidades das partes interessadas relevantes. Essa cláusula alimenta diretamente o escopo (4.3) e os riscos (6.1).

**Resumo para memorização**
Partes interessadas trazem de tudo: lei, contrato e expectativa — nunca é só "TI" ou só "chefia".

---

## Questão 15

**Enunciado:** Cenário 5: A "Logística Inteligente" é uma empresa de transporte e armazenamento, implementando a ISO 27001 para proteger seus dados de carga e logística.

15. Conforme a ISO 27001:2022 (Seção 6.1.3 c), a "Logística Inteligente" deve comparar os controles que ela determinou com os do Anexo A. Qual o propósito dessa comparação?

- a) Para garantir que todos os controles do Anexo A sejam implementados, mesmo que não sejam relevantes.
- b) Para verificar se nenhum controle necessário foi omitido.
- c) Para substituir todos os controles internos pelos controles do Anexo A.

✅ **Resposta correta:** b) Para verificar se nenhum controle necessário foi omitido.

**Justificativa**
A cláusula 6.1.3 c) exige que a organização compare os controles determinados no tratamento de riscos com os do Anexo A, com o único propósito de verificar se nenhum controle necessário foi negligenciado ou omitido — funcionando como uma "checklist de sanidade" (gap check) sobre o processo de tratamento de riscos conduzido pela organização, e não como uma imposição de controles não relacionados aos riscos identificados.

**Por que as demais estão incorretas?**
- a) A comparação não obriga a implementação de todos os controles do Anexo A independentemente da relevância — cada controle deve ser justificado com base no risco, podendo ser legitimamente excluído no SoA se não for aplicável.
- c) O Anexo A não substitui controles internos: ele serve como referência de verificação; controles próprios da organização (não listados no Anexo A) também podem e devem ser incluídos no tratamento de riscos, se necessários.

**Dica para a prova ISO 27001**
A frase "nenhum controle necessário foi omitido" é praticamente literal da norma (6.1.3 c) — decore-a, pois é frequentemente cobrada ipsis litteris ou parafraseada.

**Resumo para memorização**
Anexo A funciona como checklist de conferência, não como lista de compras obrigatória.

---

## Questão 16

**Enunciado:** Cenário 6: A "SmartCity Solutions" está implementando um SGSI para gerenciar a segurança de sua infraestrutura urbana inteligente.

16. A ABNT NBR ISO/IEC 27001:2022 (Seção 4.4) exige que a "SmartCity Solutions" estabeleça, implemente, mantenha e **melhore continuamente** um SGSI. O que significa "manter" o SGSI?

- a) Fazer alterações no SGSI apenas em resposta a incidentes.
- b) Assegurar que o SGSI continue a operar de forma eficaz e que seus controles e processos estejam atualizados e funcionando.
- c) Guardar toda a documentação do SGSI em um local seguro.

✅ **Resposta correta:** b) Assegurar que o SGSI continue a operar de forma eficaz e que seus controles e processos estejam atualizados e funcionando.

**Justificativa**
A cláusula 4.4 estabelece quatro verbos-chave: estabelecer, implementar, manter e melhorar continuamente. "Manter" significa preservar a operação eficaz do sistema ao longo do tempo — atualizar controles, revisar processos, garantir que o que foi implementado continue funcionando e sendo pertinente, e não apenas ser criado uma vez e esquecido. É a garantia de sustentabilidade operacional do SGSI no dia a dia.

**Por que as demais estão incorretas?**
- a) Reduzir a manutenção a "reagir a incidentes" é uma postura reativa, incompatível com a natureza contínua e proativa da manutenção de um SGSI, que deve ser monitorado e ajustado independentemente de haver incidentes.
- c) Guardar documentação é parte do controle da informação documentada (cláusula 7.5.3), mas não é a definição de "manter o SGSI" — manter envolve a operação viva do sistema, não apenas o arquivamento de papéis.

**Dica para a prova ISO 27001**
Lembre dos quatro verbos da cláusula 4.4 (estabelecer, implementar, manter, melhorar continuamente) — a prova gosta de testar se você sabe diferenciar cada um: estabelecer = criar; implementar = colocar em prática; manter = sustentar a operação; melhorar = evoluir o sistema (cláusula 10).

**Resumo para memorização**
Manter é manter vivo e funcionando — não é guardar na gaveta.

---

## Questão 17

**Enunciado:** Cenário 6: A "SmartCity Solutions" está implementando um SGSI para gerenciar a segurança de sua infraestrutura urbana inteligente.

17. A Alta Direção da "SmartCity Solutions" deve demonstrar seu comprometimento (Seção 5.1). Qual é um exemplo prático desse comprometimento?

- a) Deixar todas as decisões de segurança para os especialistas de TI.
- b) Assegurar que os recursos necessários para o SGSI estejam disponíveis.
- c) Participar apenas da reunião inicial de kickoff do projeto.

✅ **Resposta correta:** b) Assegurar que os recursos necessários para o SGSI estejam disponíveis.

**Justificativa**
A cláusula 5.1 lista diversas evidências de liderança e comprometimento da Alta Direção, entre elas: assegurar que a política e os objetivos de segurança da informação sejam estabelecidos e compatíveis com a direção estratégica; assegurar a integração dos requisitos do SGSI aos processos de negócio; e, de forma explícita, assegurar que os recursos necessários para o SGSI estejam disponíveis (pessoas, orçamento, infraestrutura, tempo). Sem recursos, o SGSI não sai do papel.

**Por que as demais estão incorretas?**
- a) Delegar totalmente as decisões de segurança à TI contraria o requisito de liderança ativa: a Alta Direção deve se engajar, orientar e prestar contas pela eficácia do SGSI, não apenas transferir a responsabilidade.
- c) Uma participação pontual (apenas no kickoff) não configura comprometimento contínuo; a norma exige envolvimento sustentado, incluindo a análise crítica periódica (cláusula 9.3) e o apoio constante às funções relevantes.

**Dica para a prova ISO 27001**
A cláusula 5.1 é uma das mais cobradas em provas de Lead Implementer/Auditor: memorize que ela lista responsabilidades específicas e não delegáveis da Alta Direção (política, objetivos, recursos, integração ao negócio, comunicação da importância, apoio a funções, promoção da melhoria contínua).

**Resumo para memorização**
Sem recursos garantidos pela Alta Direção, não existe comprometimento real — só discurso.

---

## Questão 18

**Enunciado:** Cenário 7: A "DataGuardians Inc." está definindo o escopo de seu SGSI, que inclui diferentes departamentos e serviços.

18. Ao determinar o escopo do SGSI (Seção 4.3), a "DataGuardians Inc." deve considerar as "questões internas e externas" referenciadas na Seção 4.1. Qual o propósito dessa consideração?

- a) Limitar o escopo do SGSI apenas às questões financeiras da organização.
- b) Assegurar que o SGSI seja relevante e eficaz para o contexto operacional e estratégico da organização.
- c) Ignorar as questões externas, focando apenas nos controles internos.

✅ **Resposta correta:** b) Assegurar que o SGSI seja relevante e eficaz para o contexto operacional e estratégico da organização.

**Justificativa**
A cláusula 4.3 exige que, ao determinar o escopo, a organização considere as questões internas e externas referidas em 4.1 e os requisitos referidos em 4.2, além das interfaces e dependências entre as atividades realizadas pela organização e as realizadas por outras organizações. Isso garante que o escopo não seja definido arbitrariamente, mas reflita o contexto real (mercado, regulação, cultura, tecnologia, partes interessadas) em que a organização opera, tornando o SGSI pertinente e eficaz.

**Por que as demais estão incorretas?**
- a) Restringir o escopo apenas a questões financeiras ignora a amplitude da cláusula 4.1, que trata de questões internas e externas de qualquer natureza (estratégica, legal, tecnológica, cultural, competitiva), não somente financeira.
- c) Ignorar questões externas contraria diretamente a exigência da cláusula 4.1, que trata questões internas e externas como igualmente relevantes para o contexto da organização.

**Dica para a prova ISO 27001**
Lembre da cadeia lógica: 4.1 (contexto interno/externo) + 4.2 (partes interessadas) + interfaces e dependências → alimentam 4.3 (escopo). Isso é testado com frequência em formato de "qual cláusula alimenta qual".

**Resumo para memorização**
O escopo nasce do contexto — não pode ser definido no vácuo, ignorando o ambiente da organização.

---

## Questão 19

**Enunciado:** Cenário 7: A "DataGuardians Inc." está definindo o escopo de seu SGSI, que inclui diferentes departamentos e serviços.

19. O escopo do SGSI da "DataGuardians Inc." deve estar disponível como "informação documentada" (Seção 4.3). Por que isso é importante?

- a) Apenas para satisfazer uma formalidade regulatória.
- b) Para fornecer clareza e transparência sobre os limites e a aplicabilidade do SGSI, tanto interna quanto externamente.
- c) Para que a organização possa alterá-lo secretamente a qualquer momento.

✅ **Resposta correta:** b) Para fornecer clareza e transparência sobre os limites e a aplicabilidade do SGSI, tanto interna quanto externamente.

**Justificativa**
A cláusula 4.3 exige que o escopo esteja disponível como informação documentada. Isso é essencial porque o escopo define os limites e a aplicabilidade do SGSI: quais unidades de negócio, processos, localidades e ativos estão dentro (ou fora) da certificação. Documentar e comunicar isso com clareza evita ambiguidades para auditores, clientes, parceiros e para o próprio time interno — todos precisam saber exatamente o que está "coberto" pelo SGSI certificado.

**Por que as demais estão incorretas?**
- a) Reduzir a exigência a "mera formalidade" ignora o propósito prático de transparência e gestão que a documentação do escopo cumpre, inclusive para evitar declarações enganosas sobre o que está certificado.
- c) A ideia de alteração "secreta" contraria o princípio de controle da informação documentada (cláusula 7.5.3), que exige rastreabilidade, versionamento e comunicação adequada de mudanças, especialmente em algo tão sensível quanto o escopo do SGSI.

**Dica para a prova ISO 27001**
Cuidado com alternativas que usam palavras como "secretamente", "apenas para cumprir tabela" ou "sem impacto real" — normalmente são pegadinhas que subestimam o propósito prático dos requisitos de documentação.

**Resumo para memorização**
Escopo documentado = transparência sobre o que está (e o que não está) dentro do SGSI certificado.

---

## Questão 20

**Enunciado:** Cenário 8: A "CloudSecure Providers" está elaborando sua política de segurança da informação e definindo objetivos.

20. A política de segurança da informação da "CloudSecure Providers" (Seção 5.2) deve:

- a) Ser um documento longo e detalhado que especifica todas as configurações de segurança.
- b) Ser apropriada ao propósito da organização e incluir o comprometimento com a melhoria contínua do SGSI.
- c) Ser acessível apenas aos membros da equipe de gestão de segurança.

✅ **Resposta correta:** b) Ser apropriada ao propósito da organização e incluir o comprometimento com a melhoria contínua do SGSI.

**Justificativa**
A cláusula 5.2 exige que a política de segurança da informação seja apropriada ao propósito da organização, inclua os objetivos de segurança da informação (ou forneça a estrutura para estabelecê-los), inclua o comprometimento em satisfazer os requisitos aplicáveis e o comprometimento com a melhoria contínua do SGSI. É um documento estratégico e de alto nível, não um manual técnico detalhado.

**Por que as demais estão incorretas?**
- a) A política não deve ser um documento longo cheio de configurações técnicas — esse nível de detalhe pertence a procedimentos e normas técnicas específicas, não à política, que é declaratória e de alto nível.
- c) A cláusula 5.2 exige que a política esteja disponível como informação documentada, seja comunicada dentro da organização e disponível para as partes interessadas, conforme apropriado — restringi-la apenas à equipe de segurança contraria essa exigência de comunicação ampla.

**Dica para a prova ISO 27001**
Não confunda política (alto nível, estratégica, cláusula 5.2) com procedimentos e normas técnicas (nível operacional, controles do Anexo A). A política é curta, principiológica e amplamente comunicada.

**Resumo para memorização**
Política é a "declaração de intenções" da organização — não um manual técnico.

---

## Questão 21

**Enunciado:** Cenário 8: A "CloudSecure Providers" está elaborando sua política de segurança da informação e definindo objetivos.

21. Os objetivos da segurança da informação da "CloudSecure Providers" (Seção 6.2) devem ser "consistentes com a política da segurança da informação". Qual a razão disso?

- a) Para garantir que os objetivos sejam difíceis de atingir e, assim, motivar a equipe.
- b) Para assegurar que os objetivos estratégicos de segurança estejam alinhados às diretrizes e princípios estabelecidos na política.
- c) Para que a política seja apenas uma formalidade, sem impacto nos objetivos.

✅ **Resposta correta:** b) Para assegurar que os objetivos estratégicos de segurança estejam alinhados às diretrizes e princípios estabelecidos na política.

**Justificativa**
A cláusula 6.2 exige que os objetivos de segurança da informação sejam consistentes com a política, mensuráveis (se possível), levem em conta requisitos aplicáveis, resultados de avaliação e tratamento de riscos, sejam comunicados e atualizados. A consistência com a política garante coerência vertical no SGSI: a política define o "porquê" e as diretrizes gerais, e os objetivos traduzem isso em metas concretas alinhadas ao mesmo propósito.

**Por que as demais estão incorretas?**
- a) A norma não exige objetivos "difíceis" propositalmente — pelo contrário, objetivos costumam seguir a lógica SMART (específicos, mensuráveis, alcançáveis, relevantes e com prazo), o que exclui metas inatingíveis por design.
- c) Tratar a política como "mera formalidade" contraria a essência da cláusula 5.2, que exige uma política com comprometimento real e efeito prático sobre toda a estrutura do SGSI, incluindo os objetivos.

**Dica para a prova ISO 27001**
Política (5.2) e objetivos (6.2) sempre andam juntos nas provas: política = diretrizes gerais; objetivos = metas específicas derivadas dessas diretrizes. Um não pode contradizer o outro.

**Resumo para memorização**
Objetivos são o desdobramento prático da política — nunca podem contradizê-la.

---

## Questão 22

**Enunciado:** Cenário 9: A "Analytics Insights Corp." está revisando seus processos para integrar melhor a segurança da informação.

22. A ABNT NBR ISO/IEC 27001:2022 (0.1) destaca que "É importante que um sistema de gestão da segurança da informação seja parte de, e esteja integrado com, os processos da organização". Qual a implicação disso para a "Analytics Insights Corp."?

- a) A segurança da informação deve ser tratada como um processo separado, com sua própria equipe e budget.
- b) A segurança da informação não pode ser uma iniciativa isolada, mas deve ser incorporada aos processos de negócio e à governança da empresa.
- c) A integração é opcional e depende da maturidade da organização em segurança.

✅ **Resposta correta:** b) A segurança da informação não pode ser uma iniciativa isolada, mas deve ser incorporada aos processos de negócio e à governança da empresa.

**Justificativa**
A Introdução (0.1) é enfática ao afirmar que o SGSI deve ser parte de e estar integrado aos processos e à estrutura de gestão geral da organização, e que a segurança da informação deve ser considerada no projeto de processos, sistemas de informação e controles. Isso reforça que segurança não é um "silo" isolado, mas uma dimensão transversal da governança corporativa.

**Por que as demais estão incorretas?**
- a) Tratar segurança como processo totalmente separado (com equipe e budget isolados, sem integração aos demais processos) contraria diretamente o texto da Introdução, que pede integração, não isolamento.
- c) A integração não é apresentada como opcional ou condicionada à maturidade — é um princípio estrutural do SGSI, válido desde o primeiro estágio de implementação, ainda que a profundidade da integração possa evoluir com o tempo.

**Dica para a prova ISO 27001**
"Integração ao negócio" é tema recorrente na Introdução da norma e é frequentemente contrastado com a ideia (errada) de segurança como "departamento isolado de TI". Fique atento a esse contraste nas alternativas.

**Resumo para memorização**
Segurança da informação é fio condutor da governança, não um departamento à parte.

---

## Questão 23

**Enunciado:** Cenário 9: A "Analytics Insights Corp." está revisando seus processos para integrar melhor a segurança da informação.

23. A "Analytics Insights Corp." deve determinar as necessidades e expectativas das partes interessadas (Seção 4.2). O que significa a nota que os "requisitos das partes interessadas podem incluir requisitos legais e regulamentares, bem como obrigações contratuais"?

- a) Que a organização só precisa considerar os requisitos que já estão em vigor.
- b) Que esses requisitos são mandatórios e devem ser endereçados pelo SGSI para garantir a conformidade.
- c) Que a organização pode escolher quais requisitos legais ou contratuais ela deseja atender.

✅ **Resposta correta:** b) Que esses requisitos são mandatórios e devem ser endereçados pelo SGSI para garantir a conformidade.

**Justificativa**
A nota da cláusula 4.2 esclarece que os requisitos das partes interessadas podem incluir requisitos legais, regulamentares e obrigações contratuais. Por sua própria natureza, requisitos legais e contratuais não são opcionais: uma vez identificados como aplicáveis, devem ser endereçados pelo SGSI (frequentemente por meio de controles do tema "conformidade" no Anexo A, como o controle 5.31 — requisitos legais, estatutários, regulamentares e contratuais) para que a organização evite sanções, litígios e não conformidades.

**Por que as demais estão incorretas?**
- a) Limitar-se ao "já vigente" ignora que a cláusula 4.2 e o contexto (4.1) exigem monitoramento contínuo de mudanças, incluindo novas leis e regulamentos que possam vir a se aplicar.
- c) Requisitos legais e obrigações contratuais não são "opções de menu" — uma vez que se aplicam à organização, seu atendimento é obrigatório; a discricionariedade da organização está em como atendê-los (controles), não em se vai atendê-los.

**Dica para a prova ISO 27001**
Quando a prova mencionar "requisitos legais, regulamentares e contratuais", pense sempre em caráter obrigatório de atendimento — é diferente das "expectativas" de partes interessadas, que podem ter caráter mais voluntário/estratégico.

**Resumo para memorização**
Lei e contrato não se "escolhe seguir" — se aplicam, o SGSI tem que endereçar.

---

## Questão 24

**Enunciado:** Cenário 10: Uma startup recém-criada, "ConnectIT", pretende implementar a ISO 27001.

24. A ABNT NBR ISO/IEC 27001:2022 (Seção 1) afirma que a exclusão de quaisquer requisitos das Seções 4 a 10 não é aceitável para a conformidade. O que isso significa para a "ConnectIT"?

- a) A ConnectIT pode decidir quais requisitos são relevantes para ela e excluir os demais.
- b) Todos os requisitos das Seções 4 a 10 devem ser abordados e implementados para alcançar a certificação, sem exceção.
- c) A ConnectIT deve justificar apenas as exclusões de controles do Anexo A.

✅ **Resposta correta:** b) Todos os requisitos das Seções 4 a 10 devem ser abordados e implementados para alcançar a certificação, sem exceção.

**Justificativa**
A Seção 1 (Escopo) da norma estabelece expressamente que, quando uma organização reivindica conformidade com a ISO/IEC 27001, nenhum dos requisitos especificados nas Seções 4 a 10 pode ser excluído. Isso é diferente do Anexo A, cujos controles podem ser excluídos (com justificativa no SoA) se não forem aplicáveis com base na avaliação de riscos — a flexibilidade de exclusão existe apenas para os controles do Anexo A, nunca para as cláusulas do "corpo" da norma (o sistema de gestão em si).

**Por que as demais estão incorretas?**
- a) Contraria diretamente o texto da Seção 1: não há discricionariedade para excluir cláusulas de gestão (4 a 10) por decisão própria da organização.
- c) Inverte o conceito: a possibilidade de exclusão mediante justificativa existe para os controles do Anexo A (via SoA, cláusula 6.1.3), não para as cláusulas do corpo normativo (4 a 10), que são todas obrigatórias.

**Dica para a prova ISO 27001**
Grave essa distinção fundamental: cláusulas 4-10 = requisitos de gestão, TODOS obrigatórios, sem exclusão. Anexo A = controles de referência, PODEM ser excluídos com justificativa técnica no SoA baseada em risco.

**Resumo para memorização**
Cláusulas 4 a 10 não se negociam; controles do Anexo A, sim (com justificativa).

---

## Questão 25

**Enunciado:** Cenário 10: Uma startup recém-criada, "ConnectIT", pretende implementar a ISO 27001.

25. A "ConnectIT" precisa estabelecer um SGSI (Seção 4.4). O que essa seção exige em relação aos processos dentro do SGSI?

- a) Apenas que os processos de segurança da informação sejam criados, independentemente de outros processos organizacionais.
- b) Que o SGSI inclua os processos necessários e suas interações, de acordo com os requisitos da norma.
- c) Que a documentação dos processos seja mínima para garantir agilidade na startup.

✅ **Resposta correta:** b) Que o SGSI inclua os processos necessários e suas interações, de acordo com os requisitos da norma.

**Justificativa**
A cláusula 4.4 determina que a organização deve estabelecer, implementar, manter e melhorar continuamente um SGSI, incluindo os processos necessários e suas interações, de acordo com os requisitos desta norma. Essa visão de "processos e interações" reflete a abordagem por processos (process approach), típica das normas de sistema de gestão baseadas no Anexo SL, reconhecendo que os processos do SGSI não existem isoladamente, mas se conectam entre si (por exemplo, avaliação de riscos alimenta o tratamento de riscos, que alimenta o SoA).

**Por que as demais estão incorretas?**
- a) Criar processos de segurança "independentemente de outros processos organizacionais" contraria o princípio de integração destacado na Introdução (0.1) e o conceito de interação de processos da própria cláusula 4.4.
- c) A norma não define um nível "mínimo" de documentação em função do porte ou agilidade desejada pela empresa — o nível de documentação necessário decorre da complexidade dos processos e dos riscos envolvidos, não de uma meta de enxugamento burocrático pré-definida.

**Dica para a prova ISO 27001**
Startups e pequenas empresas aparecem com frequência em provas para testar se você sabe que a norma não abre exceções de "menos documentação por ser pequena" — o que existe é proporcionalidade ao contexto, não uma regra fixa de simplificação.

**Resumo para memorização**
SGSI é um sistema de processos interligados, não uma coleção de iniciativas soltas.

---

## Questão 26

**Enunciado:** Cenário 11: A empresa "TechGrow" está na fase de planejamento de seu SGSI e a Alta Direção está definindo os papéis e responsabilidades.

26. Para demonstrar liderança e comprometimento (Seção 5.1), a Alta Direção da TechGrow deve:

- a) Apenas aprovar os documentos finais do SGSI.
- b) Orientar e apoiar pessoas a contribuir para a eficácia do sistema de gestão da segurança da informação.
- c) Delegar completamente a gestão da segurança a um gerente de TI.

✅ **Resposta correta:** b) Orientar e apoiar pessoas a contribuir para a eficácia do sistema de gestão da segurança da informação.

**Justificativa**
Entre as diversas responsabilidades listadas na cláusula 5.1, está a de a Alta Direção dirigir e apoiar pessoas a contribuir para a eficácia do SGSI, além de promover a melhoria contínua e apoiar outras funções gerenciais relevantes a demonstrar sua liderança nas áreas sob sua responsabilidade. Isso caracteriza um papel ativo de patrocínio (sponsorship) e engajamento das pessoas, não apenas assinatura formal de documentos.

**Por que as demais estão incorretas?**
- a) Reduzir a liderança a "aprovar documentos finais" é uma visão passiva e burocrática, incompatível com o conjunto de responsabilidades ativas listadas na cláusula 5.1 (comunicação, garantia de recursos, integração ao negócio, promoção da melhoria contínua etc.).
- c) Delegação total ao gerente de TI descaracteriza a liderança da Alta Direção exigida pela norma — a responsabilidade final pelo SGSI é da Alta Direção, que pode distribuir tarefas operacionais, mas não pode se eximir do papel de liderança e prestação de contas.

**Dica para a prova ISO 27001**
"Apoiar", "orientar", "assegurar", "promover", "comunicar a importância" são os verbos típicos da cláusula 5.1 — associe-os sempre a ações ativas da Alta Direção, nunca a delegação passiva total.

**Resumo para memorização**
Liderança é engajamento ativo, não apenas assinatura de papel.

---

## Questão 27

**Enunciado:** Cenário 11: A empresa "TechGrow" está na fase de planejamento de seu SGSI e a Alta Direção está definindo os papéis e responsabilidades.

27. A política de segurança da informação da TechGrow (Seção 5.2) deve incluir o "comprometimento de satisfazer os requisitos aplicáveis, relacionados com a segurança da informação". Isso significa:

- a) Que a política deve listar todos os requisitos legais e regulamentares em vigor.
- b) Que a política deve expressar a intenção da organização em cumprir com as obrigações pertinentes à segurança da informação.
- c) Que a organização pode escolher quais requisitos aplicar.

✅ **Resposta correta:** b) Que a política deve expressar a intenção da organização em cumprir com as obrigações pertinentes à segurança da informação.

**Justificativa**
A cláusula 5.2 b) exige que a política inclua o comprometimento em satisfazer os requisitos aplicáveis relacionados com a segurança da informação. Trata-se de uma declaração de intenção e compromisso de alto nível — a política expressa a postura da organização perante suas obrigações (legais, regulatórias, contratuais, de partes interessadas), sem precisar listar cada requisito individualmente, o que seria função de registros e controles operacionais específicos (por exemplo, um inventário de requisitos legais, ligado ao controle 5.31 do Anexo A).

**Por que as demais estão incorretas?**
- a) Listar exaustivamente todos os requisitos legais e regulamentares não é papel da política (documento de alto nível e conciso), mas de registros de conformidade específicos mantidos separadamente.
- c) A ideia de "escolher quais requisitos aplicar" contraria a própria noção de "requisitos aplicáveis" — a aplicabilidade decorre da natureza legal/contratual/regulatória do requisito, não de uma escolha discricionária da organização.

**Dica para a prova ISO 27001**
A política declara compromisso; ela não é o lugar de listas operacionais detalhadas. Fique atento a alternativas que tentam transformar a política em um documento operacional extenso.

**Resumo para memorização**
A política diz "nos comprometemos a cumprir" — os registros específicos dizem "o quê", exatamente.

---

## Questão 28

**Enunciado:** Cenário 12: A "DataSafe Analytics" está avaliando riscos e oportunidades para seu SGSI.

28. Ao planejar as ações para abordar riscos e oportunidades (Seção 6.1.1), a "DataSafe Analytics" deve considerar principalmente qual objetivo?

- a) Reduzir os custos de implementação de controles de segurança.
- b) Assegurar que o SGSI possa alcançar seus resultados pretendidos, prevenir ou reduzir efeitos indesejados e alcançar a melhoria contínua.
- c) Identificar apenas as ameaças externas que a organização enfrenta.

✅ **Resposta correta:** b) Assegurar que o SGSI possa alcançar seus resultados pretendidos, prevenir ou reduzir efeitos indesejados e alcançar a melhoria contínua.

**Justificativa**
A cláusula 6.1.1 estabelece que, ao planejar o SGSI, a organização deve considerar as questões referidas em 4.1 e os requisitos referidos em 4.2, e determinar os riscos e oportunidades que precisam ser abordados para: assegurar que o SGSI possa alcançar seu(s) resultado(s) pretendido(s); prevenir ou reduzir efeitos indesejados; e alcançar a melhoria contínua. Esse é o propósito central do planejamento baseado em risco em toda a estrutura de Anexo SL.

**Por que as demais estão incorretas?**
- a) Redução de custos pode ser uma consequência de um bom planejamento, mas não é o objetivo estabelecido pela cláusula 6.1.1 — o foco da norma é a eficácia do SGSI e a gestão de riscos, não a economia financeira em si.
- c) A cláusula 6.1.1 trata de riscos e oportunidades de forma ampla (não apenas ameaças) e não se limita a fatores externos — inclui também questões internas (4.1) que podem gerar riscos ou oportunidades.

**Dica para a prova ISO 27001**
Grave a tríade de objetivos da cláusula 6.1.1: (1) alcançar resultados pretendidos do SGSI; (2) prevenir/reduzir efeitos indesejados; (3) alcançar melhoria contínua. É clássica em provas de certificação.

**Resumo para memorização**
6.1.1 não é só sobre ameaças — é sobre garantir que o SGSI funcione, evite problemas e sempre melhore.

---

## Questão 29

**Enunciado:** Cenário 12: A "DataSafe Analytics" está avaliando riscos e oportunidades para seu SGSI.

29. A "DataSafe Analytics" deve "estabelecer e manter critérios para realizar as avaliações de riscos de segurança da informação" (Seção 6.1.2 a) 2)). Qual a importância disso?

- a) Para garantir que as avaliações de risco sejam feitas de forma rápida e informal.
- b) Para assegurar que as avaliações de riscos produzam resultados comparáveis, válidos e consistentes.
- c) Para que a organização não precise documentar o processo de avaliação de riscos.

✅ **Resposta correta:** b) Para assegurar que as avaliações de riscos produzam resultados comparáveis, válidos e consistentes.

**Justificativa**
A cláusula 6.1.2 exige que a organização defina e aplique um processo de avaliação de riscos que estabeleça e mantenha critérios de risco (incluindo critérios de aceitação de risco e critérios para realizar avaliações), e assegure que avaliações de riscos repetidas produzam resultados consistentes, válidos e comparáveis. Sem critérios claros e estáveis, cada avaliação poderia ser feita de forma subjetiva e não comparável ao longo do tempo, comprometendo a gestão de riscos como um processo confiável e contínuo.

**Por que as demais estão incorretas?**
- a) A definição de critérios não visa tornar o processo "rápido e informal" — pelo contrário, visa dar rigor e consistência metodológica, o que normalmente exige formalização (não informalidade).
- c) A norma exige justamente o oposto: reter informação documentada sobre o processo de avaliação de riscos (cláusula 6.1.2, alimentando o 7.5) como evidência de que ele foi executado de forma sistemática.

**Dica para a prova ISO 27001**
Associe "critérios de risco" a consistência, comparabilidade e repetibilidade — são as palavras-chave literais da cláusula 6.1.2 a) 2), muito cobradas em prova.

**Resumo para memorização**
Sem critérios fixos, não há como comparar riscos de um ano para o outro — critério dá consistência à avaliação.

---

## Questão 30

**Enunciado:** Cenário 13: A "HealthCloud Services" está elaborando sua Declaração de Aplicabilidade (SoA).

30. A Declaração de Aplicabilidade (SoA) da "HealthCloud Services" (Seção 6.1.3 d)) deve conter, entre outros, "se os controles necessários são implementados ou não". O que isso indica?

- a) Apenas uma lista de controles que a organização pretende implementar no futuro.
- b) O status atual de implementação de cada controle selecionado.
- c) Uma lista de controles que a organização decidiu não implementar.

✅ **Resposta correta:** b) O status atual de implementação de cada controle selecionado.

**Justificativa**
A cláusula 6.1.3 d) exige que o SoA contenha os controles necessários (determinados em 6.1.3 b e c), a justificativa para sua inclusão, se estão implementados ou não, e a justificativa para exclusões de controles do Anexo A. A indicação "implementado ou não" retrata o status real e atual da implementação de cada controle selecionado, funcionando como uma fotografia do estado do SGSI em um dado momento — essencial para auditorias e para o próprio planejamento de implementação.

**Por que as demais estão incorretas?**
- a) O SoA não é apenas uma lista de intenções futuras — ele reflete tanto controles já implementados quanto os planejados, com status claro para cada um, não uma lista genérica de planos.
- c) A lista de exclusões com justificativa é apenas uma parte do SoA; o documento completo abrange todos os controles considerados (incluídos e excluídos), com status de implementação para os incluídos — não é restrito apenas ao que foi excluído.

**Dica para a prova ISO 27001**
Memorize os quatro elementos obrigatórios do SoA (6.1.3 d): (1) controles necessários; (2) justificativa de inclusão; (3) se estão implementados ou não; (4) justificativa de exclusão de controles do Anexo A.

**Resumo para memorização**
SoA é retrato completo: o que foi escolhido, por quê, se já está implementado, e o que ficou de fora e por quê.

---

## Questão 31

**Enunciado:** Cenário 13: A "HealthCloud Services" está elaborando sua Declaração de Aplicabilidade (SoA).

31. A Alta Direção da "HealthCloud Services" precisa aprovar o plano de tratamento de riscos da segurança da informação e a aceitação dos riscos residuais (Seção 6.1.3 f)). Qual o propósito dessa aprovação?

- a) Apenas para que a alta direção seja informada, sem responsabilidade.
- b) Garante que os riscos residuais sejam aceitos e que o plano de tratamento seja endossado pelos proprietários dos riscos e pela alta direção.
- c) Para que a organização possa evitar a responsabilidade por incidentes futuros.

✅ **Resposta correta:** b) Garante que os riscos residuais sejam aceitos e que o plano de tratamento seja endossado pelos proprietários dos riscos e pela alta direção.

**Justificativa**
A cláusula 6.1.3 exige que a organização obtenha a aprovação dos proprietários dos riscos quanto ao plano de tratamento de riscos e a aceitação dos riscos residuais de segurança da informação. Isso formaliza uma decisão consciente e com responsabilidade sobre riscos que permanecerão após a aplicação dos controles (risco residual) — não se trata de simples "informe", mas de uma aprovação com peso decisório e accountability real dos proprietários dos riscos e, no nível estratégico, da Alta Direção.

**Por que as demais estão incorretas?**
- a) A aprovação não é passiva ("apenas informar sem responsabilidade") — pelo contrário, ela atribui responsabilidade formal pela aceitação do risco residual a quem aprova.
- c) A aprovação formal do risco residual não serve para "evitar responsabilidade por incidentes futuros" — ao contrário, ela documenta e reforça a responsabilidade dos proprietários do risco pela decisão tomada, o que pode inclusive ser usado para prestação de contas em caso de incidente.

**Dica para a prova ISO 27001**
Associe sempre "proprietário do risco" (risk owner) a responsabilidade e autoridade para aceitar riscos residuais — esse é um conceito central da cláusula 6.1.2/6.1.3 e aparece com frequência disfarçado em diferentes questões.

**Resumo para memorização**
Aprovar risco residual é assumir responsabilidade por ele — não é "dar ciência" apenas.

---

## Questão 32

**Enunciado:** Cenário 14: A "Sistemas Digitais" está planejando as mudanças em seu SGSI.

32. Quando a "Sistemas Digitais" determinar a necessidade de mudanças no SGSI, como essas mudanças devem ser conduzidas, conforme a Seção 6.3?

- a) De forma urgente e sem planejamento detalhado.
- b) De uma forma planejada, com controle e consideração de impactos.
- c) Por meio de discussões informais entre os funcionários impactados.

✅ **Resposta correta:** b) De uma forma planejada, com controle e consideração de impactos.

**Justificativa**
A cláusula 6.3 (Planejamento de mudanças), introduzida como novidade na versão 2022 da norma, exige que, quando a organização determinar a necessidade de mudanças no SGSI, essas mudanças sejam realizadas de maneira planejada. Isso implica avaliar propósito e possíveis consequências das mudanças, integridade do SGSI, disponibilidade de recursos e alocação/realocação de responsabilidades e autoridades antes de implementá-las — um processo controlado de gestão de mudanças (change management), evitando impactos negativos não avaliados.

**Por que as demais estão incorretas?**
- a) Mudanças "urgentes e sem planejamento" contrariam diretamente o texto da cláusula 6.3, que exige justamente que as mudanças sejam conduzidas de forma planejada.
- c) Discussões informais entre funcionários impactados não substituem um processo formal e controlado de gestão de mudanças, que deve considerar impactos sistêmicos no SGSI, recursos e responsabilidades — não apenas percepções informais das pessoas diretamente envolvidas.

**Dica para a prova ISO 27001**
A cláusula 6.3 é uma das principais novidades da versão 2022 em relação à versão 2013 — provas atualizadas adoram testá-la. Decore que ela trata de mudanças planejadas no SGSI, com atenção a propósito, consequências, integridade do sistema, recursos e responsabilidades.

**Resumo para memorização**
Mudança no SGSI não é "no improviso" — 6.3 exige planejamento formal, novidade da versão 2022.

---

## Questão 33

**Enunciado:** Cenário 14: A "Sistemas Digitais" está planejando as mudanças em seu SGSI.

33. A política de segurança da informação da "Sistemas Digitais" (Seção 5.2) deve "fornecer a estrutura para estabelecer os objetivos de segurança da informação". O que isso significa?

- a) A política deve definir os objetivos de segurança da informação de forma explícita.
- b) A política deve estabelecer as diretrizes e os princípios a partir dos quais os objetivos de segurança serão desenvolvidos.
- c) Os objetivos de segurança da informação são independentes da política.

✅ **Resposta correta:** b) A política deve estabelecer as diretrizes e os princípios a partir dos quais os objetivos de segurança serão desenvolvidos.

**Justificativa**
A cláusula 5.2 a) prevê duas possibilidades alternativas: a política pode incluir os objetivos de segurança da informação diretamente, OU fornecer a estrutura (framework) para o estabelecimento desses objetivos. Quando a segunda opção é adotada, a política funciona como um guia principiológico — estabelece diretrizes gerais que orientarão a definição posterior de objetivos específicos, mensuráveis e alinhados ao contexto (cláusula 6.2), sem necessariamente listar os objetivos em si dentro do próprio texto da política.

**Por que as demais estão incorretas?**
- a) A norma não exige que a política defina os objetivos de forma explícita e obrigatória — essa é apenas uma das duas alternativas previstas (a outra sendo fornecer a estrutura, que é justamente a opção descrita no enunciado).
- c) Objetivos e política nunca são independentes: a cláusula 6.2 exige explicitamente que os objetivos sejam consistentes com a política, mesmo quando ela apenas fornece a "estrutura" (framework) e não os objetivos propriamente ditos.

**Dica para a prova ISO 27001**
Fique atento à dualidade da cláusula 5.2 a): política pode "incluir objetivos" OU "fornecer estrutura para estabelecê-los" — são dois caminhos válidos, e a prova gosta de testar se você reconhece essa segunda opção sem confundi-la com ausência de relação.

**Resumo para memorização**
A política pode ser o "guarda-chuva" de princípios sob o qual os objetivos específicos nascem.

---

## Questão 34

**Enunciado:** Cenário 15: A "InfraSecure Tech" está implementando seu SGSI e focando nos recursos e na competência do pessoal.

34. A "InfraSecure Tech" deve determinar e prover os recursos necessários (Seção 7.1) para estabelecer, implementar, manter e melhorar continuamente o SGSI. Quais são os recursos essenciais?

- a) Apenas o software de segurança e o hardware de rede.
- b) Pessoal competente, infraestrutura, ambiente, tecnologia e recursos financeiros.
- c) Um programa de treinamento anual para todos os funcionários.

✅ **Resposta correta:** b) Pessoal competente, infraestrutura, ambiente, tecnologia e recursos financeiros.

**Justificativa**
A cláusula 7.1 exige que a organização determine e proveja os recursos necessários para o SGSI de forma ampla — a norma não restringe o conceito de "recursos" a um único tipo. Na prática (e conforme orientações complementares de implementação), isso abrange pessoas competentes, infraestrutura física e tecnológica, ambiente de trabalho adequado e recursos financeiros/orçamentários, todos necessários para sustentar o ciclo completo de estabelecer, implementar, manter e melhorar o sistema.

**Por que as demais estão incorretas?**
- a) Restringir recursos a "software e hardware" é uma visão estritamente tecnológica, incompatível com a amplitude da cláusula 7.1, que trata de recursos organizacionais em sentido pleno (incluindo pessoas e orçamento).
- c) Um programa de treinamento é um exemplo pontual de ação de competência (cláusula 7.2), não a definição abrangente de "recursos" exigida na cláusula 7.1 — é apenas uma manifestação específica, entre muitas outras, do provimento de recursos.

**Dica para a prova ISO 27001**
A cláusula 7.1 (Recursos) é propositalmente genérica e ampla — desconfie de alternativas que a reduzem a apenas um tipo de recurso (só tecnológico, só treinamento, só financeiro).

**Resumo para memorização**
Recursos = pessoas + infraestrutura + tecnologia + ambiente + dinheiro, tudo junto, não uma coisa só.

---

## Questão 35

**Enunciado:** Cenário 15: A "InfraSecure Tech" está implementando seu SGSI e focando nos recursos e na competência do pessoal.

35. Para garantir a "competência" do pessoal (Seção 7.2), a "InfraSecure Tech" deve:

- a) Contratar apenas funcionários com certificações de segurança da informação.
- b) Assegurar que as pessoas são competentes com base em educação, treinamento ou experiência, e tomar ações para adquirir essa competência.
- c) Realizar testes de QI para todos os novos contratados.

✅ **Resposta correta:** b) Assegurar que as pessoas são competentes com base em educação, treinamento ou experiência, e tomar ações para adquirir essa competência.

**Justificativa**
A cláusula 7.2 exige que a organização determine a competência necessária das pessoas que realizam trabalho sob seu controle e que afeta o desempenho da segurança da informação, assegure que essas pessoas são competentes com base em educação, treinamento ou experiência apropriados, e, quando aplicável, tome ações para adquirir a competência necessária e avalie a eficácia dessas ações, retendo informação documentada como evidência.

**Por que as demais estão incorretas?**
- a) Exigir certificações formais de segurança da informação para todos é mais restritivo do que a norma pede — a cláusula 7.2 aceita educação, treinamento OU experiência, sem exigir certificações específicas como único caminho válido.
- c) Testes de QI não são um critério previsto pela norma para avaliar competência — a cláusula foca em competência técnica e funcional relacionada às tarefas de segurança da informação, não em aptidão intelectual geral.

**Dica para a prova ISO 27001**
Decore o "tripé" da competência na cláusula 7.2: educação, treinamento ou experiência (não é preciso ter os três — basta uma base apropriada), seguido de ações corretivas quando há lacuna e avaliação da eficácia dessas ações.

**Resumo para memorização**
Competência vem de educação, treinamento OU experiência — e precisa de evidência documentada.

---

## Questão 36

**Enunciado:** Cenário 16: A "Documenta Fácil Ltda." está implementando seu SGSI, com foco na gestão da informação documentada.

36. Ao criar e atualizar a informação documentada (Seção 7.5.2), a "Documenta Fácil Ltda." deve assegurar, de forma apropriada:

- a) Que todos os documentos sejam impressos em papel timbrado da empresa.
- b) Identificação e descrição (título, data, autor), formato e meio, e análise crítica e aprovação para pertinência e adequação.
- c) Que a informação documentada seja acessível apenas à alta direção, em formato digital.

✅ **Resposta correta:** b) Identificação e descrição (título, data, autor), formato e meio, e análise crítica e aprovação para pertinência e adequação.

**Justificativa**
A cláusula 7.5.2 estabelece que, ao criar e atualizar a informação documentada, a organização deve assegurar identificação e descrição apropriadas (por exemplo, um título, data, autor ou número de referência), formato apropriado (idioma, versão de software, gráficos) e meio (papel, eletrônico), e análise crítica e aprovação quanto à pertinência (adequação ao propósito) e adequação (suficiência de detalhe). Esses são os três pilares formais de controle na criação/atualização documental.

**Por que as demais estão incorretas?**
- a) A norma é agnóstica de meio/formato — não exige papel timbrado nem qualquer suporte físico específico; documentos eletrônicos são plenamente aceitos e, na prática, predominantes.
- c) Restringir acesso apenas à Alta Direção contraria o próprio propósito da informação documentada, que deve estar disponível a quem precisa dela para operar o SGSI (cláusula 7.5.3), respeitando controles de confidencialidade apropriados, não uma restrição indiscriminada a um único grupo.

**Dica para a prova ISO 27001**
Diferencie 7.5.2 (criar/atualizar: identificação, formato, análise crítica/aprovação) de 7.5.3 (controle: disponibilidade, proteção, distribuição, retenção, disposição). São etapas complementares do ciclo de vida documental.

**Resumo para memorização**
Criar/atualizar documento = identificar bem, formatar direito e ser revisado/aprovado antes de valer.

---

## Questão 37

**Enunciado:** Cenário 16: A "Documenta Fácil Ltda." está implementando seu SGSI, com foco na gestão da informação documentada.

37. O controle da informação documentada (Seção 7.5.3) para a "Documenta Fácil Ltda." deve assegurar que ela esteja:

- a) Guardada em um cofre, com acesso limitado a poucos indivíduos.
- b) Disponível e adequada para o uso, onde e quando necessário, e protegida adequadamente.
- c) Publicada em um portal interno sem controle de versão ou acesso.

✅ **Resposta correta:** b) Disponível e adequada para o uso, onde e quando necessário, e protegida adequadamente.

**Justificativa**
A cláusula 7.5.3 exige que a informação documentada requerida pelo SGSI e pela norma seja controlada para assegurar que esteja disponível e adequada para uso, onde e quando for necessária, e que esteja adequadamente protegida (por exemplo, contra perda de confidencialidade, uso impróprio ou perda de integridade). Isso equilibra dois objetivos aparentemente opostos: acesso facilitado a quem precisa e proteção contra acesso indevido ou perda.

**Por que as demais estão incorretas?**
- a) Um "cofre" com acesso extremamente limitado pode comprometer a disponibilidade exigida — a informação precisa estar acessível a quem dela necessita para operar o SGSI, e não trancada a ponto de inviabilizar seu uso legítimo.
- c) Publicar sem controle de versão ou acesso viola diretamente a exigência de proteção adequada e de controle de distribuição/acesso/recuperação/uso prevista na cláusula 7.5.3 b), abrindo espaço para uso de versões desatualizadas ou acesso indevido.

**Dica para a prova ISO 27001**
7.5.3 equilibra disponibilidade + proteção — a resposta certa quase sempre contempla os dois lados (acesso adequado E proteção adequada), enquanto distratores pecam por exagerar em um dos extremos (fechado demais ou aberto demais).

**Resumo para memorização**
Documento controlado = acessível a quem precisa, protegido de quem não deve ver ou alterar.

---

## Questão 38

**Enunciado:** Cenário 17: A "Gestão de Ativos Digitais" está implementando controles organizacionais do Anexo A.

38. O Controle 5.9 do Anexo A exige um "Inventário de informações e outros ativos associados". Qual o objetivo deste inventário para a "Gestão de Ativos Digitais"?

- a) Apenas para fins contábeis e fiscais da empresa.
- b) Desenvolver e manter um inventário completo de informações e ativos, incluindo seus proprietários.
- c) Registrar apenas os ativos de hardware, ignorando informações.

✅ **Resposta correta:** b) Desenvolver e manter um inventário completo de informações e ativos, incluindo seus proprietários.

**Justificativa**
O controle 5.9 do Anexo A (tema Organizacional) tem como objetivo identificar as informações e outros ativos associados da organização, de modo a preservar sua segurança e atribuir a propriedade adequada. Isso implica desenvolver e manter um inventário abrangente, que cubra ativos de informação de qualquer natureza (dados, sistemas, dispositivos, serviços) e identifique claramente quem é o proprietário responsável por cada um — condição essencial para uma gestão de riscos eficaz, já que não se protege (nem se avalia risco de) o que não se conhece.

**Por que as demais estão incorretas?**
- a) O inventário do controle 5.9 tem propósito de segurança da informação (base para avaliação de riscos, classificação e controle de acesso), não é um instrumento contábil-fiscal — embora possa haver sobreposição parcial com ativos patrimoniais, esse não é o objetivo do controle.
- c) O controle trata de "informações e outros ativos associados" de forma ampla — não apenas hardware, mas também dados, software, serviços e até ativos intangíveis; restringir a hardware contraria explicitamente o escopo do controle.

**Dica para a prova ISO 27001**
Sempre associe o controle 5.9 a "inventário + proprietário do ativo" — esses dois elementos (o quê e quem é responsável) são o núcleo do controle e aparecem com frequência juntos nas provas.

**Resumo para memorização**
Não dá para proteger o que não se sabe que existe: inventário com dono definido é a base de tudo.

---

## Questão 39

**Enunciado:** Cenário 17: A "Gestão de Ativos Digitais" está implementando controles organizacionais do Anexo A.

39. O Controle 5.10 do Anexo A aborda o "Uso aceitável de informações e outros ativos associados". O que a "Gestão de Ativos Digitais" deve implementar?

- a) Uma política flexível que permite qualquer uso, desde que não haja dano intencional.
- b) Regras e procedimentos para o uso aceitável e manuseio de informações e ativos.
- c) Uma proibição total de uso de ativos pessoais para fins de trabalho.

✅ **Resposta correta:** b) Regras e procedimentos para o uso aceitável e manuseio de informações e ativos.

**Justificativa**
O controle 5.10 tem como objetivo assegurar que a informação e outros ativos associados sejam adequadamente protegidos, usados e manuseados. Para isso, exige que regras para o uso aceitável e procedimentos de manuseio de informações e outros ativos associados sejam identificados, documentados e implementados, com base na classificação da informação (ligada ao controle 5.12) e considerando os riscos envolvidos.

**Por que as demais estão incorretas?**
- a) Uma política "flexível que permite qualquer uso" (desde que sem dano intencional) contraria o propósito do controle, que é justamente estabelecer regras claras de uso aceitável, incluindo restrições para usos não intencionais mas arriscados (ex.: uso indevido de dados por descuido, não apenas por má-fé).
- c) A norma não exige proibição total de dispositivos pessoais (BYOD) — o que se exige são regras específicas para o uso aceitável, que podem, dependendo do risco, permitir o uso de ativos pessoais sob condições controladas (não uma proibição categórica e universal).

**Dica para a prova ISO 27001**
O controle 5.10 é frequentemente conectado ao 5.9 (inventário) e ao 5.12 (classificação): sem saber o que se tem e como está classificado, não dá para definir regras de uso aceitável coerentes.

**Resumo para memorização**
Uso aceitável = regras claras e documentadas, nem liberdade total, nem proibição total.

---

## Questão 40

**Enunciado:** Cenário 17: A "Gestão de Ativos Digitais" está implementando controles organizacionais do Anexo A.

40. O Controle 5.12 do Anexo A exige a "Classificação das informações". Como a "Gestão de Ativos Digitais" deve classificar suas informações?

- a) Exclusivamente como "dados públicos" ou "dados restritos".
- b) De acordo com as necessidades de segurança da informação da organização, baseadas na confidencialidade, integridade, disponibilidade e requisitos das partes interessadas relevantes.
- c) Pelo volume de armazenamento que a informação ocupa.

✅ **Resposta correta:** b) De acordo com as necessidades de segurança da informação da organização, baseadas na confidencialidade, integridade, disponibilidade e requisitos das partes interessadas relevantes.

**Justificativa**
O controle 5.12 exige que a informação seja classificada de acordo com as necessidades de segurança da informação da organização, com base em confidencialidade, integridade, disponibilidade e requisitos de partes interessadas relevantes. Não há um esquema fixo imposto pela norma (como apenas "público/restrito") — cada organização define seu próprio esquema de classificação (por exemplo, público, interno, confidencial, restrito), proporcional aos riscos e necessidades específicas do negócio.

**Por que as demais estão incorretas?**
- a) Restringir a apenas duas categorias fixas ("público" ou "restrito") é uma simplificação que a norma não impõe — o esquema de classificação deve ser definido pela organização conforme suas necessidades reais, podendo (e geralmente devendo) ter mais níveis intermediários.
- c) Classificar pelo "volume de armazenamento" não tem relação com o propósito do controle, que é proteger a informação de acordo com sua sensibilidade e criticidade (CID), não com seu tamanho em bytes.

**Dica para a prova ISO 27001**
Classificação da informação (5.12) sempre remete aos pilares CID + necessidades das partes interessadas — não a critérios técnicos irrelevantes como tamanho de arquivo ou tipo de mídia.

**Resumo para memorização**
Classifica-se pela sensibilidade da informação (CID), não pelo espaço que ela ocupa em disco.

---

## Questão 41

**Enunciado:** Cenário 18: A "Recursos Humanos Seguros" está implementando controles de pessoas do Anexo A.

41. O Controle 6.2 do Anexo A trata dos "Termos e condições de contratação". O que deve ser declarado nos contratos de trabalho?

- a) Apenas o salário e os benefícios do pessoal.
- b) As responsabilidades do pessoal e da organização para a segurança da informação.
- c) A lista completa de controles de segurança que o funcionário deve seguir.

✅ **Resposta correta:** b) As responsabilidades do pessoal e da organização para a segurança da informação.

**Justificativa**
O controle 6.2 (tema Pessoas) exige que os acordos contratuais de trabalho declarem as responsabilidades do pessoal e da organização para a segurança da informação. Isso formaliza, desde o início do vínculo, o compromisso de ambas as partes com práticas de segurança (como confidencialidade, uso aceitável, cumprimento de políticas), servindo de base legal para exigibilidade de condutas e, se necessário, ações disciplinares.

**Por que as demais estão incorretas?**
- a) Salário e benefícios são cláusulas contratuais trabalhistas comuns, mas não são o foco do controle 6.2, que trata especificamente de responsabilidades relacionadas à segurança da informação.
- c) O controle não exige que o contrato de trabalho traga a "lista completa" de controles técnicos de segurança (isso seria função de políticas e procedimentos específicos) — o contrato declara responsabilidades gerais, remetendo a políticas detalhadas à parte.

**Dica para a prova ISO 27001**
O tema Pessoas do Anexo A (controles 6.1 a 6.8) trata do ciclo de vida do vínculo com colaboradores: antes (6.1 - triagem), durante (6.2, 6.3 conscientização, 6.4 disciplinar) e depois (6.5 - responsabilidades pós-encerramento). Associe cada controle à fase certa desse ciclo.

**Resumo para memorização**
O contrato declara "quem é responsável por quê" em segurança — não substitui políticas detalhadas.

---

## Questão 42

**Enunciado:** Cenário 18: A "Recursos Humanos Seguros" está implementando controles de pessoas do Anexo A.

42. O Controle 6.4 do Anexo A, "Processo disciplinar", exige que a "Recursos Humanos Seguros" tenha um processo formalizado e comunicado para que finalidade?

- a) Para premiar os funcionários que seguem as políticas de segurança.
- b) Para tomar ações contra o pessoal e outras partes interessadas que violarem a política da segurança da informação.
- c) Para registrar todas as reclamações dos funcionários contra as políticas.

✅ **Resposta correta:** b) Para tomar ações contra o pessoal e outras partes interessadas que violarem a política da segurança da informação.

**Justificativa**
O controle 6.4 exige que um processo disciplinar seja formalizado e comunicado, a fim de tomar ações contra o pessoal e outras partes interessadas relevantes que tenham cometido uma violação da política de segurança da informação. Esse processo deve ser justo, proporcional e considerar fatores como natureza e gravidade da violação, seu impacto, se é uma primeira ou repetida ocorrência, entre outros — funcionando como mecanismo de dissuasão e responsabilização (accountability).

**Por que as demais estão incorretas?**
- a) O controle 6.4 trata de ação disciplinar diante de violações, não de mecanismos de reconhecimento ou premiação por boas práticas — isso seria outro tipo de iniciativa de cultura organizacional, fora do escopo específico deste controle.
- c) O foco do controle não é "registrar reclamações de funcionários contra as políticas", mas sim conduzir um processo formal quando o próprio pessoal viola a política de segurança — a direção do processo é inversa à descrita na alternativa.

**Dica para a prova ISO 27001**
Processo disciplinar (6.4) deve ser formal, comunicado a todos (efeito dissuasório) e aplicado com proporcionalidade e justiça — não é punição arbitrária nem sistema de reclamações.

**Resumo para memorização**
6.4 é o "e se alguém violar a política?" — resposta formal, justa e comunicada previamente.

---

## Questão 43

**Enunciado:** Cenário 18: A "Recursos Humanos Seguros" está implementando controles de pessoas do Anexo A.

43. O Controle 6.5 do Anexo A aborda as "Responsabilidades após encerramento ou mudança da contratação". O que a "Recursos Humanos Seguros" deve fazer?

- a) Desconsiderar as responsabilidades de segurança após o término do vínculo empregatício.
- b) Definir, aplicar e comunicar as responsabilidades de segurança da informação que permaneçam válidas.
- c) Apenas garantir a devolução de equipamentos da empresa.

✅ **Resposta correta:** b) Definir, aplicar e comunicar as responsabilidades de segurança da informação que permaneçam válidas.

**Justificativa**
O controle 6.5 exige que as responsabilidades e obrigações de segurança da informação que permaneçam válidas após o encerramento ou a mudança da contratação sejam definidas, aplicadas e comunicadas ao pessoal e a outras partes interessadas relevantes. Exemplos típicos incluem obrigações de confidencialidade que sobrevivem ao fim do contrato, revogação de acessos e devolução de ativos — mas o núcleo do controle é a continuidade de certas obrigações mesmo após o desligamento.

**Por que as demais estão incorretas?**
- a) Contraria diretamente o propósito do controle: certas responsabilidades de segurança (como sigilo sobre informações confidenciais aprendidas durante o vínculo) permanecem válidas mesmo após o encerramento, não podendo ser simplesmente descartadas.
- c) A devolução de equipamentos é apenas um exemplo de ação prática associada ao offboarding, mas não esgota o escopo do controle, que trata de responsabilidades de segurança em sentido mais amplo (confidencialidade, propriedade intelectual, revogação de acesso etc.), não apenas ativos físicos.

**Dica para a prova ISO 27001**
6.5 lida com o "pós-desligamento": pense em cláusulas de confidencialidade que continuam valendo, revogação de credenciais, e comunicação clara ao ex-colaborador sobre o que ainda se espera dele.

**Resumo para memorização**
Sair da empresa não apaga todas as obrigações de segurança — algumas seguem valendo.

---

## Questão 44

**Enunciado:** Cenário 19: A "Segurança Física e Lógica" está implementando controles físicos e tecnológicos do Anexo A.

44. O Controle 7.1 do Anexo A, "Perímetros de segurança física", deve ser usado para:

- a) Criar zonas de acesso restrito apenas para a alta direção.
- b) Proteger áreas que contenham informações e outros ativos associados contra acessos não autorizados.
- c) Apenas para fins de estética e organização do ambiente de trabalho.

✅ **Resposta correta:** b) Proteger áreas que contenham informações e outros ativos associados contra acessos não autorizados.

**Justificativa**
O controle 7.1 (tema Físico) exige que perímetros de segurança sejam definidos e usados para proteger áreas que contenham informação e outros ativos associados. O objetivo é prevenir acesso físico não autorizado, dano e interferência às informações e demais ativos da organização dentro das instalações, por meio de barreiras físicas (paredes, portões, catracas, controles de acesso) que delimitam zonas de segurança crescente conforme a criticidade da área.

**Por que as demais estão incorretas?**
- a) O controle não se restringe a zonas exclusivas da alta direção — perímetros de segurança física protegem qualquer área com ativos críticos (data centers, arquivos, salas de servidores), independentemente de quem os utilize.
- c) O propósito do controle é claramente de segurança (prevenção de acesso não autorizado, dano ou interferência), não estético ou organizacional — embora um ambiente bem organizado possa ser um efeito colateral positivo, não é o objetivo do controle.

**Dica para a prova ISO 27001**
O tema Físico do Anexo A (controles 7.1 a 7.14) trata de proteção de instalações e equipamentos — associe perímetros (7.1) a "camadas de defesa física" (crachá na portaria, catraca no andar, biometria na sala de servidores).

**Resumo para memorização**
Perímetro físico é a "muralha" que protege os ativos de quem não deveria chegar perto.

---

## Questão 45

**Enunciado:** Cenário 19: A "Segurança Física e Lógica" está implementando controles físicos e tecnológicos do Anexo A.

45. O Controle 7.7 do Anexo A exige "Mesa limpa e tela limpa". O que a "Segurança Física e Lógica" deve definir e aplicar?

- a) Regras de organização geral do ambiente de trabalho, sem impacto na segurança.
- b) Regras de mesa limpa para documentos impressos e mídia removível, e regras de tela limpa para recursos de tratamento de informações.
- c) Uma política que permite deixar documentos confidenciais na mesa para facilitar o trabalho.

✅ **Resposta correta:** b) Regras de mesa limpa para documentos impressos e mídia removível, e regras de tela limpa para recursos de tratamento de informações.

**Justificativa**
O controle 7.7 exige que regras de mesa limpa para papéis e mídias de armazenamento removíveis, e regras de tela limpa para os recursos de tratamento da informação, sejam definidas e adequadamente aplicadas. O objetivo é reduzir riscos de acesso não autorizado, perda e dano à informação em estações de trabalho e áreas de circulação, durante e fora do horário normal de trabalho (por exemplo, bloqueio automático de tela e guarda de documentos sensíveis fora da vista).

**Por que as demais estão incorretas?**
- a) O controle tem impacto direto na segurança da informação (prevenção de exposição visual e furto de dados/documentos) — não é uma regra meramente estética ou de organização do espaço físico.
- c) Permitir deixar documentos confidenciais expostos na mesa é exatamente o oposto do que o controle 7.7 exige — contraria seu propósito central de proteção da informação sensível contra visualização ou acesso não autorizado.

**Dica para a prova ISO 27001**
"Mesa limpa e tela limpa" é um controle clássico e visual — pense em auditor caminhando pelo escritório e encontrando papel confidencial exposto ou tela desbloqueada sem o usuário presente: isso é evidência de não conformidade com o 7.7.

**Resumo para memorização**
Nada de papel sensível à vista ou tela destravada sem ninguém por perto — mesa e tela sempre "limpas".

---

## Questão 46

**Enunciado:** Cenário 19: A "Segurança Física e Lógica" está implementando controles físicos e tecnológicos do Anexo A.

46. O Controle 8.2 do Anexo A trata dos "Direitos de acessos privilegiados". O que a "Segurança Física e Lógica" deve fazer?

- a) Conceder direitos privilegiados a todos os usuários que solicitarem.
- b) Restringir e gerenciar a atribuição e o uso de direitos de acessos privilegiados.
- c) Apenas auditar o uso de acessos privilegiados anualmente.

✅ **Resposta correta:** b) Restringir e gerenciar a atribuição e o uso de direitos de acessos privilegiados.

**Justificativa**
O controle 8.2 (tema Tecnológico) exige que a atribuição e o uso de direitos de acessos privilegiados sejam restritos e gerenciados. Acessos privilegiados (como administradores de sistema, root, DBA) representam um risco elevado por seu alto poder sobre sistemas e dados, exigindo controles como concessão sob o princípio do menor privilégio, aprovação formal, revisão periódica e uso de contas separadas (privilegiada vs. comum) para o mesmo indivíduo.

**Por que as demais estão incorretas?**
- a) Conceder privilégios livremente a quem solicitar é exatamente o oposto do princípio de menor privilégio e da gestão restritiva que o controle exige, aumentando desnecessariamente a superfície de risco.
- c) Uma auditoria apenas anual, isolada, não é suficiente nem representa a exigência central do controle, que é a restrição e gestão contínua (concessão, revisão periódica, revogação) — não uma checagem pontual uma vez por ano.

**Dica para a prova ISO 27001**
Direitos privilegiados (8.2) sempre remetem ao princípio do menor privilégio (least privilege) e à segregação de funções — desconfie de alternativas que falam em conceder acesso amplo "por conveniência" ou "sob demanda sem critério".

**Resumo para memorização**
Quem tem "poder de root" precisa de controle redobrado, não de liberdade total.

---

## Questão 47

**Enunciado:** Cenário 20: A "CyberProtection Solutions" está implementando controles tecnológicos do Anexo A, com foco na proteção contra ameaças.

47. O Controle 8.7 do Anexo A, "Proteção contra malware", exige que a "CyberProtection Solutions":

- a) Confie exclusivamente em sistemas antivírus automáticos.
- b) Implemente proteção contra malware apoiada pela conscientização adequada do usuário.
- c) Bloqueie completamente o acesso à internet em todos os sistemas para evitar malware.

✅ **Resposta correta:** b) Implemente proteção contra malware apoiada pela conscientização adequada do usuário.

**Justificativa**
O controle 8.7 exige que proteção contra malware seja implementada e apoiada por conscientização adequada dos usuários. A norma reconhece que controles puramente técnicos (antivírus, EDR, filtros) não são suficientes isoladamente — o fator humano (reconhecer phishing, evitar downloads suspeitos, seguir boas práticas) é parte essencial da defesa em profundidade contra malware.

**Por que as demais estão incorretas?**
- a) Confiar "exclusivamente" em ferramentas automáticas ignora a exigência explícita do controle de que a proteção técnica seja combinada com conscientização do usuário — uma defesa unicamente tecnológica é insuficiente por si só.
- c) Bloquear completamente o acesso à internet é uma medida extrema e geralmente inviável para a operação do negócio; o controle não exige isolamento total, mas sim uma combinação equilibrada de controles técnicos, procedimentos e conscientização proporcional ao risco.

**Dica para a prova ISO 27001**
Controles tecnológicos do Anexo A frequentemente exigem complementaridade entre tecnologia e pessoas — "ferramenta apoiada por conscientização" é um padrão textual comum em vários controles de tema Tecnológico (ex.: 8.7, phishing, engenharia social).

**Resumo para memorização**
Antivírus sozinho não basta: usuário consciente é parte da defesa contra malware.

---

## Questão 48

**Enunciado:** Cenário 20: A "CyberProtection Solutions" está implementando controles tecnológicos do Anexo A, com foco na proteção contra ameaças.

48. O Controle 8.9 do Anexo A, "Gestão de configuração", exige que as configurações (hardware, software, serviços, redes) sejam:

- a) Definidas e deixadas no padrão de fábrica para simplificar.
- b) Estabelecidas, documentadas, implementadas, monitoradas e analisadas criticamente.
- c) Mantidas secretas para evitar que invasores as explorem.

✅ **Resposta correta:** b) Estabelecidas, documentadas, implementadas, monitoradas e analisadas criticamente.

**Justificativa**
O controle 8.9 exige que as configurações, incluindo configurações de segurança, de hardware, software, serviços e redes, sejam estabelecidas, documentadas, implementadas, monitoradas e analisadas criticamente. O objetivo é assegurar que os sistemas operem de forma segura conforme configurações previstas (baseline seguro), detectando e corrigindo desvios não autorizados que possam introduzir vulnerabilidades.

**Por que as demais estão incorretas?**
- a) Deixar sistemas em configuração padrão de fábrica é uma prática de risco elevado, pois configurações-padrão são amplamente conhecidas (inclusive por atacantes) e geralmente não seguem princípios de hardening — contraria diretamente o propósito do controle.
- c) "Segredo" sobre configurações (segurança por obscuridade) não é o mecanismo de proteção previsto pelo controle 8.9 — a segurança vem de configurações robustas, documentadas e monitoradas, não de ocultação, prática amplamente desaconselhada em segurança da informação.

**Dica para a prova ISO 27001**
O controle 8.9 (gestão de configuração) está ligado ao conceito de baseline de segurança e hardening — associe sempre a documentação e o monitoramento de desvios de configuração, não a "esconder" ou "deixar como veio de fábrica".

**Resumo para memorização**
Configuração segura é documentada e monitorada — nunca "padrão de fábrica" nem "segredo".

---

## Questão 49

**Enunciado:** Cenário 20: A "CyberProtection Solutions" está implementando controles tecnológicos do Anexo A, com foco na proteção contra ameaças.

49. O Controle 8.12 do Anexo A, "Prevenção de vazamento de dados", exige que a "CyberProtection Solutions" faça o quê?

- a) Apenas monitorar a internet para identificar dados vazados.
- b) Aplicar medidas de prevenção de vazamento de dados a sistemas, redes e dispositivos que tratem informações sensíveis.
- c) Aceitar que vazamentos são inevitáveis e focar apenas na resposta.

✅ **Resposta correta:** b) Aplicar medidas de prevenção de vazamento de dados a sistemas, redes e dispositivos que tratem informações sensíveis.

**Justificativa**
O controle 8.12 exige que medidas de prevenção de vazamento de dados sejam aplicadas a sistemas, redes e quaisquer outros dispositivos que processem, armazenem ou transmitam informação sensível. Isso inclui, por exemplo, soluções de DLP (Data Loss Prevention), monitoramento de canais de saída de dados (e-mail, USB, upload), classificação prévia da informação e políticas de restrição de transferência de dados sensíveis para fora do ambiente controlado — uma postura preventiva, não apenas reativa.

**Por que as demais estão incorretas?**
- a) Monitorar apenas a internet em busca de dados já vazados é uma postura reativa (detecção pós-fato), enquanto o controle exige medidas preventivas aplicadas internamente aos sistemas, redes e dispositivos, antes que o vazamento ocorra.
- c) "Aceitar que vazamentos são inevitáveis" contraria frontalmente o propósito do controle, cujo nome já indica "prevenção" — a norma não endossa uma postura de resignação, mas de mitigação proativa do risco de vazamento.

**Dica para a prova ISO 27001**
DLP (8.12) é sobre prevenção, aplicada nos pontos de saída de dados sensíveis (endpoints, e-mail, rede, nuvem) — desconfie de alternativas que descrevem apenas monitoramento externo ou resposta a incidente já ocorrido, pois isso caracterizaria outros controles (ex.: 5.24-5.28, gestão de incidentes).

**Resumo para memorização**
DLP é prevenção na saída dos dados sensíveis — não é só "procurar o que já vazou".

---

## Questão 50

**Enunciado:** Cenário 21: A "Serviços em Nuvem Confiáveis" está gerenciando a operação do SGSI.

50. A ABNT NBR ISO/IEC 27001:2022 (Seção 8.1) exige que a "Serviços em Nuvem Confiáveis" planeje, implemente e controle os processos necessários. Isso inclui:

- a) Criar novos processos para cada nova tecnologia implementada.
- b) Estabelecer critérios para os processos e implementar controles de acordo com esses critérios, com informação documentada para gerar confiança.
- c) Apenas documentar os processos existentes, sem criar novos controles.

✅ **Resposta correta:** b) Estabelecer critérios para os processos e implementar controles de acordo com esses critérios, com informação documentada para gerar confiança.

**Justificativa**
A cláusula 8.1 (Planejamento e controle operacionais) exige que a organização planeje, implemente e controle os processos necessários para atender aos requisitos de segurança da informação e para implementar as ações determinadas em 6.1 e 6.2, estabelecendo critérios para esses processos e implementando o controle deles de acordo com esses critérios. Também exige manter informação documentada na extensão necessária para ter confiança de que os processos foram realizados conforme planejado.

**Por que as demais estão incorretas?**
- a) A norma não exige criação de um processo novo a cada nova tecnologia — o que se exige é que os processos existentes (ou adaptados) sejam controlados conforme critérios definidos, e não uma proliferação automática de processos por tecnologia adotada.
- c) A cláusula 8.1 não se limita a "documentar o que já existe" sem intervenção — ela exige planejamento, implementação e controle ativos dos processos, com critérios estabelecidos e evidências de execução conforme planejado, o que pode envolver criação de novos controles quando necessário.

**Dica para a prova ISO 27001**
A cláusula 8.1 é a "cláusula de execução operacional" do PDCA — associe-a a: planejar → implementar → controlar → documentar evidências de que tudo ocorreu conforme planejado.

**Resumo para memorização**
Operação (8.1) é colocar o plano em prática, com critérios definidos e evidências de que funcionou como planejado.

---

## Questão 51

**Enunciado:** Cenário 21: A "Serviços em Nuvem Confiáveis" está gerenciando a operação do SGSI.

51. A "Serviços em Nuvem Confiáveis" deve realizar avaliações de riscos da segurança da informação a intervalos planejados, ou quando mudanças significativas ocorrerem (ABNT NBR ISO/IEC 27001:2022, 8.2). Qual o objetivo principal?

- a) Para justificar a compra de novos softwares de segurança.
- b) Para garantir que o SGSI permaneça relevante e eficaz diante de um ambiente de risco em constante mudança.
- c) Para que a organização não precise documentar as mudanças.

✅ **Resposta correta:** b) Para garantir que o SGSI permaneça relevante e eficaz diante de um ambiente de risco em constante mudança.

**Justificativa**
A cláusula 8.2 exige que a organização realize avaliações de riscos de segurança da informação a intervalos planejados ou quando mudanças significativas forem propostas ou ocorrerem, retendo informação documentada dos resultados. O objetivo é assegurar que o panorama de riscos seja reavaliado periodicamente, já que ameaças, vulnerabilidades e o próprio contexto do negócio mudam continuamente — mantendo o SGSI sempre alinhado à realidade de risco atual, e não apenas à "fotografia" do momento da implementação inicial.

**Por que as demais estão incorretas?**
- a) A reavaliação de riscos não tem como finalidade justificar compras de software — decisões de investimento podem decorrer de uma avaliação, mas não são o objetivo da cláusula, que é a gestão contínua do risco em si.
- c) Pelo contrário, a cláusula 8.2 exige reter informação documentada dos resultados das avaliações de riscos — a documentação é obrigatória, não dispensável.

**Dica para a prova ISO 27001**
Diferencie 6.1.2 (avaliação de riscos no planejamento inicial) de 8.2 (avaliação de riscos operacional/contínua, "a intervalos planejados ou quando mudanças significativas ocorrerem") — ambas usam a mesma metodologia definida, mas em momentos diferentes do ciclo de vida do SGSI.

**Resumo para memorização**
Risco não é estático: reavaliar periodicamente mantém o SGSI vivo e relevante.

---

## Questão 52

**Enunciado:** Cenário 21: A "Serviços em Nuvem Confiáveis" está gerenciando a operação do SGSI.

52. A "Serviços em Nuvem Confiáveis" terceiriza alguns serviços relevantes para o SGSI. O que a Seção 8.1 exige para esses serviços terceirizados?

- a) A responsabilidade pela segurança é inteiramente transferida para o provedor terceirizado.
- b) A organização deve assegurar que esses processos, produtos ou serviços terceirizados sejam controlados.
- c) A organização pode ignorar a segurança desses serviços, pois não estão em sua infraestrutura.

✅ **Resposta correta:** b) A organização deve assegurar que esses processos, produtos ou serviços terceirizados sejam controlados.

**Justificativa**
A cláusula 8.1 determina que a organização deve assegurar que processos, produtos ou serviços terceirizados que sejam relevantes para o SGSI sejam controlados. Isso significa que a responsabilidade final pela segurança da informação permanece com a organização contratante, mesmo quando a execução é delegada a terceiros — o controle pode se dar por meio de contratos, SLAs, cláusulas de segurança, auditorias e monitoramento do desempenho do fornecedor.

**Por que as demais estão incorretas?**
- a) A responsabilidade pela segurança da informação nunca é "inteiramente transferida" a um terceiro — a organização continua responsável perante seu SGSI, suas partes interessadas e a norma, mesmo terceirizando a execução de um processo.
- c) Ignorar a segurança de serviços terceirizados apenas porque "não estão na própria infraestrutura" contraria diretamente a exigência da cláusula 8.1 de que esses processos sejam controlados, e também os controles de relacionamento com fornecedores do Anexo A (tema 5.19 a 5.23).

**Dica para a prova ISO 27001**
Terceirização nunca elimina responsabilidade: a organização contratante continua responsável por garantir que o terceiro proteja adequadamente a informação — esse princípio aparece repetidamente em diferentes cláusulas e controles (8.1, 5.19-5.23).

**Resumo para memorização**
Terceirizar a execução não terceiriza a responsabilidade pela segurança.

---

## Questão 53

**Enunciado:** Cenário 21: A "Serviços em Nuvem Confiáveis" está gerenciando a operação do SGSI.

53. O Controle 5.23 do Anexo A, "Segurança da informação para uso de serviços em nuvem", exige que a "Serviços em Nuvem Confiáveis" estabeleça processos para:

- a) Apenas o uso e o monitoramento dos serviços em nuvem.
- b) Aquisição, uso, gestão e saída de serviços em nuvem, de acordo com os requisitos de segurança da informação.
- c) Apenas garantir que o contrato com o provedor de nuvem contenha cláusulas de segurança.

✅ **Resposta correta:** b) Aquisição, uso, gestão e saída de serviços em nuvem, de acordo com os requisitos de segurança da informação.

**Justificativa**
O controle 5.23 (um dos controles novos da versão 2022) exige que processos de aquisição, uso, gestão e saída de serviços em nuvem sejam estabelecidos de acordo com os requisitos de segurança da informação da organização. Isso cobre todo o ciclo de vida do relacionamento com o provedor de nuvem — desde a due diligence na contratação, passando pela operação e monitoramento contínuo, até a estratégia de saída (exit strategy) e portabilidade/eliminação segura dos dados ao encerrar o serviço.

**Por que as demais estão incorretas?**
- a) Restringir-se a "uso e monitoramento" ignora as fases de aquisição (seleção e contratação segura do provedor) e saída (encerramento seguro do serviço, incluindo devolução ou eliminação de dados), ambas explicitamente exigidas pelo controle.
- c) Cláusulas contratuais de segurança são um dos elementos possíveis, mas o controle vai além de aspectos meramente contratuais — abrange também controles técnicos e de gestão durante o uso efetivo e no encerramento do serviço.

**Dica para a prova ISO 27001**
5.23 é um controle "novo" da versão 2022 e cobre o ciclo de vida completo do serviço em nuvem: aquisição → uso → gestão → saída. Provas recentes adoram testar exatamente essa cobertura de ciclo de vida completo.

**Resumo para memorização**
Nuvem segura cobre da contratação até a saída — não só o "usar no dia a dia".

---

## Questão 54

**Enunciado:** Cenário 22: A "DataInsights Monitoramento" está desenvolvendo seu processo de monitoramento e medição para o SGSI.

54. A ABNT NBR ISO/IEC 27001:2022 (Seção 9.1) exige que a "DataInsights Monitoramento" determine "o que precisa ser monitorado e medido". Isso inclui:

- a) Apenas o número de acessos diários ao sistema.
- b) Controles e processos da segurança da informação, com métodos que produzam resultados válidos.
- c) Somente o feedback dos funcionários sobre a usabilidade dos sistemas.

✅ **Resposta correta:** b) Controles e processos da segurança da informação, com métodos que produzam resultados válidos.

**Justificativa**
A cláusula 9.1 exige que a organização determine o que precisa ser monitorado e medido, incluindo processos e controles de segurança da informação, os métodos de monitoramento, medição, análise e avaliação (assegurando resultados válidos), quando e por quem essas atividades devem ser realizadas, e quando os resultados devem ser analisados e avaliados. É um requisito abrangente de avaliação de desempenho, não restrito a uma única métrica isolada.

**Por que as demais estão incorretas?**
- a) O "número de acessos diários" é apenas um exemplo pontual de métrica possível, mas não representa a abrangência exigida pela cláusula 9.1, que trata do monitoramento sistemático de controles e processos do SGSI como um todo.
- c) Feedback de usabilidade dos funcionários pode ser um insumo pontual, mas não é o foco da cláusula 9.1, que trata da eficácia dos controles e processos de segurança da informação, com métodos que assegurem validade dos resultados obtidos.

**Dica para a prova ISO 27001**
Grave os elementos da cláusula 9.1: o quê monitorar/medir, métodos (com validade garantida), quando, quem, e quando analisar/avaliar os resultados — é basicamente um "5W" aplicado à avaliação de desempenho.

**Resumo para memorização**
9.1 não é sobre uma métrica isolada — é sobre um sistema de monitoramento e medição de todo o SGSI.

---

## Questão 55

**Enunciado:** Cenário 22: A "DataInsights Monitoramento" está desenvolvendo seu processo de monitoramento e medição para o SGSI.

55. Qual o principal objetivo de determinar "quem" deve analisar e avaliar os resultados do monitoramento e medição (Seção 9.1 f))?

- a) Atribuir a responsabilidade para um único indivíduo, independentemente de suas qualificações.
- b) Assegurar que a análise seja realizada por pessoal qualificado e que as decisões possam ser tomadas com base em informações precisas.
- c) Limitar o número de pessoas com acesso aos dados de monitoramento.

✅ **Resposta correta:** b) Assegurar que a análise seja realizada por pessoal qualificado e que as decisões possam ser tomadas com base em informações precisas.

**Justificativa**
A cláusula 9.1 f) exige que a organização determine quem deve analisar e avaliar os resultados do monitoramento e da medição. O propósito de definir claramente esse papel é assegurar que a interpretação dos dados seja feita por pessoas com competência adequada (ligação com a cláusula 7.2), gerando conclusões confiáveis que suportem decisões de gestão de riscos, ações corretivas e melhoria contínua com base em informações precisas e bem fundamentadas.

**Por que as demais estão incorretas?**
- a) A norma não exige que a responsabilidade recaia sobre "um único indivíduo" nem dispensa a necessidade de qualificação — pelo contrário, o propósito é assegurar competência adequada de quem analisa, podendo envolver mais de uma pessoa ou função.
- c) A cláusula 9.1 f) trata de quem realiza a análise dos resultados, não de restrição de acesso aos dados brutos de monitoramento — controle de acesso à informação é tratado por outros controles (por exemplo, do tema Tecnológico do Anexo A), não pela definição de responsáveis pela análise de desempenho.

**Dica para a prova ISO 27001**
Sempre que a norma perguntar "quem" em uma cláusula de gestão, a resposta correta normalmente remete a competência e clareza de papéis/responsabilidades — não a restrição de acesso ou centralização arbitrária em uma única pessoa.

**Resumo para memorização**
Definir "quem analisa" garante que os dados virem decisão confiável, não só números soltos.

---

## Questão 56

**Enunciado:** Cenário 23: A "Auditoria Confiável Ltda." está planejando e executando auditorias internas.

56. A ABNT NBR ISO/IEC 27001:2022 (Seção 9.2.1) estabelece que o propósito das auditorias internas é prover informações sobre:

- a) A conformidade do SGSI apenas com os requisitos de outras normas.
- b) Se o SGSI está em conformidade com os próprios requisitos da organização e os da norma, e se está efetivamente implementado e mantido.
- c) As habilidades de negociação dos auditores internos.

✅ **Resposta correta:** b) Se o SGSI está em conformidade com os próprios requisitos da organização e os da norma, e se está efetivamente implementado e mantido.

**Justificativa**
A cláusula 9.2.1 estabelece que a organização deve conduzir auditorias internas a intervalos planejados para prover informação sobre se o SGSI está em conformidade com os requisitos da própria organização para o seu SGSI e com os requisitos da ISO/IEC 27001:2022, e se está efetivamente implementado e mantido. A auditoria interna é, portanto, um mecanismo de verificação dupla: conformidade normativa (a norma) e conformidade interna (o que a própria organização definiu para si).

**Por que as demais estão incorretas?**
- a) A auditoria interna do SGSI não se limita a "outras normas" — seu foco é a própria ISO/IEC 27001 e os requisitos internos definidos pela organização para seu SGSI, não normas externas de terceiros.
- c) Habilidades de negociação não são objeto de avaliação da auditoria interna do SGSI — o foco é a conformidade e eficácia do sistema de gestão, embora a cláusula 9.2.2 trate de competência e objetividade dos auditores (não de negociação).

**Dica para a prova ISO 27001**
Auditoria interna (9.2) sempre verifica dois níveis de conformidade: (1) requisitos próprios da organização (política, procedimentos internos) e (2) requisitos da norma ISO/IEC 27001 em si — memorize essa dualidade.

**Resumo para memorização**
Auditoria interna checa se o SGSI cumpre a norma E cumpre o que a própria empresa prometeu fazer.

---

## Questão 57

**Enunciado:** Cenário 23: A "Auditoria Confiável Ltda." está planejando e executando auditorias internas.

57. Ao selecionar auditores para as auditorias internas (Seção 9.2.2 b)), a "Auditoria Confiável Ltda." deve assegurar:

- a) Que os auditores sejam os próprios responsáveis pelos processos auditados para maior conhecimento.
- b) A objetividade e imparcialidade do processo de auditoria.
- c) Que os auditores sejam treinados apenas uma vez, sem atualizações.

✅ **Resposta correta:** b) A objetividade e imparcialidade do processo de auditoria.

**Justificativa**
A cláusula 9.2.2 b) exige que a organização selecione auditores e conduza auditorias que assegurem objetividade e a imparcialidade do processo de auditoria. Isso normalmente é operacionalizado exigindo que o auditor não audite seu próprio trabalho (independência funcional), garantindo uma avaliação isenta e não viesada da conformidade e eficácia do SGSI.

**Por que as demais estão incorretas?**
- a) Permitir que responsáveis pelo próprio processo o auditem viola diretamente o princípio de imparcialidade exigido pela cláusula — auditar o próprio trabalho compromete a objetividade da avaliação, um erro clássico de auditoria interna.
- c) A norma não define uma regra de "treinamento único sem atualização" — pelo contrário, a manutenção de competência de auditores (relacionada à cláusula 7.2) é um processo contínuo, especialmente considerando que normas e riscos evoluem ao longo do tempo.

**Dica para a prova ISO 27001**
"Auditor não pode auditar seu próprio trabalho" é uma regra de ouro em qualquer prova de auditoria (ISO 19011 e ISO 27001). Sempre que uma alternativa sugerir isso, é distrator certo.

**Resumo para memorização**
Quem faz o processo não pode ser quem audita o mesmo processo — objetividade em primeiro lugar.

---

## Questão 58

**Enunciado:** Cenário 24: A "GovSec Solutions" está se preparando para a análise crítica pela Direção de seu SGSI.

58. Quais são os principais "inputs" que a Alta Direção da "GovSec Solutions" deve considerar na análise crítica (Seção 9.3.2)?

- a) Apenas o orçamento anual do departamento de TI.
- b) Situação das ações anteriores, mudanças no contexto, feedback de desempenho (não conformidades, monitoramento, auditorias, objetivos), avaliação de riscos e oportunidades de melhoria.
- c) Exclusivamente os relatórios de incidentes de segurança, sem considerar a proatividade.

✅ **Resposta correta:** b) Situação das ações anteriores, mudanças no contexto, feedback de desempenho (não conformidades, monitoramento, auditorias, objetivos), avaliação de riscos e oportunidades de melhoria.

**Justificativa**
A cláusula 9.3.2 lista as entradas que a análise crítica pela Direção deve considerar: situação de ações provenientes de análises críticas anteriores; mudanças em questões internas e externas relevantes ao SGSI; mudanças nas necessidades e expectativas das partes interessadas; feedback sobre o desempenho da segurança da informação (não conformidades e ações corretivas, resultados de monitoramento e medição, resultados de auditoria, cumprimento dos objetivos); feedback de partes interessadas; resultados da avaliação de riscos e situação do plano de tratamento de riscos; e oportunidades de melhoria contínua. É um conjunto amplo e multidimensional de entradas.

**Por que as demais estão incorretas?**
- a) Restringir a "apenas orçamento de TI" ignora completamente o rol amplo de entradas exigidas pela cláusula 9.3.2, que abrange desde contexto organizacional até desempenho de segurança e riscos.
- c) Focar exclusivamente em relatórios de incidentes, sem considerar proatividade, deixa de fora elementos essenciais como mudanças de contexto, feedback de auditoria, cumprimento de objetivos e oportunidades de melhoria — a análise crítica é deliberadamente ampla, não reativa a incidentes apenas.

**Dica para a prova ISO 27001**
A cláusula 9.3.2 (entradas da análise crítica) é extensa e cobrada literalmente em provas — memorize a lógica: "o que mudou" (contexto, partes interessadas) + "como estamos indo" (desempenho, riscos, auditorias) + "o que aprendemos antes" (ações anteriores) + "para onde podemos melhorar" (oportunidades).

**Resumo para memorização**
Análise crítica junta passado (ações antigas), presente (desempenho e riscos) e futuro (oportunidades de melhoria) — não é sobre TI ou incidentes isoladamente.

---

## Questão 59

**Enunciado:** Cenário 24: A "GovSec Solutions" está se preparando para a análise crítica pela Direção de seu SGSI.

59. Os "resultados" da análise crítica pela Direção (Seção 9.3.3) devem incluir decisões relativas a quê?

- a) Apenas as contratações para o próximo ano.
- b) Oportunidades para melhoria contínua e quaisquer necessidades de mudanças do SGSI.
- c) A manutenção do SGSI exatamente como está, sem alterações.

✅ **Resposta correta:** b) Oportunidades para melhoria contínua e quaisquer necessidades de mudanças do SGSI.

**Justificativa**
A cláusula 9.3.3 estabelece que os resultados (saídas) da análise crítica pela Direção devem incluir decisões relacionadas a oportunidades de melhoria contínua e a quaisquer necessidades de mudança no SGSI. Essas saídas são, tipicamente, registradas como informação documentada e alimentam o ciclo de melhoria contínua (cláusula 10), fechando o círculo do PDCA no nível estratégico da organização.

**Por que as demais estão incorretas?**
- a) Decisões sobre contratações não são o foco definido pela norma para as saídas da análise crítica — o foco é estritamente sobre a melhoria contínua e mudanças necessárias no SGSI, ainda que isso possa eventualmente implicar decisões de recursos.
- c) Se a análise crítica é conduzida corretamente, é esperado que gere pelo menos uma reflexão sobre oportunidades de melhoria ou necessidades de mudança — uma saída de "nenhuma alteração, sempre" ao longo do tempo é atipicamente estática e contraria o espírito de melhoria contínua da norma (cláusula 10.1).

**Dica para a prova ISO 27001**
Associe sempre as saídas da análise crítica (9.3.3) à cláusula 10 (Melhoria) — a análise crítica é o "gatilho formal de alto nível" que decide sobre mudanças e melhorias no SGSI.

**Resumo para memorização**
Toda análise crítica termina em decisão: melhorar algo ou mudar algo — nunca é só "reunião pela reunião".

---

## Questão 60

**Enunciado:** Cenário 25: A "Sistemas Integrados de Segurança" está revisando sua implementação de controles de monitoramento e logs.

60. O Controle 8.15 do Anexo A, referente a "Log", exige que a "Sistemas Integrados de Segurança":

- a) Registre apenas logs de erros graves.
- b) Produza, armazene, proteja e analise logs que registrem atividades, exceções, falhas e outros eventos relevantes.
- c) Apague os logs regularmente para evitar o armazenamento excessivo de dados.

✅ **Resposta correta:** b) Produza, armazene, proteja e analise logs que registrem atividades, exceções, falhas e outros eventos relevantes.

**Justificativa**
O controle 8.15 exige que logs que registrem atividades, exceções, falhas e outros eventos relevantes sejam produzidos, armazenados, protegidos e analisados. Isso proporciona rastreabilidade de eventos de segurança, é essencial para investigação de incidentes, detecção de comportamentos anômalos e conformidade regulatória — e a proteção dos próprios logs contra alteração ou exclusão indevida é parte fundamental do controle (evitando que um invasor apague seus rastros).

**Por que as demais estão incorretas?**
- a) Restringir o registro apenas a "erros graves" é insuficiente — o controle exige o registro amplo de atividades, exceções, falhas e outros eventos relevantes, não apenas os mais críticos, para permitir análise abrangente e correlação de eventos.
- c) Apagar logs regularmente contraria diretamente o propósito do controle, que exige armazenamento e proteção dos logs por período apropriado — a exclusão precoce compromete investigações forenses e a capacidade de detecção retroativa de incidentes.

**Dica para a prova ISO 27001**
O controle 8.15 sempre remete aos quatro verbos: produzir, armazenar, proteger e analisar logs — e frequentemente é cobrado junto ao 8.16 (monitoramento), pois logs sem análise/monitoramento têm valor limitado.

**Resumo para memorização**
Log tem que existir, ser guardado, ser protegido contra adulteração e, principalmente, ser analisado.

---

## Questão 61

**Enunciado:** Cenário 25: A "Sistemas Integrados de Segurança" está revisando sua implementação de controles de monitoramento e logs.

61. O Controle 8.16 do Anexo A, "Atividades de monitoramento", exige que a "Sistemas Integrados de Segurança" monitore:

- a) Apenas a performance dos usuários no sistema.
- b) Redes, sistemas e aplicações por comportamentos anômalos e tome ações apropriadas para avaliar possíveis incidentes de segurança da informação.
- c) Exclusivamente o consumo de energia dos equipamentos de TI.

✅ **Resposta correta:** b) Redes, sistemas e aplicações por comportamentos anômalos e tome ações apropriadas para avaliar possíveis incidentes de segurança da informação.

**Justificativa**
O controle 8.16 exige que redes, sistemas e aplicações sejam monitorados quanto a comportamentos anômalos, e que ações apropriadas sejam tomadas para avaliar potenciais incidentes de segurança da informação. Esse monitoramento contínuo (muitas vezes com ferramentas de SIEM, IDS/IPS) é o que permite detecção precoce de atividades suspeitas, complementando o registro de logs (8.15) com a análise ativa em tempo real ou quase real.

**Por que as demais estão incorretas?**
- a) Restringir o monitoramento à "performance dos usuários" desvia do propósito de segurança do controle, que é detectar comportamentos anômalos que possam indicar incidentes, não avaliar produtividade individual.
- c) Consumo de energia dos equipamentos é uma métrica operacional/de infraestrutura, sem relação com o propósito de detecção de incidentes de segurança que o controle 8.16 estabelece.

**Dica para a prova ISO 27001**
Distinga 8.15 (log = registrar o que aconteceu) de 8.16 (monitoramento = observar ativamente em busca de anomalias e agir). Um é o "arquivo", o outro é a "vigilância ativa".

**Resumo para memorização**
Monitoramento é vigilância ativa por anomalias — não é medir produtividade nem energia.

---

## Questão 62

**Enunciado:** Cenário 26: A "Avaliação de Performance SGSI" está concluindo a avaliação de desempenho de seu SGSI.

62. A "Avaliação de Performance SGSI" deve reter "informação documentada" como evidência dos resultados do monitoramento e medição (ABNT NBR ISO/IEC 27001:2022, 9.1). Por que isso é crucial?

- a) Apenas para fins de arquivamento legal, sem uso prático.
- b) Para demonstrar que as atividades de avaliação foram realizadas, os resultados obtidos e as conclusões tiradas, apoiando a tomada de decisões e a melhoria.
- c) Para que a gerência possa ignorar os resultados desfavoráveis sem rastreabilidade.

✅ **Resposta correta:** b) Para demonstrar que as atividades de avaliação foram realizadas, os resultados obtidos e as conclusões tiradas, apoiando a tomada de decisões e a melhoria.

**Justificativa**
A cláusula 9.1 exige que a organização retenha informação documentada apropriada como evidência dos resultados de monitoramento e medição. Essa evidência serve tanto para auditoria (comprovar que a avaliação de desempenho realmente ocorreu) quanto para uso gerencial prático: dar suporte a decisões informadas de gestão de riscos, ações corretivas (cláusula 10.2) e à própria análise crítica pela Direção (cláusula 9.3), fechando o ciclo de avaliação de desempenho com propósito real, não apenas burocrático.

**Por que as demais estão incorretas?**
- a) A documentação não é "arquivamento sem uso prático" — ela serve ativamente à tomada de decisões, à identificação de tendências e à melhoria contínua, sendo insumo direto para outras cláusulas (9.3, 10).
- c) A retenção de evidências tem o efeito oposto de "ignorar sem rastreabilidade": ela justamente cria rastreabilidade e transparência sobre os resultados, inclusive os desfavoráveis, forçando que sejam tratados (e não escondidos).

**Dica para a prova ISO 27001**
Documentação na ISO 27001 nunca é "burocracia pela burocracia" — a prova sempre valoriza alternativas que conectam a documentação a um propósito prático (rastreabilidade, evidência, apoio à decisão, melhoria).

**Resumo para memorização**
Evidência documentada existe para ser usada na gestão, não para ficar guardada sem função.

---

## Questão 63

**Enunciado:** Cenário 26: A "Avaliação de Performance SGSI" está concluindo a avaliação de desempenho de seu SGSI.

63. O que significa avaliar a "pertinência" do SGSI na análise crítica pela Direção (ABNT NBR ISO/IEC 27001:2022, 9.3.1)?

- a) Se o SGSI é relevante para o propósito da organização e seu contexto atual.
- b) Se o SGSI é o mais avançado tecnologicamente disponível no mercado.
- c) Se o SGSI foi implementado dentro do orçamento previsto.

✅ **Resposta correta:** a) Se o SGSI é relevante para o propósito da organização e seu contexto atual.

**Justificativa**
A cláusula 9.3.1 exige que a Alta Direção analise criticamente o SGSI da organização, a intervalos planejados, para assegurar sua contínua pertinência, adequação e eficácia. "Pertinência" (relevância) refere-se a se o SGSI ainda faz sentido e continua alinhado ao propósito, ao contexto (interno e externo, ligado à cláusula 4.1) e às necessidades atuais da organização — que podem ter mudado desde a implementação original.

**Por que as demais estão incorretas?**
- b) Pertinência não trata de "estado da arte tecnológico" — um SGSI pode ser plenamente pertinente e eficaz usando tecnologias maduras e adequadas ao contexto, sem precisar ser o mais avançado do mercado.
- c) Aderência orçamentária é uma questão de gestão financeira de projeto, não o conceito de pertinência do SGSI conforme definido pela norma, que se relaciona a relevância estratégica e contextual, não a controle de custos.

**Dica para a prova ISO 27001**
A análise crítica avalia três dimensões clássicas do SGSI: pertinência (ainda faz sentido/é relevante?), adequação (é suficiente para o propósito?) e eficácia (está produzindo os resultados esperados?). Memorize esse trio — é cobrado com frequência.

**Resumo para memorização**
Pertinência = "isso ainda faz sentido para nós, hoje?" — não é sobre tecnologia de ponta ou orçamento.

---

## Questão 64

**Enunciado:** Cenário 27: A "Evolução Contínua Ltda." está focada em manter seu SGSI sempre aprimorado.

64. De acordo com a ABNT NBR ISO/IEC 27001:2022 (Seção 10.1), o que a "Evolução Contínua Ltda." deve melhorar continuamente?

- a) Apenas o número de funcionários dedicados à segurança.
- b) A pertinência, a adequação e a eficácia do sistema de gestão da segurança da informação.
- c) Apenas os resultados financeiros da organização.

✅ **Resposta correta:** b) A pertinência, a adequação e a eficácia do sistema de gestão da segurança da informação.

**Justificativa**
A cláusula 10.1 estabelece que a organização deve melhorar continuamente a pertinência, adequação e eficácia do SGSI — os mesmos três atributos avaliados na análise crítica (9.3.1). A melhoria contínua é o "fechamento" do ciclo PDCA: com base no que foi monitorado, auditado e analisado criticamente, a organização atua para tornar o sistema cada vez mais relevante, suficiente e eficaz ao longo do tempo.

**Por que as demais estão incorretas?**
- a) O número de funcionários dedicados à segurança pode ser um recurso ajustado conforme necessidade (cláusula 7.1), mas não é o foco definido pela cláusula 10.1, que trata da melhoria do sistema de gestão como um todo, não de headcount.
- c) Resultados financeiros da organização não são o objeto da melhoria contínua exigida por 10.1 — o foco é estritamente sobre o SGSI (pertinência, adequação, eficácia), embora bons resultados de segurança possam ter efeitos financeiros indiretos positivos.

**Dica para a prova ISO 27001**
Conecte sempre 9.3.1 (o que se avalia na análise crítica) com 10.1 (o que se melhora continuamente) — são os mesmos três conceitos: pertinência, adequação, eficácia.

**Resumo para memorização**
10.1 fecha o ciclo: melhorar sempre pertinência, adequação e eficácia do SGSI — não headcount, não finanças da empresa.

---

## Questão 65

**Enunciado:** Cenário 27: A "Evolução Contínua Ltda." está focada em manter seu SGSI sempre aprimorado.

65. Quando uma não conformidade ocorre (ABNT NBR ISO/IEC 27001:2022, 10.2), a "Evolução Contínua Ltda." deve reagir a ela. Qual uma ação obrigatória?

- a) Desconsiderar a não conformidade se ela não causar impacto imediato.
- b) Tomar ações para controlá-la e corrigi-la, e lidar com as consequências.
- c) Transferir a responsabilidade pela não conformidade para um terceiro.

✅ **Resposta correta:** b) Tomar ações para controlá-la e corrigi-la, e lidar com as consequências.

**Justificativa**
A cláusula 10.2 a) exige que, ao ocorrer uma não conformidade, a organização reaja a ela, tomando ação para controlá-la e corrigi-la, e lidando com as consequências. Essa é a primeira etapa do tratamento de não conformidade, focada na contenção imediata do problema (correção), antes mesmo de investigar e eliminar a causa raiz (etapa tratada na alínea b, que leva à ação corretiva propriamente dita).

**Por que as demais estão incorretas?**
- a) A norma não permite ignorar não conformidades com base em "ausência de impacto imediato" — toda não conformidade identificada deve ser reagida (controlada e corrigida), independentemente da percepção inicial de gravidade, já que impactos podem não ser óbvios de imediato.
- c) A responsabilidade pelo tratamento da não conformidade é da própria organização que opera o SGSI — não pode ser simplesmente transferida a terceiros, ainda que causas externas possam ter contribuído para o problema.

**Dica para a prova ISO 27001**
Distinga "correção" (ação imediata para conter/corrigir o efeito, cláusula 10.2 a) de "ação corretiva" (eliminar a causa raiz para evitar recorrência, cláusula 10.2 b-d) — são conceitos e etapas diferentes, frequentemente confundidos em prova.

**Resumo para memorização**
Primeiro contém e corrige o problema; depois (ação corretiva) elimina a causa raiz — são etapas distintas.

---

## Questão 66

**Enunciado:** Cenário 28: A "Correção Eficaz S.A." identificou uma não conformidade e está trabalhando para resolvê-la.

66. Após a não conformidade ter sido controlada e corrigida, a "Correção Eficaz S.A." (ABNT NBR ISO/IEC 27001:2022, 10.2 b)) deve:

- a) Apenas documentar a correção e arquivar o caso.
- b) Avaliar a necessidade de ações para eliminar as causas da não conformidade, a fim de evitar sua repetição ou ocorrência em outro lugar.
- c) Informar apenas os envolvidos diretos sobre a correção.

✅ **Resposta correta:** b) Avaliar a necessidade de ações para eliminar as causas da não conformidade, a fim de evitar sua repetição ou ocorrência em outro lugar.

**Justificativa**
A cláusula 10.2 b) exige que a organização avalie a necessidade de ação para eliminar a(s) causa(s) da não conformidade, a fim de que ela não se repita ou ocorra em outro lugar, o que envolve analisar criticamente a não conformidade, determinar suas causas e determinar se não conformidades similares existem ou poderiam potencialmente ocorrer. Isso é o núcleo da abordagem de causa raiz — vai além do "remendo" imediato para tratar a origem do problema.

**Por que as demais estão incorretas?**
- a) Apenas documentar e arquivar sem investigar a causa raiz contraria a exigência explícita de avaliar a necessidade de ação corretiva sistêmica, deixando a organização vulnerável à recorrência do mesmo problema.
- c) Restringir a comunicação apenas aos "envolvidos diretos" não atende ao propósito de investigar se não conformidades similares podem existir em outras partes da organização — a análise de causa raiz frequentemente exige colaboração mais ampla do que apenas os diretamente afetados.

**Dica para a prova ISO 27001**
A frase "evitar sua repetição ou ocorrência em outro lugar" é quase literal da norma (10.2 b) — grife-a. Ela distingue ação corretiva (sistêmica, preventiva de recorrência) de simples correção (pontual).

**Resumo para memorização**
Ação corretiva mira a causa raiz — para não acontecer de novo, nem em outro canto da empresa.

---

## Questão 67

**Enunciado:** Cenário 28: A "Correção Eficaz S.A." identificou uma não conformidade e está trabalhando para resolvê-la.

67. Qual a finalidade de "analisar criticamente a eficácia de quaisquer ações corretivas tomadas" (ABNT NBR ISO/IEC 27001:2022, 10.2 d))?

- a) Para validar o trabalho da equipe de segurança sem a necessidade de resultados práticos.
- b) Para assegurar que as ações implementadas resolveram a não conformidade e foram eficazes em prevenir sua recorrência.
- c) Para determinar quem será responsabilizado pela não conformidade inicial.

✅ **Resposta correta:** b) Para assegurar que as ações implementadas resolveram a não conformidade e foram eficazes em prevenir sua recorrência.

**Justificativa**
A cláusula 10.2 d) exige que a organização analise criticamente a eficácia de quaisquer ações corretivas tomadas. Isso fecha o ciclo PDCA da não conformidade: não basta implementar uma ação corretiva — é preciso verificar, com base em evidências (por exemplo, monitoramento subsequente, ausência de recorrência), se ela de fato resolveu o problema e eliminou (ou reduziu suficientemente) a causa raiz identificada.

**Por que as demais estão incorretas?**
- a) A análise crítica de eficácia exige evidência de resultados práticos concretos — não é uma validação simbólica ou automática do trabalho realizado, sem comprovação real de que o problema foi resolvido.
- c) O propósito da cláusula não é atribuir culpa ou responsabilização individual pela não conformidade original, mas sim verificar tecnicamente a eficácia da solução implementada — um enfoque de melhoria de sistema, não de punição de pessoas.

**Dica para a prova ISO 27001**
"Analisar eficácia" sempre implica verificação baseada em evidência de que o problema foi realmente resolvido — desconfie de alternativas que tratam isso como formalidade simbólica ou como busca de culpados.

**Resumo para memorização**
Ação corretiva só "vale" se comprovadamente funcionou — não basta ter sido implementada.

---

## Questão 68

**Enunciado:** Cenário 29: A "Aprendizado com Incidentes S.A." teve um incidente de segurança e está no processo de aprendizado e melhoria.

68. O Controle 5.27 do Anexo A, "Aprendizado com incidentes de segurança da informação", exige que o conhecimento adquirido com incidentes seja usado para:

- a) Excluir os controles de segurança que falharam no incidente.
- b) Fortalecer e melhorar os controles da segurança da informação.
- c) Apenas documentar o incidente para fins de seguro.

✅ **Resposta correta:** b) Fortalecer e melhorar os controles da segurança da informação.

**Justificativa**
O controle 5.27 exige que o conhecimento obtido a partir de incidentes de segurança da informação seja usado para fortalecer e melhorar os controles de segurança da informação. Isso conecta diretamente a gestão de incidentes (controles 5.24 a 5.28) ao ciclo de melhoria contínua (cláusula 10) — cada incidente é uma oportunidade de aprendizado que retroalimenta a avaliação de riscos, o SoA e os próprios controles implementados, tornando o SGSI mais robusto ao longo do tempo.

**Por que as demais estão incorretas?**
- a) Excluir controles que falharam, sem investigação e melhoria, é o oposto do propósito do controle 5.27 — a falha de um controle geralmente indica necessidade de reforço ou ajuste, não de eliminação pura e simples.
- c) O propósito do controle não é meramente cumprir uma formalidade de documentação para fins de seguro — é usar o aprendizado de forma ativa para fortalecer a postura de segurança da organização, com efeito prático sobre os controles futuros.

**Dica para a prova ISO 27001**
5.27 é o "elo" entre gestão de incidentes e melhoria contínua — sempre que a prova mencionar "lições aprendidas" de incidente, pense em fortalecimento de controles, nunca em exclusão ou mera burocracia.

**Resumo para memorização**
Incidente vira aprendizado; aprendizado vira controle mais forte — nunca vira desculpa para remover proteção.

---

## Questão 69

**Enunciado:** Cenário 29: A "Aprendizado com Incidentes S.A." teve um incidente de segurança e está no processo de aprendizado e melhoria.

69. A "Aprendizado com Incidentes S.A." deve reter "informação documentada" sobre a natureza das não conformidades e os resultados das ações corretivas (ABNT NBR ISO/IEC 27001:2022, 10.2 f) e g)). Qual o propósito disso?

- a) Apenas para fins de auditoria interna, sem contribuir para a melhoria real.
- b) Para fornecer evidências da aplicação do ciclo de melhoria contínua e facilitar a análise para futuras otimizações.
- c) Para que a gerência possa ocultar os problemas passados.

✅ **Resposta correta:** b) Para fornecer evidências da aplicação do ciclo de melhoria contínua e facilitar a análise para futuras otimizações.

**Justificativa**
A cláusula 10.2 exige reter informação documentada como evidência da natureza das não conformidades e quaisquer ações subsequentes tomadas, e dos resultados de qualquer ação corretiva. Essa documentação sustenta a rastreabilidade do processo de melhoria, permite identificar padrões e tendências de não conformidades ao longo do tempo (insumo valioso para futuras análises críticas e avaliações de risco) e comprova, de forma auditável, que o ciclo "identificar → corrigir → analisar causa → verificar eficácia" foi efetivamente seguido.

**Por que as demais estão incorretas?**
- a) Reduzir o propósito a "apenas para auditoria, sem contribuir para melhoria real" contraria a essência da exigência, que é justamente alimentar decisões futuras de melhoria com base em dados históricos confiáveis.
- c) A documentação de não conformidades tem efeito de transparência e rastreabilidade, não de ocultação — pelo contrário, ela impede que problemas sejam "varridos para debaixo do tapete", pois ficam registrados e sujeitos a análise crítica e auditoria.

**Dica para a prova ISO 27001**
Toda exigência de "reter informação documentada" na cláusula 10.2 serve a um propósito duplo: evidência de conformidade processual E insumo de aprendizado organizacional — nunca é burocracia vazia ou instrumento de ocultação.

**Resumo para memorização**
Registrar não conformidades é abrir os olhos para padrões — não é varrer problemas para debaixo do tapete.

---

## Questão 70

**Enunciado:** Cenário 30: A "Gestão de Mudanças Segura" está revendo seu SGSI.

70. Se a "Gestão de Mudanças Segura" identificar que um de seus processos não está mais alinhado com os objetivos do SGSI, o que a ABNT NBR ISO/IEC 27001:2022 (10.2 e)) sugere?

- a) Ignorar o desalinhamento e focar em outras áreas.
- b) Realizar mudanças no sistema de gestão da segurança da informação, quando necessário, para realinhar os processos.
- c) Reestruturar completamente toda a organização.

✅ **Resposta correta:** b) Realizar mudanças no sistema de gestão da segurança da informação, quando necessário, para realinhar os processos.

**Justificativa**
A cláusula 10.2 e) prevê que, como parte do tratamento de não conformidade, a organização faça mudanças no SGSI, se necessário, com base no resultado da análise de causa raiz e na avaliação de necessidade de ação. Isso reforça que a melhoria contínua não é apenas ajuste pontual de um controle isolado — pode implicar alterações mais amplas no próprio sistema de gestão (processos, políticas, estrutura) quando isso for necessário para restaurar o alinhamento com os objetivos do SGSI.

**Por que as demais estão incorretas?**
- a) Ignorar um desalinhamento identificado contraria diretamente o princípio de melhoria contínua (cláusula 10.1) e a exigência de reagir a não conformidades (10.2 a), deixando o problema sem tratamento.
- c) "Reestruturar completamente toda a organização" é uma resposta desproporcional — a norma fala em fazer mudanças no SGSI quando necessário, de forma planejada (cláusula 6.3), não em uma reestruturação organizacional total e indiscriminada.

**Dica para a prova ISO 27001**
Desalinhamento de processo não significa "revolução total" — a resposta correta é sempre proporcional: ajustar o SGSI (com planejamento, cláusula 6.3) até restaurar o alinhamento necessário.

**Resumo para memorização**
Desalinhamento pede ajuste proporcional no SGSI, não reestruturação da empresa inteira.

---

## Questão 71

**Enunciado:** Cenário 30: A "Gestão de Mudanças Segura" está revendo seu SGSI.

71. Qual é a relação fundamental entre a "Melhoria contínua" (Seção 10.1) e os "Objetivos da segurança da informação" (Seção 6.2)?

- a) Não há relação direta, pois são processos separados.
- b) A melhoria contínua visa garantir que o SGSI evolua para continuar a alcançar e otimizar os objetivos de segurança da informação.
- c) Os objetivos da segurança da informação são definidos apenas uma vez e não são afetados pela melhoria contínua.

✅ **Resposta correta:** b) A melhoria contínua visa garantir que o SGSI evolua para continuar a alcançar e otimizar os objetivos de segurança da informação.

**Justificativa**
A cláusula 6.2 já prevê que os objetivos de segurança da informação devem ser monitorados e atualizados conforme apropriado, enquanto a cláusula 10.1 exige a melhoria contínua da pertinência, adequação e eficácia do SGSI. Essas duas cláusulas estão intrinsecamente conectadas: a melhoria contínua é o mecanismo pelo qual a organização garante que os objetivos continuem sendo alcançados de forma eficaz — e, quando necessário, revisados — à medida que o contexto, os riscos e as necessidades do negócio evoluem.

**Por que as demais estão incorretas?**
- a) Tratar melhoria contínua e objetivos como "processos separados sem relação direta" ignora a interdependência estrutural entre planejamento (cláusula 6, que define objetivos) e melhoria (cláusula 10, que os mantém relevantes e evolutivos) dentro do ciclo PDCA do Anexo SL.
- c) A cláusula 6.2 g) explicitamente exige que os objetivos sejam monitorados e atualizados, o que contraria a ideia de que sejam "definidos apenas uma vez" e permaneçam estáticos e imunes à melhoria contínua.

**Dica para a prova ISO 27001**
Cláusulas do Anexo SL nunca são "ilhas" isoladas — planejar (6), operar (8), avaliar (9) e melhorar (10) formam um ciclo interligado (PDCA). Questões que testam "relação entre cláusulas" quase sempre esperam reconhecimento dessa interdependência.

**Resumo para memorização**
Objetivos não são estátuas: a melhoria contínua os mantém vivos, relevantes e sempre otimizados.

---

## Questão 72

**Enunciado:** Cenário 30: A "Gestão de Mudanças Segura" está revendo seu SGSI.

72. O que a "Melhoria contínua" (Seção 10.1) do SGSI da "Gestão de Mudanças Segura" busca aprimorar em termos de "pertinência"?

- a) A velocidade de execução dos processos do SGSI.
- b) A relevância e adequação do SGSI aos propósitos e contexto da organização.
- c) O número de pessoas envolvidas na gestão do SGSI.

✅ **Resposta correta:** b) A relevância e adequação do SGSI aos propósitos e contexto da organização.

**Justificativa**
Como já estabelecido na cláusula 9.3.1, "pertinência" refere-se a quão relevante e apropriado o SGSI continua sendo para o propósito e o contexto (interno e externo) da organização. A cláusula 10.1 exige que a organização melhore continuamente essa pertinência (além de adequação e eficácia), o que significa reavaliar e ajustar o SGSI à medida que a organização, seu mercado, sua tecnologia e seus riscos evoluem — mantendo o sistema sempre "fazendo sentido" para a realidade atual do negócio.

**Por que as demais estão incorretas?**
- a) Velocidade de execução dos processos é um atributo possível de eficiência operacional, mas não é o que a norma define como "pertinência" — pertinência trata de relevância/adequação ao contexto, não de velocidade.
- c) O número de pessoas envolvidas na gestão do SGSI é um recurso (cláusula 7.1), não uma medida de pertinência do sistema — um SGSI pode ser plenamente pertinente com uma equipe enxuta, ou irrelevante mesmo com muitas pessoas envolvidas.

**Dica para a prova ISO 27001**
Reforce a associação: pertinência = relevância ao contexto/propósito (não velocidade, não headcount, não tecnologia de ponta) — esse conceito aparece em várias questões do simulado sob diferentes formulações.

**Resumo para memorização**
Pertinência é sobre "fazer sentido para o contexto atual", não sobre rapidez ou quantidade de gente envolvida.

---

## Questão 73

**Enunciado:** Cenário 31: A "Certificação Final Solutions" está se preparando para a auditoria externa de certificação ISO 27001.

73. Em uma auditoria de certificação, o que a "Certificação Final Solutions" precisará demonstrar em relação à sua política de segurança da informação (ABNT NBR ISO/IEC 27001:2022, 5.2)?

- a) Apenas que a política foi redigida por um especialista externo.
- b) Que a política é apropriada ao propósito da organização, documentada, comunicada e inclui o comprometimento com a melhoria contínua.
- c) Que a política é a mais complexa e detalhada do mercado.

✅ **Resposta correta:** b) Que a política é apropriada ao propósito da organização, documentada, comunicada e inclui o comprometimento com a melhoria contínua.

**Justificativa**
Em auditoria de certificação, o auditor verifica o cumprimento literal dos requisitos da cláusula 5.2: a política deve ser apropriada ao propósito da organização; incluir objetivos de segurança da informação (ou fornecer a estrutura para estabelecê-los); incluir comprometimento em satisfazer requisitos aplicáveis; incluir comprometimento com a melhoria contínua do SGSI; estar disponível como informação documentada; ser comunicada dentro da organização; e estar disponível para partes interessadas, conforme apropriado. É essa combinação de atributos que o auditor buscará como evidência de conformidade.

**Por que as demais estão incorretas?**
- a) A autoria da política (interna ou por consultor externo) não é requisito de conformidade da norma — o que importa é o conteúdo e a aderência aos requisitos da cláusula 5.2, não quem a redigiu.
- c) Complexidade e detalhamento excessivo não são critérios de conformidade — pelo contrário, a política deve ser apropriada ao propósito da organização, o que geralmente favorece objetividade e clareza, não complexidade desnecessária.

**Dica para a prova ISO 27001**
Em qualquer cenário de "preparação para auditoria de certificação", a resposta correta tende a listar exatamente os elementos literais exigidos pela cláusula em questão — a prova está testando se você memorizou os requisitos, não interpretações vagas.

**Resumo para memorização**
Auditor de certificação confere aderência literal à cláusula — não estilo de redação nem quem escreveu.

---

## Questão 74

**Enunciado:** Cenário 31: A "Certificação Final Solutions" está se preparando para a auditoria externa de certificação ISO 27001.

74. Qual a importância da "informação documentada" sobre a "competência" do pessoal (ABNT NBR ISO/IEC 27001:2022, 7.2) para a auditoria de certificação?

- a) É apenas um requisito burocrático que os auditores tendem a ignorar.
- b) Serve como evidência de que a organização garante que seu pessoal é qualificado para as tarefas relacionadas à segurança da informação.
- c) É utilizada para comparar os salários dos funcionários com os do mercado.

✅ **Resposta correta:** b) Serve como evidência de que a organização garante que seu pessoal é qualificado para as tarefas relacionadas à segurança da informação.

**Justificativa**
A cláusula 7.2 exige explicitamente que informação documentada apropriada seja retida como evidência de competência. Em auditoria, essa evidência (certificados, registros de treinamento, currículos, avaliações de desempenho) é o que permite ao auditor verificar objetivamente que a organização cumpriu seu compromisso de assegurar pessoal competente para funções que afetam o desempenho da segurança da informação — sem essa evidência, a afirmação de competência seria apenas uma alegação não verificável.

**Por que as demais estão incorretas?**
- a) Auditores de certificação não "ignoram" esse requisito — pelo contrário, evidência de competência é um dos itens mais frequentemente verificados em auditorias, já que pessoas despreparadas são uma das principais causas de falhas de segurança.
- c) A informação documentada sobre competência não tem qualquer relação com comparação salarial de mercado — isso seria uma questão de gestão de recursos humanos e remuneração, totalmente fora do escopo do requisito de competência da ISO 27001.

**Dica para a prova ISO 27001**
Sempre que a prova falar em "evidência para auditoria", lembre que a ISO 27001 exige documentação como prova objetiva e verificável — nunca uma alegação vaga desprovida de registro.

**Resumo para memorização**
Sem registro de competência, para o auditor, a competência "não existe" — é preciso provar, não apenas afirmar.

---

## Questão 75

**Enunciado:** Cenário 32: A "Qualidade e Conformidade Consultoria" está auxiliando um cliente a preparar-se para a auditoria de certificação.

75. O cliente da "Qualidade e Conformidade Consultoria" deve apresentar "informação documentada dos resultados das avaliações de riscos da segurança da informação" (ABNT NBR ISO/IEC 27001:2022, 8.2). O que o auditor buscará nisso?

- a) Uma lista de riscos sem nenhuma análise ou tratamento.
- b) Evidências de que as avaliações foram realizadas conforme os critérios estabelecidos, os riscos identificados, analisados, avaliados e seus resultados documentados.
- c) Apenas um resumo geral dos riscos mais importantes.

✅ **Resposta correta:** b) Evidências de que as avaliações foram realizadas conforme os critérios estabelecidos, os riscos identificados, analisados, avaliados e seus resultados documentados.

**Justificativa**
A cláusula 8.2 exige que a organização retenha informação documentada dos resultados das avaliações de riscos de segurança da informação. Em auditoria, o auditor busca evidência de que o processo definido em 6.1.2 (identificação, análise e avaliação de riscos, com critérios consistentes) foi de fato aplicado na prática operacional — ou seja, que a metodologia definida não ficou apenas no papel, mas foi efetivamente executada, com riscos identificados, analisados quanto a probabilidade/impacto, avaliados contra os critérios de aceitação, e formalmente registrados.

**Por que as demais estão incorretas?**
- a) Uma simples lista de riscos, sem análise ou tratamento, não atende ao processo completo exigido pela cláusula 6.1.2/8.2, que envolve identificação, análise, avaliação e — subsequentemente — tratamento (6.1.3/8.3) dos riscos.
- c) Um resumo apenas dos riscos "mais importantes" pode omitir evidências de completude do processo — a norma exige documentação dos resultados da avaliação de riscos como um todo, de forma rastreável e auditável, não um recorte seletivo e informal.

**Dica para a prova ISO 27001**
Em cenários de "preparação para auditoria", a resposta correta quase sempre enfatiza evidência completa e rastreável do processo formal (identificação → análise → avaliação → documentação), nunca versões resumidas, informais ou parciais.

**Resumo para memorização**
Auditor quer ver o processo de risco completo documentado — não uma lista solta nem um resumo seletivo.

---

## Questão 76

**Enunciado:** Cenário 32: A "Qualidade e Conformidade Consultoria" está auxiliando um cliente a preparar-se para a auditoria de certificação.

76. Em relação à "Análise crítica pela Direção" (ABNT NBR ISO/IEC 27001:2022, 9.3), qual evidência o auditor buscará como parte da preparação para a certificação?

- a) Apenas a presença da alta direção na reunião de análise crítica.
- b) Informação documentada dos resultados da análise crítica, incluindo decisões sobre oportunidades de melhoria e necessidades de mudanças no SGSI.
- c) Um plano de ação futuro, mesmo que a análise crítica ainda não tenha ocorrido.

✅ **Resposta correta:** b) Informação documentada dos resultados da análise crítica, incluindo decisões sobre oportunidades de melhoria e necessidades de mudanças no SGSI.

**Justificativa**
A cláusula 9.3.3 exige que a organização retenha informação documentada como evidência dos resultados das análises críticas pela Direção. O auditor buscará essa evidência formal (atas, registros de decisão) que demonstre que as entradas previstas em 9.3.2 foram efetivamente consideradas e que decisões concretas sobre melhoria contínua e necessidades de mudança do SGSI foram tomadas pela Alta Direção — não apenas que uma reunião ocorreu.

**Por que as demais estão incorretas?**
- a) A mera presença física da Alta Direção na reunião, sem registro formal do conteúdo discutido e das decisões tomadas, não constitui evidência suficiente de conformidade com a cláusula 9.3 — presença sem documentação não é auditável.
- c) Um plano de ação apresentado antes da análise crítica ter de fato ocorrido não é evidência válida de conformidade — a norma exige que a análise crítica seja realizada (a intervalos planejados) e documentada, e não pode ser "simulada" a posteriori ou substituída por um plano genérico e antecipado.

**Dica para a prova ISO 27001**
Auditores buscam sempre registro documentado real das saídas (decisões) da análise crítica, não apenas evidência de que uma reunião aconteceu ou de intenções futuras não fundamentadas em análise real.

**Resumo para memorização**
Não basta a reunião acontecer — precisa haver registro das decisões tomadas nela.

---

## Questão 77

**Enunciado:** Cenário 33: A "Sistemas Auditáveis Inc." está finalizando a preparação para sua auditoria.

77. A "Sistemas Auditáveis Inc." deve demonstrar ao auditor que o SGSI é "melhorado continuamente" (ABNT NBR ISO/IEC 27001:2022, 10.1). Qual a melhor forma de evidenciar isso?

- a) Apresentando um plano de melhoria detalhado que será implementado no futuro.
- b) Através da análise de resultados de monitoramento, auditorias, ações corretivas e análises críticas da Direção, mostrando um ciclo de aprimoramento.
- c) Uma declaração verbal do CEO sobre o compromisso com a melhoria.

✅ **Resposta correta:** b) Através da análise de resultados de monitoramento, auditorias, ações corretivas e análises críticas da Direção, mostrando um ciclo de aprimoramento.

**Justificativa**
A melhor evidência de melhoria contínua não é uma promessa isolada, mas a demonstração de um ciclo vivo e recorrente: resultados de monitoramento e medição (9.1) alimentando auditorias internas (9.2) e análises críticas pela Direção (9.3), que geram ações corretivas (10.2) e decisões de melhoria, que por sua vez são novamente monitoradas — evidenciando, na prática, que o PDCA está em funcionamento contínuo e gerando evolução real e mensurável do SGSI ao longo do tempo.

**Por que as demais estão incorretas?**
- a) Um plano futuro, ainda não implementado, demonstra intenção, mas não evidencia que a melhoria contínua já está de fato ocorrendo — auditores buscam evidência de histórico e prática recorrente, não apenas promessas.
- c) Uma declaração verbal, sem registro documentado e sem evidência de ações concretas realizadas, não constitui evidência objetiva de conformidade — auditorias de certificação exigem evidências verificáveis, não apenas discurso.

**Dica para a prova ISO 27001**
"Melhoria contínua" comprovada = ciclo demonstrável ao longo do tempo (monitoramento → auditoria → análise crítica → ação corretiva → nova rodada), nunca uma promessa isolada ou declaração sem lastro documental.

**Resumo para memorização**
Melhoria contínua se prova com histórico de ciclo funcionando, não com discurso ou plano futuro isolado.

---

## Questão 78

**Enunciado:** Cenário 33: A "Sistemas Auditáveis Inc." está finalizando a preparação para sua auditoria.

78. A ABNT NBR ISO/IEC 27001:2022 (Seção 8.1) exige que a organização controle "processos, produtos ou serviços terceirizados que são relevantes para o sistema de gestão da segurança da informação". Por que isso é fundamental para uma auditoria de certificação?

- a) Porque a organização pode transferir a responsabilidade pela segurança para o terceiro.
- b) Porque o auditor precisa ter certeza de que a segurança da informação é mantida mesmo em serviços externos.
- c) Porque a organização precisa apenas garantir que o terceiro possua uma ISO 27001.

✅ **Resposta correta:** b) Porque o auditor precisa ter certeza de que a segurança da informação é mantida mesmo em serviços externos.

**Justificativa**
Como já discutido na questão 52 (mesma cláusula 8.1), a responsabilidade pela segurança da informação de processos terceirizados relevantes permanece com a organização certificada, que deve demonstrá-la controlando esses processos externos. Em auditoria, isso é fundamental porque um SGSI só é verdadeiramente eficaz se cobrir toda a cadeia relevante de tratamento da informação, incluindo pontos operados por terceiros — uma falha de segurança em um fornecedor crítico pode comprometer diretamente os ativos protegidos pelo SGSI certificado.

**Por que as demais estão incorretas?**
- a) A transferência de responsabilidade ao terceiro é uma ideia equivocada: a cláusula 8.1 exige que a própria organização assegure o controle desses processos, mantendo sua responsabilidade e accountability, independentemente de quem executa a atividade.
- c) Exigir apenas a posse de uma certificação ISO 27001 pelo terceiro é insuficiente — a organização deve efetivamente controlar (via contratos, SLAs, auditorias, monitoramento) o processo terceirizado relevante, o que vai além de verificar um certificado formal do fornecedor.

**Dica para a prova ISO 27001**
Esta questão reforça (em contexto de auditoria) o mesmo princípio da Q52: certificação do fornecedor ajuda, mas não substitui o controle ativo e a responsabilidade contínua da organização contratante sobre processos terceirizados relevantes ao SGSI.

**Resumo para memorização**
Certificado do fornecedor é bom sinal, mas não dispensa controle e responsabilidade ativa da organização contratante.

---

## Questão 79

**Enunciado:** Cenário 34: A "Tecnologia de Controle de Acesso" está implementando controles para gerenciar acesso e identidade.

79. O Controle 5.16 do Anexo A trata da "Gestão de identidade". O que a "Tecnologia de Controle de Acesso" deve implementar?

- a) Um processo para criar novas identidades para cada novo projeto.
- b) O gerenciamento do ciclo de vida completo das identidades, desde sua criação até a desativação.
- c) Um sistema que permite aos usuários gerenciar suas próprias identidades de forma autônoma.

✅ **Resposta correta:** b) O gerenciamento do ciclo de vida completo das identidades, desde sua criação até a desativação.

**Justificativa**
O controle 5.16 exige que o ciclo de vida completo das identidades seja gerenciado, cobrindo desde a criação (provisionamento) até a desativação final (desprovisionamento), passando por manutenção e alterações ao longo do tempo (mudanças de cargo, função, status de contratação). Uma gestão de identidade robusta é pré-requisito para o controle de acesso eficaz (ligado diretamente ao controle 5.18, direitos de acesso).

**Por que as demais estão incorretas?**
- a) Criar uma identidade nova "para cada novo projeto" não reflete o conceito de gestão de identidade — o ideal é gerenciar identidades de forma centralizada e vinculada à pessoa/entidade, evitando multiplicação desnecessária e descontrolada de identidades para a mesma pessoa.
- c) Permitir que usuários gerenciem suas próprias identidades "de forma autônoma", sem governança central, contraria o propósito do controle, que exige gestão formal e controlada do ciclo de vida das identidades pela organização, não autogestão sem supervisão.

**Dica para a prova ISO 27001**
5.16 (gestão de identidade) é o "quem é você no sistema" — enquanto 5.18 (direitos de acesso) é o "o que você pode fazer" — os dois controles trabalham juntos no ciclo de vida do acesso (identidade → autorização → revisão → revogação).

**Resumo para memorização**
Gestão de identidade cobre do "nascimento" ao "fim de vida" de cada identidade no sistema — não é criar identidade nova a cada projeto.

---

## Questão 80

**Enunciado:** Cenário 34: A "Tecnologia de Controle de Acesso" está implementando controles para gerenciar acesso e identidade.

80. O Controle 5.18 do Anexo A aborda os "Direitos de acesso". O que a "Tecnologia de Controle de Acesso" deve fazer?

- a) Conceder direitos de acesso amplos por padrão e restringi-los apenas quando necessário.
- b) Provisionar, analisar criticamente, modificar e remover os direitos de acesso de acordo com as políticas e regras da organização.
- c) Apenas documentar os direitos de acesso, sem processo de revisão.

✅ **Resposta correta:** b) Provisionar, analisar criticamente, modificar e remover os direitos de acesso de acordo com as políticas e regras da organização.

**Justificativa**
O controle 5.18 exige que direitos de acesso a informações e outros ativos associados sejam provisionados, analisados criticamente, modificados e removidos de acordo com a política específica do tópico da organização e as regras para controle de acesso. Isso implica um ciclo de gestão ativo: concessão inicial baseada em necessidade real (need-to-know/need-to-use), revisões periódicas (para detectar acessos excessivos ou obsoletos) e revogação tempestiva quando o acesso deixa de ser necessário (por exemplo, mudança de função ou desligamento).

**Por que as demais estão incorretas?**
- a) Conceder acesso amplo "por padrão" viola o princípio do menor privilégio, um dos pilares de controle de acesso da norma — o correto é conceder o mínimo necessário e ampliar apenas mediante justificativa formal, nunca o inverso.
- c) Documentar sem um processo ativo de análise crítica e revisão periódica é insuficiente — o controle exige explicitamente a análise crítica (revisão) e a modificação/remoção de direitos ao longo do tempo, não apenas um registro estático.

**Dica para a prova ISO 27001**
5.18 é regido pelo princípio do menor privilégio e por um ciclo de vida ativo do acesso: provisionar → revisar periodicamente → modificar → remover. Bancas adoram testar se você lembra da revisão periódica (muitas vezes esquecida na prática das organizações reais).

**Resumo para memorização**
Direito de acesso não é "para sempre": é concedido, revisado, ajustado e removido conforme a necessidade real muda.

---


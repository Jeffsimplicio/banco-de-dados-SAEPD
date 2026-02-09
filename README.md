# 🗄️ Banco de Dados – SAEPD

Este repositório contém a modelagem do banco de dados do sistema **SAEPD – Sistema de Acompanhamento Escolar para Pais e Docentes**, desenvolvido como parte do Projeto Integrado do curso de **Análise e Desenvolvimento de Sistemas (UFCA/CEAD – Polo Mauriti)**.

O banco de dados foi projetado para armazenar e organizar informações acadêmicas, administrativas e de comunicação entre a escola, professores, alunos e responsáveis, garantindo integridade, organização e confiabilidade dos dados.

---

## 🎯 Objetivo do Banco de Dados

O objetivo do banco de dados do SAEPD é permitir o armazenamento estruturado de dados essenciais ao funcionamento do sistema, como o cadastro de usuários, informações dos alunos, controle de turmas, registros acadêmicos e comunicação entre escola e família. Essa estrutura facilita o acompanhamento escolar e contribui para uma gestão educacional mais eficiente.

---

## 🧩 Entidades Principais

As principais entidades que compõem o banco de dados do SAEPD são:

Administrador, Professor, Responsável, Aluno, Turma, Nota, Frequência, Comportamento, Ocorrência, Mensagem e Justificativa.

Cada entidade representa um elemento real do ambiente escolar e foi definida para refletir corretamente os processos do sistema.

---

## 🔗 Explicação das Cardinalidades

As cardinalidades representam como as entidades do banco de dados se relacionam entre si. No sistema SAEPD, essas relações foram definidas da seguinte forma:

O **Administrador** possui relação **1:N** com Professor, Turma, Aluno e Responsável, pois um administrador pode cadastrar vários desses registros no sistema.

O **Professor** possui relação **1:N** com Nota, Frequência, Comportamento, Ocorrência e Mensagem, já que pode registrar diversas informações acadêmicas e se comunicar com responsáveis.

O **Responsável** possui relação **1:N** com Aluno, Mensagem e Justificativa, podendo acompanhar mais de um aluno e enviar comunicações à escola.

O **Aluno** possui relação **1:N** com Nota, Frequência, Comportamento e Ocorrência, permitindo o acompanhamento contínuo do seu desempenho escolar.

A **Turma** possui relação **1:N** com Aluno, pois uma turma pode conter vários alunos matriculados.

A **Turma** possui relação **N:1** com Professor, já que um professor pode ministrar mais de uma turma.

A **Mensagem** possui relação **N:1** com Professor ou Responsável, facilitando a comunicação entre as partes envolvidas.

A **Justificativa** possui relação **N:1** com Aluno, permitindo que um aluno tenha várias justificativas registradas.

Essas relações refletem corretamente o funcionamento de um sistema escolar real.

---

## 🏫 Contexto de Uso no Mundo Real

O banco de dados do SAEPD pode ser aplicado em escolas públicas ou privadas para organizar informações acadêmicas, melhorar a comunicação entre escola e família e facilitar o acompanhamento do desempenho dos alunos. A estrutura proposta contribui para uma gestão escolar mais eficiente e transparente.

---

## 👥 Equipe – Grupo 23

Projeto desenvolvido pelo **Grupo 23**, do **Polo Mauriti**, no curso de **Análise e Desenvolvimento de Sistemas – UFCA/CEAD**.

**Ilma** – Documentação e explicação da modelagem do banco de dados, incluindo a descrição das entidades, cardinalidades e contexto de uso do sistema.

**Erislânio Jacó da Silva** – Participação no desenvolvimento do projeto, contribuindo para a organização da modelagem e apoio nas atividades técnicas.

**Gyan Carlos Mateus de Oliveira** – Apoio no desenvolvimento do projeto e na organização geral das entregas.

**José Nataniel Gomes Pereira** – Participação nas atividades técnicas do projeto, auxiliando na elaboração e revisão dos materiais.

**Francisco Jeferson Simplicio de Sousa** – Gerência do repositório no GitHub, controle de versões e integração dos entregáveis da equipe.

---

## 📌 Observação Final

Este banco de dados foi desenvolvido para fins acadêmicos, com foco no aprendizado de modelagem de dados, definição de entidades e cardinalidades, servindo como base para a implementação do sistema SAEPD.

# 🗄️ Banco de Dados – SAEPD

Este repositório contém a modelagem do banco de dados do sistema **SAEPD – Sistema de Acompanhamento Escolar para Pais e Docentes**, desenvolvido como parte do Projeto Integrado do curso de **Análise e Desenvolvimento de Sistemas (UFCA/CEAD – Polo Mauriti)**.

O banco de dados foi projetado para armazenar e organizar informações acadêmicas, administrativas e de comunicação entre a escola, professores, alunos e responsáveis, garantindo integridade, organização e confiabilidade dos dados.

---

## 🎯 Objetivo do Banco de Dados

O objetivo do banco de dados do SAEPD é permitir o armazenamento estruturado de dados essenciais ao funcionamento do sistema, como o cadastro de usuários, informações dos alunos, controle de turmas, registros acadêmicos e comunicação entre escola e família. Essa estrutura facilita o acompanhamento escolar e contribui para uma gestão educacional mais eficiente.

---

## 🗃️ Projeto Físico de Banco de Dados (EP2)

O **projeto físico de banco de dados** é a etapa em que o modelo conceitual é **convertido em tabelas e comandos que um sistema gerenciador de banco de dados (SGBD) pode utilizar**. Isso inclui definir:

- nomes das tabelas;
- tipos de dados para cada coluna;
- **chaves primárias** (PK) e **chaves estrangeiras** (FK);
- restrições de integridade (`NOT NULL`, `UNIQUE`, etc.);
- índices quando necessários para melhorar o desempenho.

Essa fase é importante porque garante que os dados serão **armazenados corretamente e com integridade**, evitando inconsistências e duplicidades, e permitindo que o sistema funcione de forma eficiente.

---

## 🧩 Entidades Principais

As principais entidades do projeto físico do banco de dados SAEPD são:

- **Administrador**
- **Professor**
- **Responsável**
- **Aluno**
- **Turma**
- **Nota**
- **Frequência**
- **Comportamento**
- **Ocorrência**
- **Mensagem**
- **Justificativa**

Cada uma dessas tabelas representa um elemento do ambiente escolar e foi projetada para refletir corretamente os requisitos do sistema.

---

## 🔗 Explicação das Cardinalidades

As relações entre as tabelas foram definidas para garantir coerência e integridade dos dados:

1. **Administrador → (1:N) → Professor, Turma, Aluno e Responsável** – um administrador pode cadastrar muitos usuários e turmas.  
2. **Professor → (1:N) → Nota, Frequência, Comportamento, Ocorrência e Mensagem** – um professor pode registrar muitas avaliações e mensagens.  
3. **Responsável → (1:N) → Aluno, Mensagem e Justificativa** – um responsável pode acompanhar vários alunos e enviar mensagens/justificativas.  
4. **Aluno → (1:N) → Nota, Frequência, Comportamento e Ocorrência** – um aluno tem vários registros de desempenho.  
5. **Turma → (1:N) → Aluno** – uma turma contém vários alunos.  
6. **Turma → (N:1) → Professor** – um professor pode ministrar várias turmas.  
7. **Mensagem → (N:1) → Professor ou Responsável** – várias mensagens podem pertencer a um mesmo usuário.  
8. **Justificativa → (N:1) → Aluno** – várias justificativas podem referir-se a um aluno.

---

## 🏫 Contexto de Uso no Mundo Real

O banco de dados do SAEPD pode ser utilizado em escolas públicas ou privadas para organizar informações acadêmicas, melhorar a comunicação entre escola e família e facilitar o acompanhamento do desempenho dos alunos. A estrutura proposta contribui para uma gestão escolar mais eficiente e transparente.

---

## 👥 Equipe – Grupo 23

Projeto desenvolvido pelo **Grupo 23**, do **Polo Mauriti**, no curso de **Análise e Desenvolvimento de Sistemas – UFCA/CEAD**.

**Ilma Rodrigues V. Azevedo** – Documentação do projeto físico de banco de dados e explicação das entidades e cardinalidades.

**Erislânio Jacó da Silva** – Participação no desenvolvimento geral do projeto.

**Gyan Carlos Mateus de Oliveira** – Contribuição nas atividades gerais de desenvolvimento.

**José Nataniel Gomes Pereira** – Contribuição técnica e revisão de conteúdo.

**Francisco Jeferson Simplicio de Sousa** – Gerência do repositório no GitHub, controle de versões e integração dos entregáveis.

---

## 📌 Observação Final

Este banco de dados foi desenvolvido para fins acadêmicos, com foco no aprendizado de modelagem de dados, definição de entidades e cardinalidades, servindo como base para a implementação do sistema SAEPD.

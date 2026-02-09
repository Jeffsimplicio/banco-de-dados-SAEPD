# 🗄️ Banco de Dados – SAEPD

Este repositório contém a modelagem do banco de dados do sistema **SAEPD – Sistema de Acompanhamento Escolar para Pais e Docentes**, desenvolvido como parte do Projeto Integrado do curso de **Análise e Desenvolvimento de Sistemas (UFCA/CEAD – Polo Mauriti)**.

O banco de dados foi projetado para armazenar, organizar e garantir a integridade de informações acadêmicas, administrativas e de comunicação entre a escola, professores, alunos e responsáveis, assegurando confiabilidade, consistência e segurança dos dados.

---

## 🎯 Objetivo do Banco de Dados

O banco de dados do SAEPD tem como objetivo permitir o armazenamento estruturado de dados essenciais para o funcionamento do sistema, incluindo cadastro de usuários, dados acadêmicos dos alunos, controle de turmas, registros de desempenho escolar e comunicação entre escola e família.

Essa estrutura contribui diretamente para o acompanhamento educacional, apoiando a tomada de decisão e melhorando a gestão escolar.

---

## 🗃️ Projeto Físico de Banco de Dados (EP2)

O **projeto físico de banco de dados** é a etapa onde o modelo conceitual e lógico são convertidos em estruturas reais que podem ser implementadas em um Sistema Gerenciador de Banco de Dados (SGBD), como MySQL, PostgreSQL ou SQL Server.

Nesta fase são definidos:

- Estrutura real das tabelas;
- Tipos de dados adequados para cada coluna;
- **Chaves Primárias (PK)** para identificação única dos registros;
- **Chaves Estrangeiras (FK)** para garantir integridade referencial;
- Restrições de integridade (`NOT NULL`, `UNIQUE`, entre outras);
- Índices para otimização de consultas e melhoria de desempenho.

No projeto SAEPD, o projeto físico foi implementado utilizando **PostgreSQL** e linguagem **SQL**, por meio de comandos **DDL (Data Definition Language)** responsáveis pela criação das tabelas, definição de chaves primárias, estrangeiras e restrições de integridade.

O projeto físico é essencial porque garante que os dados sejam armazenados de forma correta, organizada e segura, evitando inconsistências, redundâncias e falhas no funcionamento do sistema.

---

## 💡 Importância do Projeto Físico para Programadores

Para estudantes e desenvolvedores, compreender o projeto físico é fundamental porque permite:

- Desenvolver sistemas mais performáticos;
- Garantir integridade e consistência dos dados;
- Facilitar manutenção e evolução do sistema;
- Aproximar o conhecimento teórico da prática profissional;
- Facilitar integração entre banco de dados e aplicações backend.

Sem um projeto físico bem estruturado, mesmo sistemas bem desenvolvidos podem apresentar problemas de desempenho, segurança e confiabilidade.

O projeto também considerou princípios básicos de **normalização** e **integridade referencial**, com o objetivo de evitar redundâncias e inconsistências nos dados.

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

Cada tabela foi projetada considerando os requisitos funcionais do sistema e princípios de organização e integridade de dados.

---

## 🔗 Relacionamentos e Cardinalidades

As relações entre as tabelas foram definidas para garantir coerência e integridade dos dados:

1. **Administrador → (1:N) → Professor, Turma, Aluno e Responsável**  
   Um administrador pode cadastrar vários usuários e turmas.

2. **Professor → (1:N) → Nota, Frequência, Comportamento, Ocorrência e Mensagem**  
   Um professor pode registrar múltiplos dados acadêmicos e comunicacionais.

3. **Responsável → (1:N) → Aluno, Mensagem e Justificativa**  
   Um responsável pode acompanhar vários alunos e enviar comunicações.

4. **Aluno → (1:N) → Nota, Frequência, Comportamento e Ocorrência**  
   Um aluno possui múltiplos registros de desempenho.

5. **Turma → (1:N) → Aluno**  
   Uma turma pode possuir vários alunos.

6. **Professor → (1:N) → Turma**  
   Um professor pode lecionar em várias turmas.

7. **Mensagem → (N:1) → Professor ou Responsável**  
   Várias mensagens podem estar associadas a um mesmo usuário.

8. **Justificativa → (N:1) → Aluno**  
   Um aluno pode possuir várias justificativas registradas.

---

## 🔒 Integridade e Confiabilidade dos Dados

O banco foi projetado priorizando:

- Integridade referencial entre tabelas;
- Redução de redundância de dados;
- Aplicação de restrições de validação;
- Organização lógica das informações;
- Facilidade de manutenção e escalabilidade.

Foram considerados princípios básicos de normalização para garantir melhor organização e evitar inconsistências.

---

## 🏫 Contexto de Uso no Mundo Real

O banco de dados SAEPD pode ser aplicado em instituições de ensino públicas ou privadas para organização de informações acadêmicas, melhoria da comunicação entre escola e família e acompanhamento do desempenho dos alunos.

A estrutura proposta contribui para uma gestão educacional mais eficiente, transparente e confiável.

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

Este banco de dados foi desenvolvido para fins acadêmicos, com foco no aprendizado de modelagem de dados, definição de entidades, relacionamentos e implementação física do banco de dados, servindo como base para a futura implementação do sistema SAEPD.

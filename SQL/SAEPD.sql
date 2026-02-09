CREATE TABLE administrador (
    id_adm SERIAL PRIMARY KEY,
    nome character varying(100) NOT NULL,
    email character varying(100) NOT NULL UNIQUE,
    login character varying(100) NOT NULL UNIQUE,
    senha character varying(255) NOT NULL
);

CREATE TABLE perfil (
    id_perfil SERIAL PRIMARY KEY,
    tipo_usuario character varying(20),
    CONSTRAINT perfil_tipo_usuario_check CHECK (tipo_usuario IN ('professor', 'responsavel'))
);



CREATE TABLE professor (
    id_professor SERIAL PRIMARY KEY,
    nome character varying(100) NOT NULL UNIQUE,
    email character varying(100) NOT NULL UNIQUE,
    disciplina character varying(100) NOT NULL,
    login character varying(100) NOT NULL UNIQUE,
    senha character varying(255) NOT NULL,
    id_adm integer REFERENCES public.administrador(id_adm),
    id_perfil integer UNIQUE REFERENCES public.perfil(id_perfil) ON DELETE CASCADE
);

CREATE TABLE responsavel (
    id_responsavel SERIAL PRIMARY KEY,
    nome character varying(100) NOT NULL,
    email character varying(100) NOT NULL UNIQUE,
    telefone character varying(20),
    login character varying(50) NOT NULL UNIQUE,
    senha character varying(255) NOT NULL,
    id_adm integer REFERENCES public.administrador(id_adm),
    id_perfil integer UNIQUE REFERENCES public.perfil(id_perfil) ON DELETE CASCADE
);

CREATE TABLE turma (
    id_turma SERIAL PRIMARY KEY,
    nome character varying(100) NOT NULL,
    serie character varying(100) NOT NULL,
    turno character varying(100) NOT NULL,
    id_professor integer REFERENCES public.professor(id_professor),
    id_adm integer REFERENCES public.administrador(id_adm)
);

CREATE TABLE aluno (
    id_aluno SERIAL PRIMARY KEY,
    nome character varying(100) NOT NULL,
    data_nascimento date,
    id_turma integer REFERENCES public.turma(id_turma),
    id_responsavel integer REFERENCES public.responsavel(id_responsavel)
);


CREATE TABLE comportamento (
    id_comportamento SERIAL PRIMARY KEY,
    id_aluno integer REFERENCES public.aluno(id_aluno),
    id_professor integer REFERENCES public.professor(id_professor),
    avaliacao character varying(50),
    observacao text,
    data date
);

CREATE TABLE frequencia (
    id_frequencia SERIAL PRIMARY KEY,
    id_aluno integer REFERENCES public.aluno(id_aluno),
    data date,
    presente boolean
);

CREATE TABLE justificativa (
    id_justificativa SERIAL PRIMARY KEY,
    id_responsavel integer REFERENCES public.responsavel(id_responsavel),
    id_aluno integer REFERENCES public.aluno(id_aluno),
    tipo character varying(50),
    descricao text,
    data date,
    anexo character varying(255)
);

CREATE TABLE mensagem (
    id_mensagem SERIAL PRIMARY KEY,
    tipo_remetente character varying(20),
    assunto character varying(150),
    conteudo text,
    data_envio date DEFAULT CURRENT_DATE,
    lida boolean DEFAULT false,
    id_remetente integer NOT NULL REFERENCES public.perfil(id_perfil),
    id_destinatario integer NOT NULL REFERENCES public.perfil(id_perfil)
);

CREATE TABLE nota (
    id_nota SERIAL PRIMARY KEY,
    id_aluno integer REFERENCES public.aluno(id_aluno),
    id_professor integer REFERENCES public.professor(id_professor),
    disciplina character varying(50),
    valor numeric(4,2),
    data date
);

CREATE TABLE ocorrencia (
    id_ocorrencia SERIAL PRIMARY KEY,
    id_aluno integer REFERENCES public.aluno(id_aluno),
    id_professor integer REFERENCES public.professor(id_professor),
    tipo character varying(50),
    descricao text,
    data date
);

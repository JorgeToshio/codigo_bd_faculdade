create database db_sistema_faculdade; # Criei uma base de dados
show databases; # mostra todas bases de dados criada localmente
use db_sistema_faculdade; # Aqui  estou ativando o banco de dados para ser usado, toda alteração depois daqui 👇🏽 sera feita na database db_sistema_faculdade

#*********************************************************************************************************************************************
create table tbl_alunos ( #Criando a tabela alunos, no final vou criar as chaves extrangeiras
id_matricula int not null primary key auto_increment,
id_curso INT not null,
data_nascimento DATE not null
);
alter table tbl_alunos # habilitando a alteração na tabela
add constraint fk_cursos_alunos foreign key (id_curso) references tbl_cursos(id_curso); # vinculando chave extrangeira na tabela atual.
#***********************************************************************************************************************************
create table tbl_telefone(
id_telefone INT not null auto_increment primary key,
id_matricula INT not null, #Chave extrangeira da tbl_alunos
telefone VARCHAR(20) not null
);
desc tbl_telefone;# para verificar a tabela
 alter table tbl_telefone #vinculando atributo como chave extrangeira
 add constraint fk_alunos foreign key (id_matricula) references tbl_alunos(id_matricula);
#***********************************************************************************************************************************
create table tbl_email(
id_email INT not null auto_increment primary key,
email VARCHAR(100) not null,
id_matricula INT not null
);

desc tbl_email; # para verificar a tabela
alter table tbl_email
add constraint fk_alunos_email foreign key (id_matricula) references tbl_alunos(id_matricula);
#*********************************************************************************************************************************************
create table tbl_enderecos(
id_endereco INT not null auto_increment primary key,
pais VARCHAR(50) not null,
estado VARCHAR(50) not null,
cep VARCHAR(20) not null,
cidade VARCHAR(100) not null,
logradouro VARCHAR(100) not null,
bairro VARCHAR(50) not null,
numero VARCHAR(10) not null,
id_matricula INT not null
);
desc tbl_enderecos; # para verificar a tabela
alter table tbl_enderecos
add constraint fk_alunos_enderecos foreign key (id_matricula) references tbl_alunos(id_matricula); 
#*********************************************************************************************************************************************
create table tbl_alunos_enderecos(
aluno_id INT,
endereco_id INT,
tipo_endereco ENUM ('Residencial', 'Comercial', 'Outros'),
primary key (aluno_id, endereco_id),
foreign key (aluno_id) references tbl_alunos(id_matricula),
foreign key (endereco_id) references tbl_enderecos(id_endereco)
);
desc tbl_alunos_enderecos; # para verificar a tabelatbl_cursostbl_cursos
#*********************************************************************************************************************************************
create table tbl_cursos(
id_curso INT not null primary key auto_increment,
nome_curso VARCHAR(100) not null,
descricao TEXT not null,
carga_horaria INT not null,
pre_requisito TEXT not null
);

#*********************************************************************************************************************************************
create table tbl_materias(
materia_id INT primary key auto_increment,
nome_materia VARCHAR(100) not null,
ementa TEXT not null,
carga_horaria INT not null,
id_professor INT not null,
id_curso INT not null
);
desc tbl_materias;
alter table tbl_materias add constraint fk_professores_materias foreign key (id_professor) references tbl_professores (id_professor);
alter table tbl_materias add constraint fk_cursos_materias foreign key (id_curso) references tbl_cursos(id_curso);
#*********************************************************************************************************************************************
create table tbl_professores (
id_professor INT primary key auto_increment,
nome_professor VARCHAR(100) not null,
departamento VARCHAR(100) not null,
titulacao VARCHAR(50) not null
);
#*********************************************************************************************************************************************
create table tbl_turmas(
id_turma INT auto_increment primary key, 
id_curso INT not null,
horario VARCHAR(20) not null,
sala VARCHAR(20) not null
);
alter table tbl_turmas add constraint fk_cursos_turmas foreign key (id_curso) references tbl_cursos(id_curso);
desc tbl_turmas;
#*********************************************************************************************************************************************
create table tbl_notas (
id_nota INT primary key not null auto_increment,
id_matricula INT not null,
materia_id INT not null,
nota DECIMAL(4,2) not null,
data_avaliacao DATE not null,
semestre INT not null
);	
alter table tbl_notas add constraint fk_alunos_notas foreign key (id_matricula) references tbl_alunos(id_matricula);
alter table tbl_notas add constraint fk_materia_notas foreign key(materia_id) references tbl_materias(materia_id);
desc tbl_notas;
#*********************************************************************************************************************************************

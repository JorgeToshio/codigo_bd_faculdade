#Inbserindo dados nas tabelas#
use  db_sistema_faculdade;

#Inserindo dados na tbl_cursos********************************************************************************************************************
insert into tbl_cursos (nome_curso, descricao, carga_horaria, pre_requisito)
values
('Analise e desenvolvimento de sistemas',	'curso para programadores', 300, 'Ensino médio completo'),
('Logística',	'Prepara profissional para gestão de estoques', 2400, 'Ensino médio completo'),
('Administração',	'curso voltado para administração de empresas', 4000, 'Ensino médio completo');
select * from tbl_cursos;
#Inserindo dados na tbl_professores********************************************************************************************************************
insert into tbl_professores (nome_professor, departamento, titulacao)
values
('Gisela Forato ','Analise e desenvolvimento de sistemas','Mestrado'),
('Josué Francisco ','Logística','Mestrado'),
('Paula Maximus ','Administração','Mestrado');
select*from tbl_professores;

#Inserindo dados na tbl_alunos********************************************************************************************************************
insert into tbl_alunos (nome_aluno, data_nascimento, id_curso)
values
('Jorge Toshio', '1981-06-04',2),
('Francisco ','1970-10-10',1),
('Josiane Maria ','1980-01-10',3);
select*from tbl_alunos;

#Inserindo dados na tbl_telefone********************************************************************************************************************
insert into tbl_telefone (telefone, id_matricula)
values
('090-2215-3636',1),
('070-2259-5454',2),
('080-5515-9669',3);
select*from tbl_telefone;

#Inserindo dados na tbl_email********************************************************************************************************************
insert into tbl_email (email, id_matricula)
values
('jtukaizensabe@gmail.com',1),
('jseu@hotmail.com',2),
('josibela@gmail.com',3);
select*from tbl_email;

#Inserindo dados na tbl_enderecos********************************************************************************************************************
insert into tbl_enderecos (pais, estado, cep, cidade, logradouro, bairro, numero, id_matricula)
values
('Brasil','Sp','18550-000','Sorocaba','Rua do girassol','Felicidade','7',1),
('Brasil','Sp','18551-000','Boituva','Rua Centro','Coronel vieira','8',2),
('Brasil','Sp','18550-000','Sorocaba','Rua do girassol','Felicidade','7',3);
select*from tbl_enderecos;

#Inserindo dados na tbl_aluno_enderecos********************************************************************************************************************
insert into tbl_alunos_enderecos (aluno_id, endereco_id, tipo_endereco)
values
(1,1,'Residencial'),
(2,2,'Residencial'),
(3,3,'Residencial');
select*from tbl_alunos_enderecos;
#Inserindo dados na tbl_turmas************************************************************************************************************************
insert into tbl_turmas (id_curso, horario, sala)
values
(1,'Manhã',1),
(1,'Noite',1),
(2,'Manhã',2),
(2,'Noite',2),
(3,'Manhã',3),
(3,'Noite',3);
select* from tbl_turmas ;

#Inserindo dados na tbl_materias*****************************************************************************************************************************
insert into tbl_materias(nome_materia, ementa, carga_horaria, id_professor, id_curso)
values
('Introdução à Programação', 'Linguagem de programação C, variáveis, operadores, estruturas de controle', 75, 1, 1),
('Banco de Dados', 'Modelagem de dados, SQL, normalização', 60, 1, 1),
('Engenharia de Software', 'Ciclo de vida de software, metodologias ágeis, UML', 90, 1, 1),
('Gestão de Estoques', 'Modelos de gestão de estoques, controle de inventário', 60, 2, 2),
('Logística Internacional', 'Incoterms, documentação, transporte internacional', 75, 2, 2),
('Cadeia de Suprimentos', 'Planejamento da cadeia de suprimentos, otimização logística', 90, 2, 2),
('Teoria das Organizações', 'Estruturas organizacionais, cultura organizacional', 60, 3, 3),
('Contabilidade Gerencial', 'Análise de custos, tomada de decisões', 75, 3, 3),
('Marketing', 'Planejamento de marketing, mix de marketing', 90, 3, 3);
select*from tbl_materias;



#Inserindo dados na tbl_notas*****************************************************************************************************************************
insert into tbl_notas (id_matricula, materia_id, nota, data_avaliacao, semestre)
values
(1,1,10,'2025-01-01','2025-1'),
(2,2,9.5,'2025-01-01','2025-1'),
(3,3,10,'2025-01-01','2025-1');
select*from tbl_notas;
desc tbl_notas;

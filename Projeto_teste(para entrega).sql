create table usuarios(
  id int primary key auto_increment,
  nome varchar(255) not null,
  funcao enum('adm','recep','garcon','cerimonialista'),
  senha varchar(16) not null,
  salario decimal(10,2) not null,
  cpf varchar(14) not null,
  email varchar(255) not null,
  data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  data_atualizacao date,
  usuario_criador int not null,
  FOREIGN KEY (usuario_criador) REFERENCES usuarios(id)
);

create table convidados(
  id int primary key auto_increment,
  nome varchar(255) not null,
  sobrenome varchar(255) not null,
  telefone int unique not null,
  mesa int unique not null,
  situacao enum('presente','ausente'),
  data_criacao timestamp default current_timestamp,
  data_atualizacao date,
  id_usuarios int not null,
  foreign key (id_usuarios) references usuarios(id)
);

create table checkin(
  id int primary key auto_increment,
  id_convidado int not null,
  id_usuarios int not null,
  data_hora timestamp default current_timestamp,
  foreign key (id_convidado) references convidados(id),
  foreign key (id_usuarios) references usuarios(id)
);

INSERT INTO usuarios (nome, funcao, senha, salario, cpf, email, usuario_criador) VALUES
('Ana Souza','adm','senha123',4500.00,'111.111.111-11','ana.souza@email.com',1),
('Carlos Lima','recep','senha123',2500.00,'222.222.222-22','carlos.lima@email.com',1),
('Helena Duarte','garcon','senha123',5200.00,'181.181.181-18','helena.duarte@email.com',1),
('André Teixeira','recep','senha123',3100.00,'191.191.191-19','andre.teixeira@email.com',1),
('Marina Figueiredo','garcon','senha123',2400.00,'212.212.212-21','marina.figueiredo@email.com',1),
('Rodrigo Pinto','cerimonialista','senha123',3600.00,'222.222.222-22','rodrigo.pinto@email.com',1),
('Patrícia Lopes','garcon','senha123',5300.00,'232.232.232-23','patricia.lopes@email.com',1),
('Eduardo Azevedo','recep','senha123',3200.00,'242.242.242-24','eduardo.azevedo@email.com',1);

INSERT INTO convidados (nome, sobrenome, telefone, mesa, situacao, id_usuarios) VALUES
('Paulo','Silva',111111111,1,'presente',1),
('Fernanda','Costa',222222222,2,'ausente',2),
('Ricardo','Melo',333333333,3,'presente',3),
('Juliana','Pires',444444444,4,'presente',4),
('Clara','Dias',555555555,5,'ausente',5),
('Mateus','Rocha',666666666,6,'presente',6),
('Laura','Martins',777777777,7,'presente',7),
('Thiago','Nunes',888888888,8,'ausente',8),
('Beatriz','Gomes',999999999,9,'presente',1),
('Felipe','Santos',101010101,10,'presente',2),
('Camila','Ferreira',121212121,11,'ausente',3),
('Rafael','Oliveira',131313131,12,'presente',4),
('Sofia','Almeida',141414141,13,'presente',5),
('Daniel','Barbosa',151515151,14,'ausente',6),
('Isabela','Ribeiro',161616161,15,'presente',7),
('Gabriel','Costa',171717171,16,'presente',8),
('Luana','Mendes',181818181,17,'ausente',1),
('Pedro','Henrique',191919191,18,'presente',2),
('Manuela','Castro',202020202,19,'presente',3),
('Lucas','Carvalho',212121212,20,'ausente',4),
('Helena','Duarte',222222223,21,'presente',5),
('André','Teixeira',232323232,22,'presente',6),
('Marina','Figueiredo',242424242,23,'ausente',7),
('Rodrigo','Pinto',252525252,24,'presente',8),
('Patrícia','Lopes',262626262,25,'presente',1),
('Eduardo','Azevedo',272727272,26,'ausente',2),
('Joana','Silveira',282828282,27,'presente',3),
('Marcelo','Vieira',292929292,28,'presente',4),
('Tatiane','Souza',303030303,29,'ausente',5),
('Bruno','Machado',313131313,30,'presente',6);

INSERT INTO checkin (id_convidado, id_usuarios) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,1),
(10,2),
(11,3),
(12,4),
(13,5),
(14,6),
(15,7),
(16,8),
(17,1),
(18,2),
(19,3),
(20,4),
(21,5),
(22,6),
(23,7),
(24,8),
(25,1),
(26,2),
(27,3),
(28,4),
(29,5),
(30,6);

select * from usuarios;

select * from convidados;

select * from checkin;
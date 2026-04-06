create table Administrativo(
  id int auto_increment primary key,
  nome varchar(100) not null,
  email varchar(100) not null unique,
  cpf varchar(11) not null unique,
  senha varchar(16) not null,
  funcao enum('administrador','recepcionista'),
  data_criacao timestamp default current_timestamp,
  data_atualizacao date,
  usuario_criador int not null,
  foreign key (usuario_criador) references Administrativo(id)
);

create table Convidados(
  id int auto_increment primary key,
  nome varchar(100) not null,
  sobrenome varchar(100) not null,
  email varchar(100) not null unique,
  telefone int not null unique,
  mesa int not null unique,
  situacao enum('presente','ausente'),
  id_administrativo int not null,
  foreign key (id_administrativo) references Administrativo(id)
);

create table checkin(
  id int auto_increment primary key,
  id_convidado int not null,
  id_administrativo int not null,
  data_criacao timestamp default current_timestamp,
  foreign key (id_convidado) references Convidados(id),
  foreign key (id_administrativo) references Administrativo(id)
);


INSERT INTO Administrativo (nome, email, cpf, senha, funcao, usuario_criador)
VALUES
('Carlos Silva','carlos.silva@email.com','11111111111','senha123','administrador',1),
('Fernanda Souza','fernanda.souza@email.com','22222222222','senha123','administrador',1),
('João Pereira','joao.pereira@email.com','33333333333','senha123','recepcionista',1),
('Mariana Costa','mariana.costa@email.com','44444444444','senha123','recepcionista',1),
('Ricardo Oliveira','ricardo.oliveira@email.com','55555555555','senha123','recepcionista',1),
('Ana Paula Lima','ana.lima@email.com','66666666666','senha123','recepcionista',1),
('Bruno Almeida','bruno.almeida@email.com','77777777777','senha123','recepcionista',1),
('Juliana Santos','juliana.santos@email.com','88888888888','senha123','recepcionista',1),
('Felipe Rodrigues','felipe.rodrigues@email.com','99999999999','senha123','recepcionista',1),
('Camila Martins','camila.martins@email.com','10101010101','senha123','recepcionista',1);

INSERT INTO Convidados (nome, sobrenome, email, telefone, mesa, situacao, id_administrativo)
VALUES
('André','Ferreira','andre.ferreira@email.com',111111111,1,'presente',3),
('Beatriz','Mendes','beatriz.mendes@email.com',111111112,2,'presente',3),
('Cláudio','Barbosa','claudio.barbosa@email.com',111111113,3,'presente',4),
('Daniela','Monteiro','daniela.monteiro@email.com',111111114,4,'presente',4),
('Eduardo','Cardoso','eduardo.cardoso@email.com',111111115,5,'presente',5),
('Fabiana','Ribeiro','fabiana.ribeiro@email.com',111111116,6,'presente',5),
('Gabriel','Teixeira','gabriel.teixeira@email.com',111111117,7,'presente',6),
('Helena','Dias','helena.dias@email.com',111111118,8,'presente',6),
('Igor','Batista','igor.batista@email.com',111111119,9,'presente',7),
('Jéssica','Campos','jessica.campos@email.com',111111120,10,'presente',7),
('Lucas','Araujo','lucas.araujo@email.com',111111121,11,'presente',8),
('Marcela','Carvalho','marcela.carvalho@email.com',111111122,12,'presente',8),
('Natália','Gomes','natalia.gomes@email.com',111111123,13,'presente',9),
('Otávio','Fernandes','otavio.fernandes@email.com',111111124,14,'presente',9),
('Patrícia','Moura','patricia.moura@email.com',111111125,15,'presente',10),
('Rafael','Nascimento','rafael.nascimento@email.com',111111126,16,'presente',10),
('Sabrina','Vieira','sabrina.vieira@email.com',111111127,17,'presente',3),
('Thiago','Cunha','thiago.cunha@email.com',111111128,18,'presente',4),
('Ursula','Machado','ursula.machado@email.com',111111129,19,'presente',5),
('Vinícius','Barros','vinicius.barros@email.com',111111130,20,'presente',6),
('William','Freitas','william.freitas@email.com',111111131,21,'presente',7),
('Ximena','Santos','ximena.santos@email.com',111111132,22,'presente',8),
('Yasmin','Martins','yasmin.martins@email.com',111111133,23,'presente',9),
('Zeca','Alves','zeca.alves@email.com',111111134,24,'presente',10),
('Amanda','Pinto','amanda.pinto@email.com',111111135,25,'presente',3),
('Bruna','Silveira','bruna.silveira@email.com',111111136,26,'presente',4),
('Caio','Correia','caio.correia@email.com',111111137,27,'presente',5),
('Débora','Farias','debora.farias@email.com',111111138,28,'presente',6),
('Enzo','Lopes','enzo.lopes@email.com',111111139,29,'presente',7),
('Fernanda','Dias','fernanda.dias@email.com',111111140,30,'presente',8);

INSERT INTO checkin (id_convidado, id_administrativo)
VALUES
(1,3),(2,3),(3,4),(4,4),(5,5),(6,5),(7,6),(8,6),(9,7),(10,7),
(11,8),(12,8),(13,9),(14,9),(15,10),(16,10),(17,3),(18,4),(19,5),(20,6),
(21,7),(22,8),(23,9),(24,10),(25,3),(26,4),(27,5),(28,6),(29,7),(30,8);
create schema trabalho_3;
use trabalho_3;

create table advocacia (
ID int primary Key not null auto_increment,
nome Varchar(100),
telefone varchar(15)
);


create table advocacia_endereco (
id int primary key not null auto_increment,
id_advocacia int,
rua varchar(100),
municipio varchar(100),
cidade varchar(100),
estado varchar(100),
cep varchar(12),
numero varchar(20),
foreign key (id_advocacia) references advocacia(ID),
unique (id_advocacia)
);

create table especialidade_advogado (
id int primary key not null auto_increment,
descricao varchar(100)
);

create table advogado (
id int primary key not null auto_increment,
id_advocacia int,
id_especialidade int,
nome varchar(100),
cpf int(11),
telefone varchar(15),
foreign key (id_advocacia) references advocacia(id),
foreign key (id_especialidade) references especialidade_advogado(id)
);

create table endereco_advogado (
id int primary key not null auto_increment,
id_advogado int,
rua varchar(100),
municipio varchar(100),
cidade varchar(100),
estado varchar(100),
cep varchar(12),
numero varchar(10),
foreign key (id_advogado) references advogado(id),
unique (id_advogado)
);

create table cliente (
id int primary key not null auto_increment,
nome varchar(100),
cpf int(11),
telefone varchar(15)
);

create table endereco_cliente (
id int primary key not null auto_increment,
id_cliente int,
rua varchar(100),
municipio varchar(100),
cidade varchar(100),
estado varchar(100),
cep varchar(12),
numero varchar(20),
foreign key (id_cliente) references cliente(id),
unique (id_cliente)
);

create table caso (
id int primary key not null auto_increment,
id_cliente int,
id_advogado int,
descricao varchar(100),
foreign key (id_cliente) references cliente(id),
foreign key (id_advogado) references advogado(id)
);


create table atendimento (
id int primary key not null auto_increment,
id_caso int,
id_cliente int,
id_advogado int,
data_atendimento date,
descricao varchar(100),
foreign key (id_caso) references caso(id),
foreign key (id_cliente) references cliente(id),
foreign key (id_advogado) references advogado(id)
);

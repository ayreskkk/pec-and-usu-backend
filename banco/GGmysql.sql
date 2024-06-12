drop database if exists Estoque; 
create database Estoque;
use Estoque;

CREATE table Usuario (
usuario_id INT PRIMARY KEY NOT NULL,
nome varchar(45),
email varchar(45),
senha varchar(45),
endereço varchar(45),
contato int,
tipo ENUM('usuario', 'funcionario') NOT NULL,
id_funcionario INT,
    
FOREIGN KEY (id_funcionario) REFERENCES Funcionario (funcionario_id)
);



CREATE table Peça (
peça_id INT PRIMARY KEY NOT NULL,
nome varchar(45),
modelo varchar(45),
ano varchar (45),
qnt_estoque int
);

CREATE table Pedido (
pedido_id INT PRIMARY KEY NOT NULL,
data_pedido date,
stats varchar(45),
id_item INT,

foreign key(id_item) references ItemPedido (item_id)
);

CREATE table ItemPedido (
item_id INT PRIMARY KEY NOT NULL,
quantidade varchar(45),
id_peça	INT,

foreign key(id_peça) references Peça (peça_id)
);

CREATE table Compras (
compra_id INT PRIMARY KEY NOT NULL,
id_pedido INT,
id_usuario INT,
data_compra date,
stats varchar(45),
método varchar(45),

foreign key(id_pedido) references Pedido (pedido_id),
foreign key(id_usuario) references Usuario (usuario_id)
);
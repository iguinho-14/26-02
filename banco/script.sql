CREATE DATABASE Pizzaria_Estelar;
 
use Pizzaria_Estelar;
 
-- --------------------------------------------------------
 
-- Estrutura da tabela `produtos`
 
CREATE TABLE produtos (
 
  id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
 
  tipo_id INT NOT NULL,
 
  descricao VARCHAR(250) NOT NULL,
 
  valor_unit DECIMAL(10,2) DEFAULT NULL,
 
  resumo VARCHAR(60) DEFAULT NULL,
 
  imagem VARCHAR(50) DEFAULT NULL,
 
  destaque ENUM('Sim', 'Não') NOT NULL
 
);
 
-- Estrutura da tabela `clientes`
 
CREATE TABLE clientes (
 
  id INT AUTO_INCREMENT PRIMARY KEY,
 
  nome VARCHAR(100) NOT NULL,
 
  cpf CHAR(11) UNIQUE NOT NULL,
 
  email VARCHAR(100) NOT NULL UNIQUE,
 
  telefone VARCHAR(15),
 
  endereco VARCHAR(255),
 
  data_nascimento DATE
 
);
 
-- Estrutura da tabela `enderecos`
 
CREATE TABLE enderecos (
 
  id INT AUTO_INCREMENT PRIMARY KEY,
 
  cliente_id INT,
 
  numero VARCHAR(10) NOT NULL,
 
  complemento VARCHAR(100),
 
  bairro VARCHAR(100) NOT NULL,
 
  cidade VARCHAR(100) NOT NULL,
 
  estado VARCHAR(50) NOT NULL,
 
  cep VARCHAR(10) NOT NULL,
 
  FOREIGN KEY (cliente_id) REFERENCES clientes(id)
 
);
 
-- Inserindo dados na tabela `produtos`
 
INSERT INTO produtos (tipo_id, descricao, valor_unit, resumo, imagem, destaque) VALUES
 
(1, 'Pizza de Mussarela', 45.00, 'Pizza com queijo mussarela explosão de sabores', 'pizza_mussarela.jpg', 'Sim'),
 
(2, 'Pizza de Calabresa', 45.00, 'Uma pizza com deliciosas fatias de calabresa', 'pizza_calabresa.jpg', 'Sim'),
 
(3, 'Pizza de Frango com catupiry', 50.90, 'A mais pedida de nosso cardápio com frango desfiado e com catupiry de excelência', 'pizza_frango_catupiry.jpg', 'Sim'),
 
(4, 'Pizza de Cheddar & Bacon', 50.90, 'Queijo, molho sabor queijo cheddar, bacon e orégano.', 'pizza_bacon.jpg', 'Não'),
 
(5, 'Pizza Portuguesa', 53.90, 'Uma pizza bem recheada com queijo mussarela, fatias de presunto, fatias de ovo cozido, cebolas em rodelas e pimentão', 'pizza_portuguesa.jpg', 'Não'),
 
(6, 'Pizza de Quatro queijos', 57.60, 'Queijo Mussarela, Provolone, Brie e cubos de queijo coalho.', 'Pizza_queijos.jpg', 'Não'),
 
(7, 'Pizza a Moda da Casa', 36.28, 'Uma pizza criada por nós feita de Carne seca, catupiry, Cheddar e Milho.', 'pizza_casa.jpg', 'Sim'),
 
(8, 'Pizza de Nutella', 58.90, 'Uma pizza que vai Nutella, morango, leite ninho, leite moça e granulado.', 'pizza_nutela.jpg', 'Não'),
 
(9, 'Pizza de Kinder', 67.95, 'Feito com chocolate ao leite Nestlé, pedaços de Kinder Ovo e Kinder Bueno', 'pizza_kinder.jpg', 'Não'),
 
(10, 'Calzone Margherita', 22.90, 'Com molho de tomate, queijo mozzarella e manjericão fresco. Simples e deliciosa!', 'calzone_.jpg', 'Não'),
 
(11, 'Calzone Calabresa', 20.60, 'Com linguiça calabresa, cebola, azeitonas e molho especial.', 'calzone_.jpg', 'Não'),
 
(12, 'Calzone de Frango', 20.60, 'Frango desfiado com requeijão, milho e azeitonas verdes.', 'calzone_.jpg', 'Sim'),
 
(13, 'Coca-Cola 350ml', 8.90, 'Coca-Cola lata 350ml', 'coca_cola.jpg', 'Não'),
 
(14, 'Coca-Cola Zero 350ml', 8.90, 'Coca-Cola lata 350ml', 'coca_coca_zero.jpg', 'Não'),
 
(15, 'Fanta Laranja 350ml', 8.90, 'Fanta Laranja lata 350ml', 'fanta_laranja.jpg', 'Não'),
 
(16, 'Guarana 350ml', 8.90, 'Guarana Antarctica lata 350ml', 'guarana.jpg', 'Não'),
 
(17, 'Guarana Zero 350ml', 8.90, 'Guarana Antarctica Zero lata 350ml', 'guarana_zero.jpg', 'Não'),
 
(18, 'Fanta Uva 350ml', 8.90, 'Fanta Uva lata 350ml', 'fanta_uva.jpg', 'Não'),
 
(19, 'H2O', 8.90, 'Refrigerante H2O 500ml', 'h2o.jpg', 'Não'),
 
(20, 'H2O Limão 500ml', 8.90, 'Refrigerante H2O limoneto 500ml', 'h2o_limoneto.jpg', 'Não'),
 
(21, 'Esfiha Calabresa com Mussarela', 3.73, 'Esfiha de calabresa com mussarela', 'calabresa_mussarela.jpg', 'Não'),
 
(22, 'Esfiha Carne', 2.99, 'Esfiha de carne', 'carne.jpg', 'Não'),
 
(23, 'Esfiha Carne Coalhada', 3.34, 'Esfiha de carne com queijo coalhada', 'carne_coalhada.jpg', 'Não'),
 
(24, 'Esfiha de Espinafre', 4.00, 'Esfiha de espinafre', 'Espinafre.jpg', 'Não'),
 
(25, 'Esfiha de Frango', 3.50, 'Esfiha de frango', 'frango.jpg', 'Não'),
 
(26, 'Esfiha Frango Cremely', 5.50, 'Esfiha de frango Cremely', 'frango_cremely.jpg', 'Não'),
 
(27, 'Esfiha Italiana', 4.00, 'Esfiha italiana', 'italiana.jpg', 'Não'),
 
(28, 'Esfiha de Quatro Queijos', 5.00, 'Esfiha de quatro queijos com Queijo Mussarela, Provolone, Brie e cubos de queijo coalho.', 'quatro_queijo.jpg', 'Não'),
 
(29, 'Esfiha de Queijo', 2.99, 'Esfiha de queijo mussarela', 'queijo.jpg', 'Não');
 
-- Estrutura da tabela `tipos`
 
CREATE TABLE tipos (
 
  id INT AUTO_INCREMENT PRIMARY KEY,
 
  sigla VARCHAR(3) NOT NULL,
 
  rotulo VARCHAR(15) NOT NULL
 
);
 
-- Inserindo dados na tabela `tipos`
 
INSERT INTO tipos (sigla, rotulo) VALUES
 
('Piz', 'Pizza'),
 
('Esf', 'Esfihas'),
 
('Cal', 'Calzone'),
 
('Bro', 'Brotos'),
 
('Beb', 'Bebidas');
 
-- Estrutura para tabela `usuarios`
 
CREATE TABLE usuarios (
 
  id INT AUTO_INCREMENT PRIMARY KEY,
 
  login VARCHAR(30) NOT NULL UNIQUE,
 
  senha VARCHAR(32) NOT NULL,
 
  nivel ENUM('sup', 'com') NOT NULL
 
);
 
-- Inserindo dados na tabela `usuarios`
 
INSERT INTO usuarios (login, senha, nivel) VALUES
 
('Igor Ferro', MD5('1234'), 'sup'),
 
('Igor', MD5('456'), 'sup'),
 
('Allan', MD5('789'), 'sup'),
 
('Pedro', MD5('1234'), 'sup');
 
-- Chave estrangeira para relacionar `produtos` com `tipos`
 
-- Criando a view `vw_produtos`
 
CREATE VIEW vw_produtos AS
 
  SELECT p.id, p.tipo_id, t.sigla, t.rotulo, p.descricao, p.resumo, p.valor_unit AS valor, p.imagem, p.destaque
 
  FROM produtos p
 
  JOIN tipos t ON p.tipo_id = t.id;
 
-- Criando procedimentos armazenados
 
DELIMITER $$
 
CREATE PROCEDURE sp_clientes_insert(
 
  spnome VARCHAR(100),
 
  spcpf CHAR(11),
 
  sptelefone CHAR(14),
 
  spemail VARCHAR(60),
 
  spdata_nasc DATE
 
)
 
BEGIN
 
  INSERT INTO clientes (nome, cpf, email, telefone, endereco, data_nascimento)
 
  VALUES (spnome, spcpf, spemail, sptelefone, NULL, spdata_nasc);
 
  SELECT * FROM clientes WHERE id = LAST_INSERT_ID();
 
END $$
 
CREATE PROCEDURE sp_clientes_update(
 
  spid INT,
 
  spnome VARCHAR(100),
 
  sptelefone VARCHAR(14),
 
  spemail VARCHAR(60)
 
)
 
BEGIN
 
  UPDATE clientes
 
  SET nome = spnome, telefone = sptelefone, email = spemail
 
  WHERE id = spid;
 
END $$
 
CREATE PROCEDURE sp_produtos_insert(
 
  sptipo_id INT,
 
  spdescricao VARCHAR(250),
 
  spvalor_unit DECIMAL(10,2),
 
  spresumo VARCHAR(60),
 
  spimagem VARCHAR(50),
 
  spdestaque ENUM('Sim', 'Não')
 
)
 
 
 
 
BEGIN
 
  INSERT INTO produtos (tipo_id, descricao, valor_unit, resumo, imagem, destaque)
 
  VALUES (sptipo_id, spdescricao, spvalor_unit, spresumo, spimagem, spdestaque);
 
END $$
 
DELIMITER $$
 
CREATE PROCEDURE `sp_produtos_update`(
 
  spid INT,
 
  spdescricao VARCHAR(100),
 
  spvalor_unit DECIMAL(10,2),
 
  spresumo VARCHAR(60),
 
  spimagem VARCHAR(60),
 
  spdestaque enum('Sim','Não')
 
)
 
BEGIN
 
  UPDATE clientes
 
  SET descricao = spdescricao, valor_unit = spvalor_unit, resumo = spresumo, imagem = spimagem, destaque = spdestaque
 
  WHERE id = spid;
 
END $$
 
CREATE PROCEDURE `sp_enderecos_update`(
 
spid int,
 
spcep char(8),
 
splogradouro varchar(100),
 
spnumero varchar(40),
 
spcomplemento varchar(60),
 
spbairro varchar(60),
 
spcidade varchar(60),
 
spuf char(2),
 
sptipo_endereco char(3))
 
begin
 
   update enderecos set cep = spcep,
 
     logradouro = splogradouro,
 
     numero = spnumero,
 
   complemento = spcomplemento,
 
   bairro = spbairro,
 
   cidade = spcidade,
 
   uf = spuf,
 
   tipo_endereco = sptipo_endereco
 
   where id = spid;
 
end$$
 
DELIMITER $$
 
CREATE PROCEDURE `sp_enderecos_insert`(
 
    spcliente_id int,
 
    spcep char(8),
 
    splogradouro varchar(100),
 
    spnumero varchar(40),
 
    spcomplemento varchar(60),
 
    spbairro varchar(60),
 
    spcidade varchar(60),
 
    spuf char(2),
 
    sptipo_endereco char(3)
 
    )
 
begin
 
    insert into enderecos
 
        values (0,spcliente_id, spcep, splogradouro, spnumero, spcomplemento, spbairro, spcidade, spuf, sptipo_endereco);
 
        select @@identity as id;
 
    end$$
 
    CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_usuarios_insert`(
 
-- parâmetros da procedure
 
spnome varchar(60), splogin varchar(60), spsenha varchar(32), spnivel int)
 
begin
 
  insert into usuarios
 
  values (0,spnome, splogin, md5(spsenha), spnivel, default);
 
    select * from usuarios where id = last_insert_id();
 
end$$
 
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_usuarios_update`(
 
-- parâmetros da procedure
 
spid int, splogin varchar(60), spsenha varchar(32), spnivel int)
 
begin
 
  update usuarios
 
  set login = splogin, senha = md5(spsenha), nivel = spnivel where id = spid;
 
end$$
 
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tipos_insert`(
 
  spsigla VARCHAR(3),
 
  sprotulo VARCHAR(15)
 
)
 
BEGIN
 
  INSERT INTO tipos (sigla, rotulo)
 
  VALUES (spsigla, sprotulo);
 
  SELECT * FROM tipos WHERE id = LAST_INSERT_ID();
 
END $$
 
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tipos_update`(
 
-- parâmetros da procedure
 
spid int, spsigla varchar(60), sprotulo varchar(15))
 
begin
 
  update usuarios
 
  set sigla = spsigla, rotulo = sprotulo where id = spid;
 
end $$
 
 
 
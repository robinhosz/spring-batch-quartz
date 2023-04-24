CREATE TABLE cliente (
    id INT NOT NULL AUTO_INCREMENT,
    nome TEXT NOT NULL,
    email TEXT NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE produto (
    id INT NOT NULL AUTO_INCREMENT,
    nome TEXT NOT NULL,
    descricao TEXT NOT NULL,
    preco FLOAT NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE interesse_produto_cliente (
   cliente INT NOT NULL,
   produto INT NOT NULL,
   UNIQUE INDEX cliente_produto (cliente, produto),
   FOREIGN KEY (cliente) REFERENCES cliente(id) ON DELETE CASCADE,
   FOREIGN KEY (produto) REFERENCES produto(id) ON DELETE CASCADE
);

INSERT INTO `cliente` (`id`, `nome`, `email`) values (1, 'Prof Blair', 'cora75@hotmail.com');
INSERT INTO `cliente` (`id`, `nome`, `email`) values (2, 'Prof Rob', 'rob75@hotmail.com');

INSERT INTO `produto` (`id`, `nome`, `descricao`, `preco`) values (1, 'Misterios', 'misterios', 80.50);
INSERT INTO `produto` (`id`, `nome`, `descricao`, `preco`) values (2, 'Playstation', 'play', 75.50);
INSERT INTO `produto` (`id`, `nome`, `descricao`, `preco`) values (3, 'sofa', 'sofa', 85.50);
INSERT INTO `produto` (`id`, `nome`, `descricao`, `preco`) values (4, 'cadeira', 'cadeira', 65.50);
INSERT INTO `produto` (`id`, `nome`, `descricao`, `preco`) values (5, 'livro', 'livro', 60.50);
INSERT INTO `produto` (`id`, `nome`, `descricao`, `preco`) values (6, 'esteira', 'esteira', 35.50);


INSERT INTO `interesse_produto_cliente` (`cliente`, `produto`) values (1, 1);
INSERT INTO `interesse_produto_cliente` (`cliente`, `produto`) values (1, 2);
INSERT INTO `interesse_produto_cliente` (`cliente`, `produto`) values (1, 3);
INSERT INTO `interesse_produto_cliente` (`cliente`, `produto`) values (2, 4);
INSERT INTO `interesse_produto_cliente` (`cliente`, `produto`) values (2, 5);
INSERT INTO `interesse_produto_cliente` (`cliente`, `produto`) values (2, 6);


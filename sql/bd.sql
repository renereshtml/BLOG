create database blog01;
use blog01;

CREATE TABLE usuario (
    id INT(11) NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50),
    email VARCHAR(255) NOT NULL,
    senha CHAR(60),
    data_criacao DATETIME NOT NULL DEFAULT NOW(),
    ativo TINYINT(4) NOT NULL DEFAULT 0,
    adm TINYINT(4) NOT NULL DEFAULT 0,
    PRIMARY KEY (id)
);

CREATE TABLE post (
    id INT(11) NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(255),
    texto TEXT,
    usuario_id INT(11),
    data_criacao DATETIME NOT NULL DEFAULT NOW(),
    data_postagem DATETIME,
    PRIMARY KEY (id),
    FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

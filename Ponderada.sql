CREATE TABLE Users (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    Nomes VARCHAR(100),
    Genero VARCHAR(50),
    Email VARCHAR(500),
    Senha VARCHAR(100),
    NivelDeAcesso VARCHAR(100)
);

CREATE TABLE Manuais (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    ProdutosAssociados INTEGER,
    Nome VARCHAR(100),
    Descricao VARCHAR(1000),
    Publicacao TIMESTAMP,
    IdUsers INTEGER,
    FOREIGN KEY (ProdutosAssociados) REFERENCES Produtos(id),
    FOREIGN KEY (IdUsers) REFERENCES Users(id)
);

CREATE TABLE task (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    IdMontador INTEGER,
    ManualAssociado INTEGER,
    Finalizado BINARY,
    DataUpload TIMESTAMP,
    IdAdminAssociado INTEGER,
    FOREIGN KEY (IdMontador) REFERENCES Users(id),
    FOREIGN KEY (ManualAssociado) REFERENCES Manuais(id),
    FOREIGN KEY (IdAdminAssociado) REFERENCES Users(id)
);

CREATE TABLE Produtos (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    IdLinhaAssociada INTEGER,
    FOREIGN KEY (IdLinhaAssociada) REFERENCES LinhaMontagem(id)
);

CREATE TABLE LinhaMontagem (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Descricao VARCHAR(1000),
    IdMontadorAdm INTEGER,
    FOREIGN KEY (IdMontadorAdm) REFERENCES Users(id)
);

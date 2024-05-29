CREATE DATABASE IF NOT EXISTS databasecliente;
USE databasecliente;
CREATE TABLE IF NOT EXISTS Cliente (
    ID_Cliente INT PRIMARY KEY,
    Nomecliente VARCHAR(100),
    Data_Nascimento DATE,
    Telefone VARCHAR(15),
    Email VARCHAR(100),
    CPF VARCHAR(14),
     Data_Cadastro DATETIME DEFAULT CURRENT_TIMESTAMP
    );
    
    CREATE TABLE IF NOT EXISTS Endereco (
    ID_Endereco INT PRIMARY KEY AUTO_INCREMENT,
    ID_Cliente INT,
    Logradouro VARCHAR(255),
    Numero VARCHAR(10),
    Bairro VARCHAR(100),
    Cidade VARCHAR(100),
    Estado VARCHAR(50),
    CEP VARCHAR(9),
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente)
);

CREATE TABLE IF NOT EXISTS Contato (
    ID_Contato INT PRIMARY KEY AUTO_INCREMENT,
    ID_Cliente INT,
    Celular VARCHAR(20),
    telefone VARCHAR(20),
    email varchar(90),
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente)
);

CREATE TABLE IF NOT EXISTS Historico_Compra (
    ID_Historico INT PRIMARY KEY AUTO_INCREMENT,
    ID_Cliente INT not null,
    Data_Compra DATE not null,
    Valor_Total DECIMAL(10, 2) not null,
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente)
);
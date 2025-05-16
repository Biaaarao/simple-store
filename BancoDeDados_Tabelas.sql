-- ===============================
-- PARTE 1: Criação do Banco de Dados
-- ===============================
CREATE DATABASE SimpleStore;
GO

-- ===============================
-- PARTE 2: Selecionar o Banco de Dados
-- ===============================
USE SimpleStore;
GO

-- ===============================
-- PARTE 3: Criar Tabela Usuario
-- ===============================
CREATE TABLE Usuario (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(100) NOT NULL,
    perfil VARCHAR(50) NOT NULL
);
GO

-- ===============================
-- PARTE 4: Criar Tabela Categoria
-- ===============================
CREATE TABLE Categoria (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255)
);
GO

-- ===============================
-- PARTE 5: Criar Tabela Produto
-- ===============================
CREATE TABLE Produto (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id)
);
GO

-- ===============================
-- PARTE 6: Criar Tabela Pedido
-- ===============================
CREATE TABLE Pedido (
    id INT IDENTITY(1,1) PRIMARY KEY,
    id_usuario INT NOT NULL,
    data DATETIME DEFAULT GETDATE(),
    status VARCHAR(50),
    total DECIMAL(10,2),
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id)
);
GO

-- ===============================
-- PARTE 7: Criar Tabela Item_Pedido
-- ===============================
CREATE TABLE Item_Pedido (
    id INT IDENTITY(1,1) PRIMARY KEY,
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id),
    FOREIGN KEY (id_produto) REFERENCES Produto(id)
);
GO

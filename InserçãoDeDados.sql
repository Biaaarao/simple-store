-- ===============================
-- Inserção de dados na tabela Usuario 
-- ===============================
INSERT INTO Usuario (nome, email, senha, perfil) VALUES
('João Silva', 'joao@email.com', '123senha', 'cliente'),
('Maria Oliveira', 'maria@email.com', 'senha123', 'cliente'),
('Carlos Souza', 'carlos@email.com', 'abc123', 'admin'),
('Ana Costa', 'ana@email.com', 'pass456', 'cliente'),
('Fernanda Lima', 'fernanda@email.com', 'limaf123', 'cliente'),
('Ricardo Alves', 'ricardo@email.com', 'alves456', 'admin'),
('Patrícia Mendes', 'patricia@email.com', 'patmendes', 'cliente'),
('Bruno Rocha', 'bruno@email.com', 'rochabr', 'cliente'),
('Sandra Martins', 'sandra@email.com', 'martins2025', 'cliente'),
('Luiz Fernando', 'luiz@email.com', 'luizf789', 'cliente');

-- ===============================
-- Inserção de dados na tabela Categoria 
-- ===============================
INSERT INTO Categoria (nome, descricao) VALUES
('Maquiagem', 'Produtos para maquiagem facial e dos olhos'),
('Perfume', 'Fragrâncias e perfumes importados e nacionais');

-- ===============================
-- Inserção de dados na tabela Produto 
-- ===============================
INSERT INTO Produto (nome, descricao, preco, estoque, id_categoria) VALUES
('Blush Compacto', 'Blush compacto para todos os tipos de pele', 49.90, 100, 1),
('Contorno Cremoso', 'Contorno facial cremoso de alta fixação', 39.90, 80, 1),
('Rímel Volume', 'Máscara para cílios com efeito volume', 29.90, 120, 1),
('Batom Líquido', 'Batom líquido de alta cobertura', 34.90, 150, 1),
('212 VIP', 'Perfume 212 VIP Eau de Parfum', 499.00, 50, 2),
('Azzaro Pour Homme', 'Perfume masculino clássico', 389.00, 40, 2),
('Miss Dior', 'Perfume Miss Dior Eau de Toilette', 599.00, 30, 2),
('Prada Candy', 'Perfume Prada Candy Eau de Parfum', 549.00, 25, 2);

-- ===============================
-- Inserção de dados na tabela Pedido 
-- ===============================
INSERT INTO Pedido (id_usuario, data, status, total) VALUES
(1, GETDATE(), 'pendente', 499.00),
(2, GETDATE(), 'concluido', 84.80),
(3, GETDATE(), 'cancelado', 599.00),
(4, GETDATE(), 'concluido', 134.70),
(5, GETDATE(), 'pendente', 549.00),
(6, GETDATE(), 'concluido', 79.80),
(7, GETDATE(), 'pendente', 389.00),
(8, GETDATE(), 'concluido', 69.80),
(9, GETDATE(), 'pendente', 499.00),
(10, GETDATE(), 'concluido', 64.80);

-- ===============================
-- Inserção de dados na tabela Item_Pedido 
-- ===============================
INSERT INTO Item_Pedido (id_pedido, id_produto, quantidade, preco_unitario) VALUES
(1, 5, 1, 499.00),    -- 212 VIP
(2, 1, 1, 49.90),     -- Blush
(2, 4, 1, 34.90),     -- Batom
(3, 7, 1, 599.00),    -- Miss Dior
(4, 2, 2, 39.90),     -- Contorno
(4, 3, 1, 29.90),     -- Rímel
(5, 8, 1, 549.00),    -- Prada Candy
(6, 4, 2, 34.90),     -- Batom
(7, 6, 1, 389.00),    -- Azzaro
(8, 3, 2, 29.90),     -- Rímel
(9, 5, 1, 499.00),    -- 212 VIP
(10, 2, 1, 39.90),    -- Contorno
(10, 1, 1, 24.90);    -- Blush 



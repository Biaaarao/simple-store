SimpleStore

Sistema de vendas online com Spring Boot

A3 - Programação de Soluções Computacionais

**Integrantes:**
Beatriz Melo - 822133279
Bruno Stramasso - 824150726

1. **Escopo do Projeto**
*Nome do Projeto*: SimpleStore – Sistema de Vendas Online

**Descrição**:
Um sistema web simples de e-commerce onde usuários podem se cadastrar, visualizar produtos e realizar pedidos. Um administrador poderá cadastrar/editar produtos e visualizar um dashboard de métricas de vendas.



2. **Levantamento de Requisitos**
   
Requisitos Funcionais

- RF01: O sistema deve permitir cadastro e login de usuários com autenticação.
- RF02: O cliente pode visualizar produtos, categorias e fazer pedidos.
- RF03: O administrador pode realizar CRUD de produtos, categorias e visualizar os pedidos.
- RF04: O sistema deve gerar um dashboard com métricas (admin).
- RF05: O cliente pode ver seus pedidos e detalhes (cliente).
- RF06: O administrador pode ver o histórico e detalhes de todos os pedidos.
- RF07: O sistema deve gerar e armazenar os pedidos com múltiplos itens.

Requisitos Não Funcionais

- RNF01: O sistema deve usar Spring Boot como backend.
- RNF02: O banco de dados deve ser relacional (MySQL ).
- RNF03: O frontend deve se comunicar com a API RESTful.
- RNF04: O código-fonte será versionado no GitHub.
- RNF05: O sistema deve ser protegido com autenticação (Spring Security).
- RNF06: Interface gráfica utilizando o Figma
- RNF07:  O sistema deve seguir arquitetura em camadas (Controller, Service, Repository, Model)


3. **Diagrama Visual de ER**
![image](https://github.com/user-attachments/assets/d628bec9-d04f-4dbc-9ed1-a5bfd53e1762)

3.1 **Modelagem Inicial do Banco de Dados**

Aqui está um modelo ER simplificado das principais entidades:

-USUARIO (id, nome, email, senha, perfil)

-CATEGORIA (id, nome, descricao)

-PRODUTO (id, nome, descricao, preco, estoque, id_categoria)

-PEDIDO (id, id_usuario, data, status, total)

-ITEM_PEDIDO (id, id_pedido, id_produto, quantidade, preco_unitario)


Principais Relações:

-Um USUARIO pode fazer vários PEDIDOS (1:N).

-Um PEDIDO tem vários ITEM_PEDIDO, e cada item está ligado a um PRODUTO (N:N com tabela associativa).

-Um PRODUTO pertence a uma CATEGORIA (N:1).

3.2  **Modelagem Inicial do Banco de Dados**

Entidades Principais:

USUARIO

-id: Long (PK)

-nome: String

-email: String (único)

-senha: String

-perfil: Enum (ADMIN ou CLIENTE)

CATEGORIA

-id: Long (PK)

-nome: String

-descricao: String

PRODUTO

-id: Long (PK)

-nome: String

-descricao: String

-preco: BigDecimal

-estoque: Integer

-id_categoria: FK para CATEGORIA

PEDIDO

-id: Long (PK)

-id_usuario: FK para USUARIO

-data: DateTime

-status: Enum (NOVO, PAGO, ENVIADO, ENTREGUE)

-total: BigDecimal

ITEM_PEDIDO

-id: Long (PK)

-id_pedido: FK para PEDIDO

-id_produto: FK para PRODUTO

-quantidade: Integer

-preco_unitario: BigDecimal


Relacionamentos:

-USUARIO (1) ↔ (N) PEDIDO

-CATEGORIA (1) ↔ (N) PRODUTO

-PEDIDO (1) ↔ (N) ITEM_PEDIDO

-PRODUTO (1) ↔ (N) ITEM_PEDIDO

--

O que cada parte representa:

Entidade (Tabela) Significado

-usuario: Armazena os dados dos usuários (clientes ou admins)

-categoria: Organiza os produtos por tipo (Ex: Roupas, Eletrônicos)

-produto: Armazena os dados dos produtos (nome, preço, estoque, categoria)

-pedido: Representa uma compra feita por um usuário

-item_pedido: Cada linha de um pedido: produto, quantidade e preço unitário

--

E os relacionamentos?
Um usuario pode fazer vários pedidos.

Um pedido pode conter vários produtos (via item_pedido).

Um produto pertence a uma categoria.

Um item_pedido liga um produto a um pedido (relação muitos-para-muitos entre produtos e pedidos).

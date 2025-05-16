# SimpleStore

**Sistema de vendas online com Spring Boot**

A3 - Programação de Soluções Computacionais

---

## Badges

[![Build Status](https://img.shields.io/badge/build-passing-brightgreen)](https://github.com/seu-usuario/seu-repo/actions)  
[![Language](https://img.shields.io/badge/language-Java-blue)](https://www.java.com)  
[![License](https://img.shields.io/badge/license-MIT-lightgrey)](LICENSE)

---

## Integrantes

- **Beatriz Melo** – 822133279  
- **Bruno Stramasso** – 824150726

---

## 1. Escopo do Projeto

**Nome do Projeto**: *SimpleStore – Sistema de Vendas Online*

### Descrição

Um sistema web simples de e-commerce onde usuários podem se cadastrar, visualizar produtos e realizar pedidos.  
Um administrador poderá cadastrar/editar produtos e visualizar um dashboard com métricas de vendas.

---

## 2. Levantamento de Requisitos

### Requisitos Funcionais

- **RF01:** Cadastro e login de usuários com autenticação.
- **RF02:** Visualização de produtos, categorias e realização de pedidos pelo cliente.
- **RF03:** CRUD de produtos e categorias pelo administrador.
- **RF04:** Dashboard com métricas para o administrador.
- **RF05:** Histórico de pedidos e detalhes disponíveis para o cliente.
- **RF06:** Histórico completo de pedidos visível para o administrador.
- **RF07:** Pedidos com múltiplos itens devem ser armazenados corretamente.

### Requisitos Não Funcionais

- **RNF01:** Backend com Spring Boot.
- **RNF02:** Banco de dados relacional (SQL).
- **RNF03:** Frontend comunica com backend via API RESTful.
- **RNF04:** Código-fonte versionado no GitHub.
- **RNF05:** Autenticação utilizando Spring Security.
- **RNF06:** Interface desenhada com Figma.
- **RNF07:** Arquitetura em camadas (Controller, Service, Repository, Model).

---

## 3. Modelagem de Dados

### Diagrama ER

![Diagrama ER](https://github.com/user-attachments/assets/d628bec9-d04f-4dbc-9ed1-a5bfd53e1762)

---

### Modelagem Inicial do Banco de Dados

#### Entidades e Atributos

##### USUARIO
- `id`: Long (PK)  
- `nome`: String  
- `email`: String (único)  
- `senha`: String  
- `perfil`: Enum (ADMIN ou CLIENTE)

##### CATEGORIA
- `id`: Long (PK)  
- `nome`: String  
- `descricao`: String

##### PRODUTO
- `id`: Long (PK)  
- `nome`: String  
- `descricao`: String  
- `preco`: BigDecimal  
- `estoque`: Integer  
- `id_categoria`: FK → CATEGORIA

##### PEDIDO
- `id`: Long (PK)  
- `id_usuario`: FK → USUARIO  
- `data`: DateTime  
- `status`: Enum (NOVO, PAGO, ENVIADO, ENTREGUE)  
- `total`: BigDecimal

##### ITEM_PEDIDO
- `id`: Long (PK)  
- `id_pedido`: FK → PEDIDO  
- `id_produto`: FK → PRODUTO  
- `quantidade`: Integer  
- `preco_unitario`: BigDecimal

---

### Principais Relacionamentos

- **USUARIO (1) ↔ (N) PEDIDO**  
- **CATEGORIA (1) ↔ (N) PRODUTO**  
- **PEDIDO (1) ↔ (N) ITEM_PEDIDO**  
- **PRODUTO (1) ↔ (N) ITEM_PEDIDO**

---

## Explicação das Entidades

| Entidade       | Finalidade                                                                 |
|----------------|---------------------------------------------------------------------------|
| `usuario`      | Armazena os dados dos usuários (clientes ou admins).                      |
| `categoria`    | Organiza os produtos por tipo (ex: Cosméticos, Eletrônicos).              |
| `produto`      | Armazena os dados dos produtos (nome, preço, estoque, categoria).         |
| `pedido`       | Representa uma compra feita por um usuário.                               |
| `item_pedido`  | Detalha cada produto comprado em um pedido: quantidade e preço unitário.  |

---

## Relacionamentos Explicados

- Um **usuário** pode fazer vários **pedidos**.
- Um **pedido** pode conter vários **produtos** via `item_pedido`.
- Um **produto** pertence a uma única **categoria**.
- Um **item_pedido** liga um **produto** a um **pedido** (relação N:N com tabela associativa).

---

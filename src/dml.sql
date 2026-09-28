insert into p2p_usuario (NOME, USERNAME, EMAIL, SENHA)
values('João', 'sone_jojo', 'sonejojo@gmail.com', 'aaaa1111' );
insert into p2p_usuario (NOME, USERNAME, EMAIL, SENHA)
values('Maria', 'marinr', 'marin@gmail.com', 'aaaa1111' );
insert into p2p_usuario (NOME, USERNAME, EMAIL, SENHA)
values ('Carlos', 'carlul', 'carlos@gmail.com', 'carlul1234');
insert into p2p_usuario (NOME, USERNAME, EMAIL, SENHA)
values ('Lucas', 'lucas', 'lucas@gmail.com', 'lucas1234');
insert into p2p_usuario (NOME, USERNAME, EMAIL, SENHA)
values ('Beatriz', 'bia', 'bia@gmail.com', 'bia12345');

select * from p2p_usuario;

insert into p2p_categoria (COD_CATEGORIA, NOME, TIPO)
values('LSWD', 'Espada Longa', 1);
insert into p2p_categoria (COD_CATEGORIA, NOME, TIPO)
values('SSWD', 'Espada Curta', 1);
insert into p2p_categoria (COD_CATEGORIA, NOME, TIPO) 
values ('WOOD',  'Madeira',  0);
insert into p2p_categoria (COD_CATEGORIA, NOME, TIPO) 
values ('HERB',  'Erva',     0);

select * from p2p_categoria;

insert into p2p_personagem (ID_USUARIO, TIPO, NICKNAME, NIVEL)
values ((select ID_USUARIO from p2p_usuario where USERNAME = 'carlul'), 0, 'Carlux', 42);
--Acho que faltou commitar a mudança do nivel de aceitar null pra NPC, então não ta funcionando no meu PC
insert into p2p_personagem (TIPO, NICKNAME, COD_NPC)
values ( 1, 'GOBLIN1', 'GBL');
insert into p2p_personagem (TIPO, NICKNAME, COD_NPC)
values ( 1, 'DRAG1', 'DRG');

select * from p2p_personagem;

insert into p2p_item (ID_CATEGORIA, COD_ITEM, NOME, RARIDADE, DESCRICAO)
values ((select ID_CATEGORIA from p2p_categoria where COD_CATEGORIA = 'WOOD'),
        'CARV', 'Tábua de Carvalho', 0, 'Tábua resistente de carvalho.');
insert into p2p_item (ID_CATEGORIA, COD_ITEM, NOME, RARIDADE, DESCRICAO)
values ((select ID_CATEGORIA from p2p_categoria where COD_CATEGORIA = 'HERB'),
        'SOL', 'Erva-do-Sol', 1, 'Erva rara que só floresce ao meio-dia, ingrediente de poções.');
        
select * from p2p_item;
set serveroutput on

-- fazer procedure de add p2p.movimentacao
-- fazer procedure para update e outra para delete
create or replace procedure add_mov(
    p_desc in varchar2
) is
begin
    insert into p2p_movimentacao(descricao)
        values(p_desc);
end;

create or replace procedure upd_mov(
    p_id_mov in number,
    p_desc in varchar2
) is
begin
    update p2p_movimentacao
        set descricao = p_desc
        where id_movimentacao = p_id_mov;
end;

create or replace procedure del_mov(
    p_id_mov in number
) is
begin
    delete from p2p_movimentacao
    where id_movimentacao = p_id_mov;
end;

begin
    add_mov('Bônus de evento'); 
    add_mov('Bônus de entrada');
    add_mov('Bônus de newbie');
    add_mov('Compra de item de leilão');
    add_mov('Luta: Alquimista -> sonejojo, 1 poção');   
end;

begin
    upd_mov(42, 'qualquer coisa só pra teste');
    upd_mov(43, 'qualquer coisa só pra teste 2');
end;

begin
    del_mov(42);
    del_mov(43);
end;

select * from p2p_movimentacao;

--fazer procedure para personagem?

create or replace procedure add_usu(
    p_nome in varchar2,
    p_user in varchar2,
    p_email in varchar2,
    p_pwd in varchar2
) is
begin
    add_mov('Cadastro de Usuário');
    INSERT INTO P2P_USUARIO (NOME, USERNAME, EMAIL, SENHA)
    VALUES (p_nome, p_user, p_email, p_pwd);
end;

exec add_usu('Carlos', 'Carlul', 'carlos@gmail.com', 'carlos123');

create or replace procedure upd_usu(
    p_nome in varchar2,
    p_user in varchar2,
    p_email in varchar2,
    p_pwd in varchar2
) is
begin
    update p2p_usuario
        set nome = p_nome,
            username = p_user,
            email = p_email,
            senha = p_pwd
        where username = p_user;
end;

exec upd_usu('Carlos', 'Carlul', 'carlos@gmail.com', '12345678', 21);

create or replace procedure del_usu(
    p_id_usu in number
) is
begin
    delete from p2p_usuario
    where id_usuario = p_id_usu;
end;

exec del_usu(21);

select * from p2p_usuario;

--procedure para personagem
create or replace procedure add_pers(
    p_id_user in number
)is
begin

end;

select * from p2p_personagem;

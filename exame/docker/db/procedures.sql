CREATE PROCEDURE cadastroHospede(
nome varchar(250), cpf int, telefone int, endereco varchar(250), cidade varchar(250))
LANGUAGE SQL
AS $$
INSERT INTO hospedes VALUES (nome, cpf, telefone, endereco, cidade)
$$;

CREATE PROCEDURE cadastroQuarto(id int, categoria varchar(90))
LANGUAGE SQL
AS $$
INSERT INTO quartos values(id, categoria)
$$;

CREATE PROCEDURE cadastroReserva(i timeStamp, f timeStamp, q int, h varchar(250))
LANGUAGE SQL
AS $$
INSERT INTO reservas values(i, f, q, h)
$$;


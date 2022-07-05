final createTable = """
CREATE TABLE items(
  id INT PRIMARY KEY ,
  nome VARCHAR(200) NOT NULL,
  telefone CHAR(16) NOT NULL,
  email VARCHAR(150) NOT NULL,
  url_avatar VARCHAR(300) NOT NULL,
  )
""";

final insert1 = """
INSERT INTO contact (name, telefone, email, url_avatar)
VALUES("Teste 1", "(62) 9 0000-0000", "teste1@gmail.com", "https://cdn-icons.flaticon.com/png/512/4526/premium/4526363.png?token=exp=1657044378~hmac=6aca9f4a918488422c02ace007f2fd45")
""";

final insert2 = """
INSERT INTO contact (name, telefone, email, url_avatar)
VALUES("Teste 2", "(62) 9 0000-0001", "teste2@gmail.com", "https://cdn-icons-png.flaticon.com/512/4526/4526123.png")
""";

final insert3 = """
INSERT INTO contact (name, telefone, email, url_avatar)
VALUES("Teste 3", "(62) 9 0000-0002", "teste3@gmail.com", "https://cdn-icons-png.flaticon.com/512/7960/7960131.png")
""";

final createTable = '''
  CREATE TABLE contact(
    id INT PRIMARY KEY
    ,nome VARCHAR(200) NOT NULL
    ,telefone CHAR(16) NOT NULL
    ,email VARCHAR(150) NOT NULL
    ,url_avatar VARCHAR(300) NOT NULL 
  )
''';

// final insert1 = '''
// INSERT INTO contact (nome, telefone, email, url_avatar)
// VALUES ('Pietro','(11) 9 9874-5656','pietro@email.com','https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_960_720.png')
// ''';

// final insert2 = '''
// INSERT INTO contact(nome, telefone, email, url_avatar)
// VALUES ('Maitê','(11) 9 9632-8578', 'maite@email.com','https://cdn.pixabay.com/photo/2021/01/17/09/11/woman-5924366_960_720.jpg')
// ''';

// final insert3 = '''
// INSERT INTO contact (nome, telefone, email, url_avatar)
// VALUES ('Hortência','(11) 9 9562-3356','hortencia@email.com','https://cdn.pixabay.com/photo/2021/01/24/09/28/girl-5944691_960_720.jpg')
// ''';

final insert1 = '''
INSERT INTO contact (nome, telefone, email, url_avatar)
VALUES('Teste 1', '(62) 9 0000-0000', 'teste1@gmail.com', 'https://cdn-icons-png.flaticon.com/128/4139/4139948.png')
''';

final insert2 = '''
INSERT INTO contact (nome, telefone, email, url_avatar)
VALUES('Teste 2', '(62) 9 0000-0001', 'teste2@gmail.com', 'https://cdn-icons-png.flaticon.com/512/4526/4526123.png')
''';

final insert3 = '''
INSERT INTO contact (nome, telefone, email, url_avatar)
VALUES('Teste 3', '(62) 9 0000-0002', 'teste3@gmail.com', 'https://cdn-icons-png.flaticon.com/512/7960/7960131.png')
''';

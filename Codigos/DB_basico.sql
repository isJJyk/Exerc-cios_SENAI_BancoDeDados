create database sis04t25;
use sis04t25;
CREATE TABLE categories (
  CategoryID int NOT NULL AUTO_INCREMENT,
  CategoryName varchar(100) DEFAULT NULL,
  Description varchar(500) DEFAULT NULL,
  PRIMARY KEY (CategoryID)
);
CREATE TABLE customers (
  CustomerID int NOT NULL AUTO_INCREMENT,
  CustomerName varchar(200) DEFAULT NULL,
  ContactName varchar(200) DEFAULT NULL,
  PostalCode int DEFAULT NULL,
  Country varchar(100) DEFAULT NULL,
  Adress varchar(200) DEFAULT NULL,
  City varchar(200) DEFAULT NULL,
  PRIMARY KEY (CustomerID)
);
CREATE TABLE employees (
  EmployeeID int NOT NULL AUTO_INCREMENT,
  LastName varchar(200) DEFAULT NULL,
  FirstName varchar(200) DEFAULT NULL,
  BirthDate date DEFAULT NULL,
  Photo blob,
  Notes varchar(500) DEFAULT NULL,
  PRIMARY KEY (EmployeeID)
);
CREATE TABLE orderdetails (
  OrderDetailID int NOT NULL AUTO_INCREMENT,
  OrderID int DEFAULT NULL,
  ProductID int DEFAULT NULL,
  Quantity int DEFAULT NULL,
  PRIMARY KEY (OrderDetailID)
);
CREATE TABLE orders (
  OrderID int NOT NULL AUTO_INCREMENT,
  CustomerID int DEFAULT NULL,
  EmployeeID int DEFAULT NULL,
  OrderDate date DEFAULT NULL,
  ShipperID int DEFAULT NULL,
  PRIMARY KEY (OrderID),
  KEY CustomerID (CustomerID),
  KEY EmployeeID (EmployeeID),
  KEY ShipperID (ShipperID)
);
CREATE TABLE products (
  ProductID int NOT NULL AUTO_INCREMENT,
  ProductName varchar(200) DEFAULT NULL,
  SupplierID int DEFAULT NULL,
  CategoryID int DEFAULT NULL,
  UnitPrice decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (ProductID),
  KEY SupplierID (SupplierID),
  KEY CategoryID (CategoryID)
);
CREATE TABLE shippers (
  ShipperID int NOT NULL AUTO_INCREMENT,
  ShipperName varchar(200) DEFAULT NULL,
  Phone varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (ShipperID)
);
CREATE TABLE suppliers (
  SupplierID int NOT NULL AUTO_INCREMENT,
  SupplierName varchar(200) DEFAULT NULL,
  ContactName varchar(200) DEFAULT NULL,
  Adress varchar(200) DEFAULT NULL,
  City varchar(200) DEFAULT NULL,
  PostalCode varchar(200) DEFAULT NULL,
  Country varchar(200) DEFAULT NULL,
  Phone varchar(200) DEFAULT NULL,
  PRIMARY KEY (SupplierID)
);

-- insert
INSERT INTO categories VALUES (1,'Bebidas','Refrigerantes, cafés, chás, cervejas e sucos.'),(2,'Condimentos','Molhos doces e picantes, temperos e pastas.'),(3,'Confeitos','Doces, balas, chocolates e sobremesas prontas.'),(4,'Laticínios','Queijos, leites, manteigas e iogurtes.'),(5,'Grãos/Cereais','Pães, biscoitos, massas e cereais matinais.'),(6,'Carnes/Aves','Carnes preparadas, cortes bovinos e frango.'),(7,'Hortifrutis','Frutas frescas, secas e vegetais variados.'),(8,'Frutos do Mar','Peixes, algas, camarões e frutos do mar em conserva.'),(9,'Padaria','Pães artesanais, bolos e tortas frescas.'),(10,'Congelados','Refeições prontas, pizzas e sorvetes.'),(11,'Limpeza','Detergentes, desinfetantes e produtos para lavanderia.'),(12,'Higiene Pessoal','Shampoos, sabonetes e cremes dentais.'),(13,'Pet Shop','Rações para cães e gatos e acessórios para pets.'),(14,'Eletrônicos','Cabos, adaptadores e pequenos gadgets.'),(15,'Papelaria','Cadernos, canetas e material de escritório.'),(16,'Utilidades Domésticas','PANELAS, talheres e utensílios de cozinha.'),(17,'Saúde/Bem-estar','Vitaminas, suplementos e primeiros socorros.'),(18,'Bebidas Alcoólicas','Vinhos, destilados e licores importados.'),(19,'Jardinagem','Sementes, fertilizantes e ferramentas de plantio.'),(20,'Automotivo','Óleos, fluidos e acessórios para veículos.');

INSERT INTO customers VALUES (1,'Mercado Central','Ana Silva',1001,'Brasil','Rua das Flores, 123','São Paulo'),(2,'Global Tech','John Smith',10001,'USA','5th Avenue, 450','New York'),(3,'Boutique Paris','Marie Dubois',75001,'França','Rue de Rivoli, 78','Paris'),(4,'Tech Solutions','Carlos Ortega',6500,'México','Av. Reforma, 500','Cidade do México'),(5,'Cantina Italiana','Giovanni Rossi',100,'Itália','Via Roma, 12','Roma'),(6,'Supermercado Sol','Maria Santos',1250,'Portugal','Av. da Liberdade, 1001','Lisboa'),(7,'London Traders','Elizabeth Brown',0,'UK','Baker Street, 221B','Londres'),(8,'Berlin Import','Hans Müller',10178,'Alemanha','Alexanderplatz, 4','Berlim'),(9,'Tokyo Store','Akira Tanaka',150,'Japão','Shibuya-ku, 1-2-3','Tóquio'),(10,'Andes Export','Elena Gomez',0,'Argentina','Calle Florida, 45','Buenos Aires'),(11,'Nordic Design','Erik Larsson',111,'Suécia','Sveavägen, 10','Estocolmo'),(12,'Sydney Cafe','James Cook',2000,'Austrália','George Street, 200','Sydney'),(13,'Canadian Maple','Sarah Wilson',0,'Canadá','Bay Street, 150','Toronto'),(14,'Madrid Moda','Javier López',28013,'Espanha','Gran Vía, 32','Madri'),(15,'Dublin Pub','Patrick O’Neil',0,'Irlanda','Temple Bar, 5','Dublin'),(16,'Alpine Gears','Stefan Weber',8001,'Suíça','Bahnhofstrasse, 1','Zurique'),(17,'Rio Brindes','Ricardo Lima',22010,'Brasil','Av. Atlântica, 500','Rio de Janeiro'),(18,'Cape Town Fish','David Mbeki',8001,'África do Sul','Victoria Wharf, 1','Cidade do Cabo'),(19,'Vienna Classics','Petra Mayer',1010,'Áustria','Kärntner Straße, 15','Viena'),(20,'Brussels Choc','Luc Janssens',1000,'Bélgica','Grand Place, 10','Bruxelas');

INSERT INTO employees VALUES (1,'Silva','Ricardo','1985-03-12',_binary 'emp1.jpg','Especialista em logística com 10 anos de experiência.'),(2,'Santos','Maria','1990-07-25',_binary 'emp2.jpg','Coordenadora de vendas, fluente em inglês e espanhol.'),(3,'Oliveira','Ana','1992-11-05',_binary 'emp3.jpg','Graduada em Administração, foca em gestão de pessoas.'),(4,'Souza','Carlos','1980-01-30',_binary 'emp4.jpg','Técnico sênior responsável pela manutenção da frota.'),(5,'Pereira','Juliana','1988-05-14',_binary 'emp5.jpg','Expert em atendimento ao cliente e resolução de conflitos.'),(6,'Ferreira','Lucas','1995-09-20',_binary 'emp6.jpg','Desenvolvedor focado em sistemas de automação interna.'),(7,'Almeida','Fernanda','1983-12-08',_binary 'emp7.jpg','Diretora financeira com foco em redução de custos.'),(8,'Costa','Roberto','1979-04-17',_binary 'emp8.jpg','Supervisor de armazém com certificação em segurança.'),(9,'Rodrigues','Beatriz','1991-06-22',_binary 'emp9.jpg','Analista de marketing digital e mídias sociais.'),(10,'Martins','André','1987-10-10',_binary 'emp10.jpg','Responsável pelo controle de qualidade de suprimentos.'),(11,'Barbosa','Camila','1994-02-28',_binary 'emp11.jpg','Assistente de RH focada em processos de recrutamento.'),(12,'Rocha','Felipe','1982-08-15',_binary 'emp12.jpg','Gerente de TI com foco em infraestrutura de rede.'),(13,'Lima','Patrícia','1989-12-01',_binary 'emp13.jpg','Contadora sênior com vasta experiência em auditoria.'),(14,'Gomes','Gabriel','1993-03-19',_binary 'emp14.jpg','Especialista em SEO e análise de dados de mercado.'),(15,'Ribeiro','Vanessa','1986-11-30',_binary 'emp15.jpg','Coordenadora de eventos e relações públicas.'),(16,'Carvalho','Marcos','1981-05-09',_binary 'emp16.jpg','Analista de sistemas com foco em segurança da informação.'),(17,'Mendes','Letícia','1996-07-04',_binary 'emp17.jpg','Estagiária de design gráfico com grande potencial criativo.'),(18,'Teixeira','Bruno','1984-09-27',_binary 'emp18.jpg','Operador de máquinas pesadas e instrutor técnico.'),(19,'Moreira','Aline','1990-01-12',_binary 'emp19.jpg','Secretária executiva com foco em organização de diretoria.'),(20,'Nunes','Sérgio','1975-06-18',_binary 'emp20.jpg','Veterano da empresa, atua como consultor estratégico.');

INSERT INTO orderdetails VALUES (1,1,1,10),(2,2,2,25),(3,3,3,5),(4,4,4,12),(5,5,5,30),(6,6,6,8),(7,7,7,15),(8,8,8,22),(9,9,9,40),(10,10,10,2),(11,11,11,18),(12,12,12,7),(13,13,13,50),(14,14,14,11),(15,15,15,9),(16,16,16,3),(17,17,17,14),(18,18,18,6),(19,19,19,20),(20,20,20,13);

INSERT INTO orders VALUES (1,1,1,'2024-01-01',1),(2,2,2,'2024-01-02',2),(3,3,3,'2024-01-03',3),(4,4,4,'2024-01-04',4),(5,5,5,'2024-01-05',5),(6,6,6,'2024-01-06',6),(7,7,7,'2024-01-07',7),(8,8,8,'2024-01-08',8),(9,9,9,'2024-01-09',9),(10,10,10,'2024-01-10',10),(11,11,11,'2024-01-11',11),(12,12,12,'2024-01-12',12),(13,13,13,'2024-01-13',13),(14,14,14,'2024-01-14',14),(15,15,15,'2024-01-15',15),(16,16,16,'2024-01-16',16),(17,17,17,'2024-01-17',17),(18,18,18,'2024-01-18',18),(19,19,19,'2024-01-19',19),(20,20,20,'2024-01-20',20);

INSERT INTO products VALUES (1,'Chá Chai',1,1,18),(2,'Cerveja Chang',2,2,19),(3,'Xarope de Anis',3,3,10),(4,'Tempero Cajun Chef Anton',4,4,22),(5,'Molho de Gumbo Chef Anton',5,5,21),(6,'Geléia de Groselha Grandma',6,6,25),(7,'Pera Seca Orgânica',7,7,30),(8,'Molho de Cranberry Northwoods',8,8,40),(9,'Carne de Sol de Munique',9,9,97),(10,'Peixe de Ikura',10,10,31),(11,'Queijo Cabrales',11,11,21),(12,'Queijo Manchego La Pastora',12,12,38),(13,'Algas Konbu',13,13,6),(14,'?? (Tofu)',14,14,23),(15,'Molho de Soja Genen',15,15,16),(16,'Pavlova (Doce)',16,16,17),(17,'Cordeiro Alice Springs',17,17,39),(18,'Lagosta Carnarvon',18,18,63),(19,'Biscoitos Teatime',19,19,9),(20,'Marmelada de Sir Rodney',20,20,81);

INSERT INTO shippers VALUES (1,'Speedy Express','(503) 555-9831'),(2,'United Package','(503) 555-3199'),(3,'Federal Shipping','(503) 555-9931'),(4,'Logística Brasil','(11) 98765-4321'),(5,'TransGlobal Sudeste','(21) 3344-5566'),(6,'Entrega Rápida S.A.','(31) 3222-1010'),(7,'EcoFrete Sustentável','(41) 99122-3344'),(8,'Norte Express Log','(92) 3654-7890'),(9,'Oceanic Carriers','(503) 555-1212'),(10,'SkyHigh Air Freight','(212) 555-0100'),(11,'EuroTrans Port','+44 20 7946 0000'),(12,'Asiatic Logistics','+81 3-1234-5678'),(13,'Andes Transportes','(11) 4004-0000'),(14,'Flash Delivery','(19) 3876-5432'),(15,'Cargueiro Veloz','(85) 3232-4455'),(16,'Direto ao Ponto Ltda','(61) 3322-1100'),(17,'Movimenta Log','(51) 3022-9988'),(18,'Pampa Express','(55) 3412-6677'),(19,'Amazonas Cargo','(91) 3210-5544'),(20,'Vila Marítima S.A.','(13) 3234-5678');

INSERT INTO suppliers VALUES (1,'Exotic Liquids','Charlotte Cooper','49 Gilbert St.','Londres','0','UK','0'),(2,'New Orleans Cajun Delights','Shelley Burke','P.O. Box 78934','New Orleans','70117','USA','0'),(3,'Grandma Kelly Homestead','Regina Murphy','707 Oxford Rd.','Ann Arbor','48104','USA','0'),(4,'Tokyo Traders','Yoshi Nagase','9-8 Sekimai Musashino-shi','Tóquio','100','Japão','0'),(5,'Cooperativa de Quesos','Antonio del Valle','Calle del Rosal 4','Oviedo','33007','Espanha','0'),(6,'Mayumis','Mayumi Ohno','6782-1 Sakura-cho','Osaka','545','Japão','0'),(7,'Pavlova, Ltd.','Ian Devling','74 Rose St.','Melbourne','3058','Austrália','0'),(8,'Specialty Biscuits, Ltd.','Peter Wilson','29 King\'s Way','Manchester','0','UK','0'),(9,'PB Knäckebröd AB','Lars Peterson','Kaloadagatan 13','Gotemburgo','0','Suécia','31'),(10,'Refrescos Americanos','Guillermo Fernandez','Av. das Nações, 100','São Paulo','4578','Brasil','0'),(11,'Heli Süßwaren GmbH','Petra Winkler','Tiergartenstraße 5','Berlim','10785','Alemanha','0'),(12,'Plutzer Lebensmittel','Martin Bein','Biedermeyerstrasse 15','Frankfurt','60306','Alemanha','0'),(13,'Nord-Ost-Fisch Handels','Sven Petersen','Frau-Holle-Weg 92','Cuxhaven','27478','Alemanha','0'),(14,'Formaggi Fortini s.r.l.','Elio Rossi','Viale Dante, 75','Ravenna','48100','Itália','0'),(15,'Norske Meierier','Beate Vileid','Hatlevegen 5','Sandvika','1337','Noruega','0'),(16,'Bigfoot Breweries','Cheryl Saylor','3400 - 8th Avenue','Bend','97701','USA','0'),(17,'Svensk Sjöföda AB','Michael Björn','Brovallavägen 231','Estocolmo','0','Suécia','8'),(18,'Aux Joyeux Ecclésiastiques','Guylène Nodier','203, Rue des Francs-Bourgeois','Paris','75004','França','0'),(19,'New England Seafood Cannery','Robb Merchant','Order Processing Dept.','Boston','2134','USA','0'),(20,'Leka Trading','Chandra Leka','471 Serangoon Loop','Singapura','511','Singapura','555'),(21,'Exotic Liquids','Charlotte Cooper','49 Gilbert St.','Londres','EC1 4SD','UK','0'),(22,'New Orleans Cajun Delights','Shelley Burke','P.O. Box 78934','New Orleans','70117','USA','0'),(23,'Grandma Kelly Homestead','Regina Murphy','707 Oxford Rd.','Ann Arbor','48104','USA','0'),(24,'Tokyo Traders','Yoshi Nagase','9-8 Sekimai Musashino-shi','Tóquio','100','Japão','0'),(25,'Cooperativa de Quesos','Antonio del Valle','Calle del Rosal 4','Oviedo','33007','Espanha','0'),(26,'Mayumis','Mayumi Ohno','6782-1 Sakura-cho','Osaka','545','Japão','0'),(27,'Pavlova, Ltd.','Ian Devling','74 Rose St.','Melbourne','3058','Austrália','0'),(28,'Specialty Biscuits, Ltd.','Peter Wilson','29 King\'s Way','Manchester','M14 GSD','UK','0'),(29,'PB Knäckebröd AB','Lars Peterson','Kaloadagatan 13','Gotemburgo','S-345 67','Suécia','31'),(30,'Refrescos Americanos','Guillermo Fernandez','Av. das Nações, 100','São Paulo','04578-000','Brasil','0'),(31,'Heli Süßwaren GmbH','Petra Winkler','Tiergartenstraße 5','Berlim','10785','Alemanha','0'),(32,'Plutzer Lebensmittel','Martin Bein','Biedermeyerstrasse 15','Frankfurt','60306','Alemanha','0'),(33,'Nord-Ost-Fisch Handels','Sven Petersen','Frau-Holle-Weg 92','Cuxhaven','27478','Alemanha','0'),(34,'Formaggi Fortini s.r.l.','Elio Rossi','Viale Dante, 75','Ravenna','48100','Itália','0'),(35,'Norske Meierier','Beate Vileid','Hatlevegen 5','Sandvika','1337','Noruega','0'),(36,'Bigfoot Breweries','Cheryl Saylor','3400 - 8th Avenue','Bend','97701','USA','0'),(37,'Svensk Sjöföda AB','Michael Björn','Brovallavägen 231','Estocolmo','S-123 45','Suécia','8'),(38,'Aux Joyeux Ecclésiastiques','Guylène Nodier','203, Rue des Francs-Bourgeois','Paris','75004','França','0'),(39,'New England Seafood Cannery','Robb Merchant','Order Processing Dept.','Boston','02134','USA','0'),(40,'Leka Trading','Chandra Leka','471 Serangoon Loop','Singapura','0511','Singapura','555'),(41,'Exotic Liquids','Charlotte Cooper','49 Gilbert St.','Londres','EC1 4SD','UK','(171) 555-2222'),(42,'New Orleans Cajun Delights','Shelley Burke','P.O. Box 78934','New Orleans','70117','USA','(100) 555-4822'),(43,'Grandma Kelly Homestead','Regina Murphy','707 Oxford Rd.','Ann Arbor','48104','USA','(313) 555-5735'),(44,'Tokyo Traders','Yoshi Nagase','9-8 Sekimai Musashino-shi','Tóquio','100','Japão','(03) 3555-5011'),(45,'Cooperativa de Quesos','Antonio del Valle','Calle del Rosal 4','Oviedo','33007','Espanha','(98) 598 76 54'),(46,'Mayumis','Mayumi Ohno','6782-1 Sakura-cho','Osaka','545','Japão','(06) 431-7877'),(47,'Pavlova, Ltd.','Ian Devling','74 Rose St.','Melbourne','3058','Austrália','(03) 444-2343'),(48,'Specialty Biscuits, Ltd.','Peter Wilson','29 King\'s Way','Manchester','M14 GSD','UK','(161) 555-4448'),(49,'PB Knäckebröd AB','Lars Peterson','Kaloadagatan 13','Gotemburgo','S-345 67','Suécia','031-987 65 43'),(50,'Refrescos Americanos','Guillermo Fernandez','Av. das Nações, 100','São Paulo','04578-000','Brasil','(11) 5505-1234'),(51,'Heli Süßwaren GmbH','Petra Winkler','Tiergartenstraße 5','Berlim','10785','Alemanha','(010) 9984510'),(52,'Plutzer Lebensmittel','Martin Bein','Biedermeyerstrasse 15','Frankfurt','60306','Alemanha','(069) 992755'),(53,'Nord-Ost-Fisch Handels','Sven Petersen','Frau-Holle-Weg 92','Cuxhaven','27478','Alemanha','(04721) 8713'),(54,'Formaggi Fortini s.r.l.','Elio Rossi','Viale Dante, 75','Ravenna','48100','Itália','(0544) 60302'),(55,'Norske Meierier','Beate Vileid','Hatlevegen 5','Sandvika','1337','Noruega','(0) 2-953010'),(56,'Bigfoot Breweries','Cheryl Saylor','3400 - 8th Avenue','Bend','97701','USA','(503) 555-9931'),(57,'Svensk Sjöföda AB','Michael Björn','Brovallavägen 231','Estocolmo','S-123 45','Suécia','08-123 45 67'),(58,'Aux Joyeux Ecclésiastiques','Guylène Nodier','203, Rue des Francs-Bourgeois','Paris','75004','França','(1) 03.83.00.68'),(59,'New England Seafood Cannery','Robb Merchant','Order Processing Dept.','Boston','02134','USA','(617) 555-3267'),(60,'Leka Trading','Chandra Leka','471 Serangoon Loop','Singapura','0511','Singapura','555-8787');

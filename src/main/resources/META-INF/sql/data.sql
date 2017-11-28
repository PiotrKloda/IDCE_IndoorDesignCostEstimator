


INSERT INTO categories (id,name,description) VALUES (1,'Kuchnia','Elemnty wykończenia kuchni');
INSERT INTO categories (id,name,description) VALUES (2,'Lazienka','Elemnty wykończenia lazienki');
INSERT INTO categories (id,name,description) VALUES (3,'Panele','Drewniane Wykończenie posadzki');
INSERT INTO categories (id,name,description) VALUES (4,'Płytki','Ceramiczne wykonńczenie posadzki');
INSERT INTO categories (id,name,description) VALUES (5,'Kanapy','Urządzenia do siedzenia');


INSERT INTO `products` (`id`,`description`,`linkToPhoto`,`name`,`price`,`quantityUnit`,`producent`,`category_id`) VALUES (1,'Wanna miedziana','src/main/photowannna.jpg','Wanna',23,'item','Wannowicz',1);
INSERT INTO `products` (`id`,`description`,`linkToPhoto`,`name`,`price`,`quantityUnit`,`producent`,`category_id`) VALUES (2,'Zlew ceramiczny','src/main/photozlew.jpg','Zlew',40,'item','Zlewinski',2);
INSERT INTO `products` (`id`,`description`,`linkToPhoto`,`name`,`price`,`quantityUnit`,`producent`,`category_id`) VALUES (3,'Kabina złota','src/main/kabinazłota.jpg','Kabina',1940,'item','Kabiniewski',3);
INSERT INTO `products` (`id`,`description`,`linkToPhoto`,`name`,`price`,`quantityUnit`,`producent`,`category_id`) VALUES (4,'Kanapa Andrzej','src/main/kabinazłota.jpg','Kanapka',2500,'item','Kanapowski',2);
INSERT INTO `products` (`id`,`description`,`linkToPhoto`,`name`,`price`,`quantityUnit`,`producent`,`category_id`) VALUES (5,'Farba brzydka','src/main/kabinazłota.jpg','Farba Paw',203,'m2/l','Farbowicz',1);


INSERT INTO `attributes` (`id`,`name`,`unit`) VALUES (1,'Waga','kg');
INSERT INTO `attributes` (`id`,`name`,`unit`) VALUES (2,'Długość','m');
INSERT INTO `attributes` (`id`,`name`,`unit`) VALUES (3,'Objętość','m3');
INSERT INTO `attributes` (`id`,`name`,`unit`) VALUES (4,"Grubość",'cm');
INSERT INTO `attributes` (`id`,`name`,`unit`) VALUES (5,"Rozmiar",'m');
INSERT INTO `attributes` (`id`,`name`,`unit`) VALUES (6,"pojemność",'cm3');




--INSERT INTO `categories_attributes` (`categories_id`,`attributes_id`) VALUES (1,1);
--INSERT INTO `categories_attributes` (`categories_id`,`attributes_id`) VALUES (1,2);
--INSERT INTO `categories_attributes` (`categories_id`,`attributes_id`) VALUES (1,3);
--INSERT INTO `categories_attributes` (`categories_id`,`attributes_id`) VALUES (2,1);

INSERT INTO `attributes_categories` (`categories_id`,`attributes_id`) VALUES (1,1);
INSERT INTO `attributes_categories` (`categories_id`,`attributes_id`) VALUES (1,2);
INSERT INTO `attributes_categories` (`categories_id`,`attributes_id`) VALUES (1,3);
INSERT INTO `attributes_categories` (`categories_id`,`attributes_id`) VALUES (2,3);
INSERT INTO `attributes_categories` (`categories_id`,`attributes_id`) VALUES (2,2);
INSERT INTO `attributes_categories` (`categories_id`,`attributes_id`) VALUES (3,1);
INSERT INTO `attributes_categories` (`categories_id`,`attributes_id`) VALUES (4,4);

INSERT INTO `prodAttrValues` (`id`,`value`,`attribute_id`,`product_id`) VALUES (1,'16',1,1);
INSERT INTO `prodAttrValues` (`id`,`value`,`attribute_id`,`product_id`) VALUES (2,'1.3',2,4);
INSERT INTO `prodAttrValues` (`id`,`value`,`attribute_id`,`product_id`) VALUES (3,'Tak',3,3);
INSERT INTO `prodAttrValues` (`id`,`value`,`attribute_id`,`product_id`) VALUES (4,'43',4,1);
INSERT INTO `prodAttrValues` (`id`,`value`,`attribute_id`,`product_id`) VALUES (5,'Dużo',2,2);

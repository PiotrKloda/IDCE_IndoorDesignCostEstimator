


INSERT INTO categories (id,name,description) VALUES (1,'Kuchnia','Elemnty wykończenia kuchni');
INSERT INTO categories (id,name,description) VALUES (2,'Lazienka','Elemnty wykończenia lazienki');


INSERT INTO `products` (`id`,`description`,`linkToPhoto`,`name`,`price`,`producent`,`category_id`) VALUES (1,'Wanna miedziana','src/main/photowannna.jpg','Wanna',23,'Wannowicz',1);
INSERT INTO `products` (`id`,`description`,`linkToPhoto`,`name`,`price`,`producent`,`category_id`) VALUES (2,'Zlew ceramiczny','src/main/photozlew.jpg','Zlew',40,'Zlewinski',2);
INSERT INTO `products` (`id`,`description`,`linkToPhoto`,`name`,`price`,`producent`,`category_id`) VALUES (3,'Kabina złota','src/main/kabinazłota.jpg','Kabina',1940,'Kabiniewski',1);

INSERT INTO `prodAttrValues` (`id`,`unit`,`value`,`attribute_id`,`product_id`) VALUES (1,'kg','16',1,1);
INSERT INTO `prodAttrValues` (`id`,`unit`,`value`,`attribute_id`,`product_id`) VALUES (2,'m','1.3',2,1);
INSERT INTO `prodAttrValues` (`id`,`unit`,`value`,`attribute_id`,`product_id`) VALUES (3,'m3','0.5',3,1);

INSERT INTO `attributes` (`id`,`name`) VALUES (1,'Waga');
INSERT INTO `attributes` (`id`,`name`) VALUES (2,'Długość');
INSERT INTO `attributes` (`id`,`name`) VALUES (3,'Objętość');
INSERT INTO `attributes` (`id`,`name`) VALUES (4,"Długość pały");

INSERT INTO `categories_attributes` (`categories_id`,`attributes_id`) VALUES (1,1);
INSERT INTO `categories_attributes` (`categories_id`,`attributes_id`) VALUES (1,2);
INSERT INTO `categories_attributes` (`categories_id`,`attributes_id`) VALUES (1,3);
INSERT INTO `categories_attributes` (`categories_id`,`attributes_id`) VALUES (2,1);
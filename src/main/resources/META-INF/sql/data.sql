


INSERT INTO categories (id,name,description) VALUES (1,'Kitchen','Kitchen design items');
INSERT INTO categories (id,name,description) VALUES (2,'Bathroom','Bathroom design items');
INSERT INTO categories (id,name,description) VALUES (3,'Floor','Floor finishing material');
INSERT INTO categories (id,name,description) VALUES (4,'Wall','Paints for walls');
INSERT INTO categories (id,name,description) VALUES (5,'Decorations','Decorative items');
INSERT INTO categories (id,name,description,parent_id) VALUES (6,'Shower Cabin','Vertical shower cabins',2);
INSERT INTO categories (id,name,description,parent_id) VALUES (7,'Sinks','Bathroom sinks',2);


INSERT INTO `products` (`id`,`description`,`linkToPhoto`,`name`,`price`,`quantityUnit`,`producent`,`category_id`) VALUES (1,'Silver shower cabin','src/main/photowannna.jpg','Shower cabin',23,'item','Showerer',6);
INSERT INTO `products` (`id`,`description`,`linkToPhoto`,`name`,`price`,`quantityUnit`,`producent`,`category_id`) VALUES (2,'Ceramic sink','src/main/photozlew.jpg','Sink 20d',310,'item','Showerer',2);
INSERT INTO `products` (`id`,`description`,`linkToPhoto`,`name`,`price`,`quantityUnit`,`producent`,`category_id`) VALUES (3,'Round mirror','src/main/kabinazłota.jpg','Roundie',1940,'item','MirrorMan',2);
INSERT INTO `products` (`id`,`description`,`linkToPhoto`,`name`,`price`,`quantityUnit`,`producent`,`category_id`) VALUES (4,'Refrigerator BIG','src/main/kabinazłota.jpg','Fridgie',2500,'item','Cooler',1);
INSERT INTO `products` (`id`,`description`,`linkToPhoto`,`name`,`price`,`quantityUnit`,`producent`,`category_id`) VALUES (5,'Wodden Oak panels','src/main/kabinazłota.jpg','Oak 2ES',45,'m2','SwissWood',3);


INSERT INTO `attributes` (`id`,`name`,`unit`) VALUES (1,'Weight','kg');
INSERT INTO `attributes` (`id`,`name`,`unit`) VALUES (2,'Length','m');
INSERT INTO `attributes` (`id`,`name`,`unit`) VALUES (3,'Volume','m3');
INSERT INTO `attributes` (`id`,`name`,`unit`) VALUES (4,'Size','cm');
INSERT INTO `attributes` (`id`,`name`,`unit`) VALUES (5,'Material','-');
INSERT INTO `attributes` (`id`,`name`,`unit`) VALUES (6,'Covering area','m2/l');


INSERT INTO `attributes_categories` (`categories_id`,`attributes_id`) VALUES (6,1);
INSERT INTO `attributes_categories` (`categories_id`,`attributes_id`) VALUES (6,2);
INSERT INTO `attributes_categories` (`categories_id`,`attributes_id`) VALUES (6,3);
INSERT INTO `attributes_categories` (`categories_id`,`attributes_id`) VALUES (6,5);
INSERT INTO `attributes_categories` (`categories_id`,`attributes_id`) VALUES (2,2);
INSERT INTO `attributes_categories` (`categories_id`,`attributes_id`) VALUES (3,1);
INSERT INTO `attributes_categories` (`categories_id`,`attributes_id`) VALUES (4,4);

INSERT INTO `prodAttrValues` (`id`,`value`,`attribute_id`,`product_id`) VALUES (1,'65',1,1);
INSERT INTO `prodAttrValues` (`id`,`value`,`attribute_id`,`product_id`) VALUES (2,'1.2',2,1);
INSERT INTO `prodAttrValues` (`id`,`value`,`attribute_id`,`product_id`) VALUES (3,'800',3,1);
INSERT INTO `prodAttrValues` (`id`,`value`,`attribute_id`,`product_id`) VALUES (4,'Plexi',5,1);
INSERT INTO `prodAttrValues` (`id`,`value`,`attribute_id`,`product_id`) VALUES (5,'0.8',2,2);

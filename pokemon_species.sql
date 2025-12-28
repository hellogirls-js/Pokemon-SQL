create table if not exists pokemon.species (
	national_dex_no int primary key not null,
	name tinytext unique not null,
	species_name tinytext not null,
	height_meters decimal(6,1) not null default 0,
	weight_kg decimal(6,1) not null default 0,
	gender_ratio_mtf decimal(3,3) default 0.5,
	catch_rate int not null default 200,
	type1_id int not null,
	type2_id int,
	ability1_id int not null,
	ability2_id int,
	ability_hidden_id int,
	constraint `fk_type1` 
		foreign key (type1_id) 
		references pokemon.types (type_id),
	constraint `fk_type2` 
		foreign key (type2_id) 
		references pokemon.types (type_id),
	constraint `fk_ability1` 
		foreign key (ability1_id) 
		references pokemon.abilities (id),
	constraint `fk_ability2` 
		foreign key (ability2_id) 
		references pokemon.abilities (id),
	constraint `fk_ability_hidden` 
		foreign key (ability_hidden_id) 
		references pokemon.abilities (id)
);

insert into pokemon.species (national_dex_no, name, species_name, height_meters, weight_kg, gender_ratio_mtf, catch_rate, type1_id, type2_id, ability1_id, ability2_id, ability_hidden_id)
values (152, "Chikorita", "Leaf", 0.9, 6.4, 0.875, 45, 4, null, 1, null, null),
(153, "Bayleef", "Leaf", 1.2, 15.8, 0.875, 45, 4, null, 1, null, null),
(154, "Meganium", "Herb", 1.8, 100.5, 0.875, 45, 4, null, 1, null, null),
(155, "Cyndaquil", "Fire Mouse", 0.5, 7.9, 0.875, 45, 2, null, 2, null, null),
(156, "Quilava", "Volcano", 0.9, 19, 0.875, 45, 2, null, 2, null, null),
(157, "Typhlosion", "Volcano", 1.7, 79.5, 0.875, 45, 2, null, 2, null, null),
(158, "Totodile", "Big Jaw", 0.6, 9.5, 0.875, 45, 3, null, 3, null, null),
(159, "Croconaw", "Big Jaw", 1.1, 25, 0.875, 45, 3, null, 3, null, null),
(160, "Feraligatr", "Big Jaw", 2.3, 88.8, 0.875, 45, 3, null, 3, null, null),
(172, "Pichu", "Tiny Mouse", 0.3, 2, 0.5, 190, 5, null, 4, null, null),
(25, "Pikachu", "Mouse", 0.4, 6, 0.5, 190, 5, null, 4, null, null),
(26, "Raichu", "Mouse", 0.8, 30, 0.5, 75, 5, null, 4, null, null);


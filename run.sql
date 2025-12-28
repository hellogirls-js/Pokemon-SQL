create table if not exists pokemon.types (
	type_id int auto_increment primary key,
	name tinytext not null unique
);

insert into pokemon.types (name)
values ("Normal"),
("Fire"),
("Water"),
("Grass"),
("Electric"),
("Fighting"),
("Flying"),
("Bug"),
("Poison"),
("Rock"),
("Ground"),
("Ghost"),
("Psychic"),
("Ice"),
("Dragon"),
("Dark"),
("Steel"),
("Fairy");

create table pokemon.type_chart (damage_multiplier decimal(2, 1) not null default 1.00)
select t1.type_id as attacker_id,
t1.name as attacking_type,
t2.type_id as defender_id,
t2.name  as defending_type
from types t1, types t2;

update pokemon.type_chart tc
set damage_multiplier = 2.0
where tc.defending_type = "Normal"
and tc.attacking_type = "Fighting";

update pokemon.type_chart tc
set damage_multiplier = 0
where tc.defending_type = "Normal"
and tc.attacking_type = "Ghost";

update pokemon.type_chart tc
set damage_multiplier = 0.5
where tc.defending_type  = "Fire"
and tc.attacking_type in ("Fire", "Bug", "Grass", "Steel", "Ice", "Fairy");

update pokemon.type_chart tc 
set damage_multiplier = 2.0
where tc.defending_type = "Fire"
and tc.attacking_type in ("Water", "Ground", "Rock");

update pokemon.type_chart tc
set damage_multiplier = 0.5
where tc.defending_type  = "Water"
and tc.attacking_type in ("Fire", "Water", "Ice", "Steel");

update pokemon.type_chart tc 
set damage_multiplier = 2.0
where tc.defending_type = "Water"
and tc.attacking_type in ("Grass", "Electric");

update pokemon.type_chart tc
set damage_multiplier = 0.5
where tc.defending_type  = "Grass"
and tc.attacking_type in ("Ground", "Water", "Grass", "Electric");

update pokemon.type_chart tc 
set damage_multiplier = 2
where tc.defending_type = "Grass"
and tc.attacking_type in ("Fire", "Flying", "Bug", "Poison", "Ice");

update pokemon.type_chart tc 
set damage_multiplier = 2
where tc.defending_type = "Electric"
and tc.attacking_type = "Ground";

update pokemon.type_chart tc 
set damage_multiplier = 0.5
where tc.defending_type = "Electric"
and tc.attacking_type in ("Electric", "Flying", "Steel");

update pokemon.type_chart tc 
set damage_multiplier = 2
where tc.defending_type = "Fighting"
and tc.attacking_type in ("Flying", "Psychic", "Fairy");

update pokemon.type_chart tc 
set damage_multiplier = 0.5
where tc.defending_type = "Fighting"
and tc.attacking_type in ("Rock", "Bug", "Dark");

update pokemon.type_chart tc 
set damage_multiplier = 2
where tc.defending_type = "Flying"
and tc.attacking_type in ("Rock", "Electric", "Ice");

update pokemon.type_chart tc 
set damage_multiplier = 0.5
where tc.defending_type = "Flying"
and tc.attacking_type in ("Fighting", "Bug", "Grass");

update pokemon.type_chart tc 
set damage_multiplier = 0
where tc.defending_type = "Flying"
and tc.attacking_type = "Ground";

update pokemon.type_chart tc 
set damage_multiplier = 2
where tc.defending_type = "Bug"
and tc.attacking_type in ("Rock", "Flying", "Fire");

update pokemon.type_chart tc 
set damage_multiplier = 0.5
where tc.defending_type = "Bug"
and tc.attacking_type in ("Fighting", "Ground", "Grass");

update pokemon.type_chart tc 
set damage_multiplier = 2
where tc.defending_type = "Poison"
and tc.attacking_type in ("Ground", "Psychic");

update pokemon.type_chart tc 
set damage_multiplier = 0.5
where tc.defending_type = "Poison"
and tc.attacking_type in ("Fighting", "Poison", "Grass", "Bug", "Fairy");

update pokemon.type_chart tc 
set damage_multiplier = 2
where tc.defending_type = "Rock"
and tc.attacking_type in ("Ground", "Fighting", "Water", "Grass", "Steel");

update pokemon.type_chart tc 
set damage_multiplier = 0.5
where tc.defending_type = "Rock"
and tc.attacking_type in ("Normal", "Flying", "Poison", "Fire");

update pokemon.type_chart tc 
set damage_multiplier = 2
where tc.defending_type = "Ground"
and tc.attacking_type in ("Water", "Grass", "Ice");

update pokemon.type_chart tc 
set damage_multiplier = 0.5
where tc.defending_type = "Ground"
and tc.attacking_type in ("Poison", "Rock");

update pokemon.type_chart tc 
set damage_multiplier = 0
where tc.defending_type = "Ground"
and tc.attacking_type = "Electric";

update pokemon.type_chart tc 
set damage_multiplier = 2
where tc.defending_type = "Ghost"
and tc.attacking_type in ("Ghost", "Dark");

update pokemon.type_chart tc 
set damage_multiplier = 0.5
where tc.defending_type = "Ghost"
and tc.attacking_type in ("Poison", "Bug");

update pokemon.type_chart tc 
set damage_multiplier = 0
where tc.defending_type = "Ghost"
and tc.attacking_type in ("Normal", "Fighting");

update pokemon.type_chart tc 
set damage_multiplier = 2
where tc.defending_type = "Psychic"
and tc.attacking_type in ("Ghost", "Dark", "Bug");

update pokemon.type_chart tc 
set damage_multiplier = 0.5
where tc.defending_type = "Psychic"
and tc.attacking_type in ("Fighting", "Psychic");

update pokemon.type_chart tc 
set damage_multiplier = 2
where tc.defending_type = "Ice"
and tc.attacking_type in ("Fighting", "Rock", "Fire", "Steel");

update pokemon.type_chart tc 
set damage_multiplier = 0.5
where tc.defending_type = "Ice"
and tc.attacking_type in ("Ice");

update pokemon.type_chart tc 
set damage_multiplier = 2
where tc.defending_type = "Dragon"
and tc.attacking_type in ("Ice", "Dragon", "Fairy");

update pokemon.type_chart tc 
set damage_multiplier = 0.5
where tc.defending_type = "Dragon"
and tc.attacking_type in ("Fire", "Water", "Grass", "Electric");

update pokemon.type_chart tc 
set damage_multiplier = 2
where tc.defending_type = "Dark"
and tc.attacking_type in ("Fighting", "Bug", "Fairy");

update pokemon.type_chart tc 
set damage_multiplier = 0.5
where tc.defending_type = "Dark"
and tc.attacking_type in ("Ghost", "Dark");

update pokemon.type_chart tc 
set damage_multiplier = 0
where tc.defending_type = "Dark"
and tc.attacking_type = "Psychic";

update pokemon.type_chart tc 
set damage_multiplier = 2
where tc.defending_type = "Steel"
and tc.attacking_type in ("Fighting", "Ground", "Fire");

update pokemon.type_chart tc 
set damage_multiplier = 0.5
where tc.defending_type = "Steel"
and tc.attacking_type in ("Normal", "Flying", "Rock", "Bug", "Steel", "Grass", "Psychic", "Ice", "Dragon", "Fairy");

update pokemon.type_chart tc 
set damage_multiplier = 0
where tc.defending_type = "Steel"
and tc.attacking_type = "Poison";

update pokemon.type_chart tc 
set damage_multiplier = 2
where tc.defending_type = "Fairy"
and tc.attacking_type in ("Poison", "Steel");

update pokemon.type_chart tc 
set damage_multiplier = 0.5
where tc.defending_type = "Fairy"
and tc.attacking_type in ("Fighting", "Bug", "Dark");

update pokemon.type_chart tc 
set damage_multiplier = 0
where tc.defending_type = "Fairy"
and tc.attacking_type = "Dragon";

create table if not exists pokemon.abilities (
	id int auto_increment primary key,
	name tinytext unique not null,
	description text not null
);

insert into pokemon.abilities (name, description) 
values ("Overgrow", "Powers up Grass-type moves when the Pokémon's HP is low."),
("Blaze", "Powers up Fire-type moves when the Pokémon's HP is low."),
("Torrent", "Powers up Water-type moves when the Pokémon's HP is low."),
("Static", "The Pokémon is charged with static electricity and may paralyze attackers that make direct contact with it.");

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
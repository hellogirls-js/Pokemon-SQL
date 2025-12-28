create database pokemon;

use pokemon;

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

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
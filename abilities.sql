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
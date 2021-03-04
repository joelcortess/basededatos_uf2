CREATE TABLE pokedex(
	id_pokedex INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_pokemon INT UNSIGNED,
    FOREIGN KEY (id_pokemon) REFERENCES pokemon(id_pokemon),
    fecha DATE
);
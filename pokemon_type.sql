CREATE TABLE pokemon_type(
	id_pokemon_type INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_pokemon INT UNSIGNED,
    FOREIGN KEY (id_pokemon) REFERENCES pokemon(id_pokemon),
    id_type INT UNSIGNED,
    FOREIGN KEY (id_type) REFERENCES type(id_type)
);
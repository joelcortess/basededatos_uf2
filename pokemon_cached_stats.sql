CREATE TABLE pokemon_cached_stats(
	id_pokemon_cached_stats INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    lvl INT,
    hp INT,
    height INT,
    weight INT,
    attack INT,
    defense INT,
    speed INT,
    id_pokemon_cached INT UNSIGNED,
    FOREIGN KEY (id_pokemon_cached) REFERENCES pokemon_cached(id_pokemon_cached)
);
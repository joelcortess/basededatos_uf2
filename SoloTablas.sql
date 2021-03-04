DROP TABLE IF EXISTS pokedex;
DROP TABLE IF EXISTS pokemon;
DROP TABLE IF EXISTS pokedex_stats;
DROP TABLE IF EXISTS stats;
DROP TABLE IF EXISTS pokemon_cached;
DROP TABLE IF EXISTS pokemon_cached_stats;
DROP TABLE IF EXISTS type;
DROP TABLE IF EXISTS pokemon_type;

CREATE TABLE pokemon(
	id_pokemon INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    description TEXT,
    img VARCAHR(32)
);

CREATE TABLE pokedex(
	id_pokedex INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_pokemon INT UNSIGNED,
    FOREIGN KEY (id_pokemon) REFERENCES pokemon(id_pokemon),
    fecha DATE
);
CREATE TABLE pokedex_stats(
	id_pokedex_stats INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    lvl INT,
    hp INT,
    height INT,
    weight INT,
    attack INT,
    defense INT,
    speed INT,
    xp INT,
    id_pokedex INT UNSIGNED,
    FOREIGN KEY (id_pokedex) REFERENCES pokedex(id_pokedex)
);

CREATE TABLE pokemon_cached(
	id_pokemon_cached_stats INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_pokemon_cached INT UNSIGNED,
    FOREIGN KEY (id_pokemon_cached) REFERENCES pokemon_cached(id_pokemon_cached)
    fecha DATE;
);

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
CREATE TABLE pokemon_type(
	id_pokemon_type INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_pokemon INT UNSIGNED,
    FOREIGN KEY (id_pokemon) REFERENCES pokemon(id_pokemon),
    id_type INT UNSIGNED,
    FOREIGN KEY (id_type) REFERENCES type(id_type)
);

CREATE TABLE stats(
	id_stats INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    lvl INT,
    hp INT,
    height INT,
    weight INT,
    attack INT,
    defense INT,
    speed INT,
    xp INT,
    id_pokemon INT UNSIGNED,
    FOREIGN KEY (id_pokemon) REFERENCES pokemon(id_pokemon)
);

CREATE TABLE type(
	id_type INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR (32)
);

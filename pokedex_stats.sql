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
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
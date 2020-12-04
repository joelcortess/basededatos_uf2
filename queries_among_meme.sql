/* TODAS LAS QUERIES DE LA BASE DE DATOS DE AMONG MEME: THE GAME */

/* ELIMINAMOS TODAS LAS TABLAS PRIMERO */

DROP TABLE IF EXISTS stats;
DROP TABLE IF EXISTS characters_items;
DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS items_types;
DROP TABLE IF EXISTS characters;

/* CREAMOS LAS TABLAS */

/* CREAR TABLA CHARACTERS */
CREATE TABLE characters (
	id_character INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(16) NOT NULL,
	age INT,
	birthdate DATE,
	hp INT,
	gender CHAR(1),
	style CHAR(2),
	mana INT,
	class CHAR(2),
	race CHAR(2),
	xp INT,
	level INT,
	height FLOAT
);

/*--------------------------------------------------------------*/

/* CREAR TABLA ITEMS-TYPES */
CREATE TABLE items_types (
	id_item_type INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	type VARCHAR(24)
);
/* INSERTAMOS LOS TIPOS DE ITEMS */
INSERT INTO items_types ("type")
VALUES
	("Otros"),
	("Equipable"),
	("Consumibles"),
	("Clave");


/* CREAR TABLA ITEMS */
CREATE TABLE items (
    id_item INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    item VARCHAR(24),
	cost INT,
	consumable BOOLEAN,
	tradeable BOOLEAN,
	weight INT,
	image VARCHAR(32),
	description TEXT,
	id_item_type INT UNSIGNED NOT NULL,
	FOREIGN KEY (id_item_type) REFERENCES items_types(id_item_type)
);

/* CREAR TABLA CHARACTERS-ITEMS */
CREATE TABLE characters_items (
	id_character_item INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_character INT UNSIGNED NOT NULL,
	FOREIGN KEY (id_character) REFERENCES characters(id_character),
	id_item INT UNSIGNED NOT NULL,
	FOREIGN KEY (id_item) REFERENCES items(id_item)
);

/*----------------------------------------------------------------------*/

/* CREAR TABLA STATS */
CREATE TABLE stats (
	id_stat INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	intel INT,
	strenght INT,
	speed INT,
	charisma INT,
	`level` INT,
	id_character INT UNSIGNED NOT NULL,
	FOREIGN KEY (id_character) REFERENCES characters(id_character)
);


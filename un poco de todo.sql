INSERT INTO pokemon (name, description, img)
VALUES
	('Ivysaur', 'pokemon de primera generación', 'ivysaur.png'),
    ('Ivysaur', 'pokemon de primera generación', 'Ivysaur.png'),
    ('Venusaur', 'pokemon de primera generación', 'Venusaur.png'),
    ('Charmander', 'pokemon de primera generación', 'Charmander.png'),
    ('Charmaleon', 'pokemon de primera generación', 'Charmaleon.png'),
    ('Charizard', 'pokemon de primera generación', 'Charizard.png'),
    ('Squirtle', 'pokemon de primera generación', 'Squirtle.png'),
    ('Wartortle', 'pokemon de primera generación', 'Wartortle.png'),
    ('Blastoise', 'pokemon de primera generación', 'Blastoise.png'),
    ('Shinix', 'pokemon de cuarta generación', 'Shinix.png'),
    ('Luxio', 'pokemon de cuarta generación', 'Luxio.png'),
    ('Luxray', 'pokemon de cuarta generación', 'Luxray.png'),
    ('Treecko', 'pokemon de cuarta generación', 'Treecko.png'),
    ('Grovlye', 'pokemon de cuarta generación', 'Grovlye.png'),
    ('Sceotile', 'pokemon de cuarta generación', 'Sceotile.png'),
    ('Chimpar', 'pokemon de cuarta generación', 'Chimpar.png'),
    ('Monferno', 'pokemon de cuarta generación', 'Monferno.png'),
    ('Infername', 'pokemon de cuarta generación', 'Infername.png');

________________________________________________________________

INSERT INTO type(type)
VALUES
	('Planta'), ('Fuego'), ('Electrico'), ('Agua');
    
________________________________________________________________


INSERT INTO pokemon_cached (id_pokemon)
SELECT id_pokemon FROM pokemon;


________________________________________________________________

INSERT INTO stats(id_pokemon)
SELECT id_pokemon FROM pokemon;

INSERT INTO stats (lvl, hp, height, weight, attack, defense, speed, xp)
VALUES
	('2', '100', '20', '15', '20', '5', '15', 200),
    ('3', '200', '20', '15', '20', '5', '15', 200),
    ('4', '300', '20', '15', '20', '5', '15', 200),
    ('4', '100', '20', '15', '20', '5', '15', 200),
    ('5', '100', '20', '15', '20', '5', '15', 200),
    ('6', '200', '20', '15', '20', '5', '15', 200),
    ('1', '100', '20', '15', '20', '5', '15', 200),
    ('2', '100', '20', '15', '20', '5', '15', 200),
    ('3', '150', '20', '15', '20', '5', '15', 200),
    ('5', '100', '20', '15', '20', '5', '15', 200),
    ('4', '150', '20', '15', '20', '5', '15', 200),
    ('2', '100', '20', '15', '20', '5', '15', 200),
    ('8', '110', '20', '15', '20', '5', '15', 200),
    ('10', '101', '20', '15', '20', '5', '15', 200),
    ('15', '100', '20', '15', '20', '5', '15', 200),
    ('1', '300', '20', '15', '20', '5', '15', 200),
    ('2', '100', '20', '15', '20', '5', '15', 200),
    ('4', '100', '20', '15', '20', '5', '15', 200);



________________________________________________________________

INSERT INTO pokemon_type (id_pokemon)
SELECT id_pokemon FROM pokemon;


INSERT INTO type(id_type)
SELECT type FROM type;

INSERT INTO pokemon_type (id_type)
VALUES
	('1'),
    ('1'),
    ('1'),
    ('2'),
    ('2'),
    ('2'),
    ('4'),
    ('4'),
    ('4'),
    ('3'),
    ('3'),
    ('3'),
    ('1'),
    ('1'),
    ('1'),
    ('2'),
    ('2'),
    ('2');





INSERT INTO pokedex_stats(lvl, hp, height, weight, attack, defense, speed, xp)
SELECT lvl, hp, height, weight, attack, defense, speed, xp FROM stats;










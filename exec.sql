USE db_zoo
SELECT * FROM tbl_nutrition 
SELECT * FROM tbl_species


SELECT a1.nutrition_id, a2.species_name
FROM tbl_nutrition a1
INNER JOIN tbl_species a2 ON a2.species_nutrition = a1.nutrition_id
WHERE nutrition_id BETWEEN 2202 AND 2206; /*LETS FUCKING GOOOOOOO BOIII ALL I NEEDED TO DO WAS PUT SPECIES_NUTRITION DRILL 4*/
SELECT * FROM tbl_species

SELECT * FROM tbl_nutrition

/*drill 1*/

SELECT * FROM tbl_habitat

/* END drill 1*/

/*drill 2*/

SELECT * FROM tbl_species WHERE species_order = 3

/*END drill 2*/

/*Retrieve all names from the species_name column that have a species_order value of 3.*/

/* drill 3*/

SELECT nutrition_type FROM tbl_nutrition WHERE nutrition_cost <= 600.00

/* END drill 3*/
/*Retrieve only the nutrition_type from the nutrition table that have a nutrition_cost of 600.00 or less.*/

/* drill 4 */

SELECT a1.species_nutrition, a2.nutrition_id, a1.species_name
FROM tbl_species a1
INNER JOIN  tbl_nutrition a2 ON a2.nutrition_id = a1.species_nutrition
WHERE nutrition_id BETWEEN 2202 AND 2206
/* END drill 4 */
/*Retrieve all species_names with the nutrition_id between 2202 and 2206 from the nutrition table.*/

/*drill 5*/
SELECT a1.species_name AS 'Species Name:', a2.nutrition_type AS 'Nutrition Type:'
FROM tbl_species a1 
INNER JOIN tbl_nutrition a2 ON a2.nutrition_id = a1.species_nutrition
/* Retrieve all names within the species_name column using the alias "Species Name:" from the species table 
and their corresponding nutrition_type under the alias "Nutrition Type:" from the nutrition table. drill 5*/ 
/*END drill 5*/


/*drill 6*/
SELECT a1.specialist_fname, a1.specialist_lname, a1.specialist_contact, a3.care_specialist, a2.species_care, a3.care_id
FROM tbl_specialist a1
INNER JOIN tbl_care a3 ON a3.care_specialist = a1.specialist_id
INNER JOIN tbl_species a2 ON a2.species_care = a3.care_id
WHERE a2.species_name = 'penguin'
/* THIS IS DRILL 6 DONE, I JUST NEED TO LOOK AT ALL THE TABLES WHEN I AM STUCK I THINK.*/ 
 /*From the specialist table, retrieve the first and last name and contact number of those that provide care for the penguins from the species table. */

 /*drill 7*/
 CREATE TABLE tbl_players (
 player_id INT PRIMARY KEY NOT NULL IDENTITY (1, 1),
 player_fname VARCHAR(50) NOT NULL,
 player_lname VARCHAR(50) NOT NULL 
 )
 INSERT INTO tbl_players
		(player_lname, player_fname)
		VALUES
		('Andersen', 'Gunnar'),
		('Shtivelband', 'Richard'),
		('Mulyar', 'Michael'),
		('Kunche', 'Nikhilesh'),
		('Seidler', 'Kevin'),
		('Lapid', 'Lior')
		SELECT * FROM tbl_players

CREATE TABLE tbl_rating (
rating_id INT NOT NULL FOREIGN KEY REFERENCES tbl_players (player_id),
rating_strength INT 
) 
SELECT * FROM tbl_rating
DROP TABLE tbl_rating

INSERT INTO tbl_rating
(rating_strength, rating_id)
VALUES
('2307', 1),
('2301', 2),
('2501', 3),
('2299', 4),
('2137', 5),
('2333', 6)


 SELECT a1.player_lname, a1.player_fname, a1.player_id, a2.rating_id, a2.rating_strength
 FROM tbl_players a1
 INNER JOIN tbl_rating a2 ON a2.rating_id = a1.player_id
 WHERE a1.player_lname = 'Andersen'
 /*END DRILL 7*/
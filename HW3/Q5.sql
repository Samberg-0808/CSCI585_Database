/*
Run the query for convex hull and nearest neighbors seperately.
*/
CREATE TABLE geometries (
	name varchar, 
	geom geometry
);

INSERT INTO geometries VALUES
	('USC Village', 'POINT(-118.285076 34.025630)'),
	('McClintock', 'POINT(-118.287450 34.024984)'),
	('Lyon Center', 'POINT(-118.288453 34.024481)'),
	('Galen Center', 'POINT(-118.287142 34.022978)'),
	('Annenberg', 'POINT(-118.286044 34.022042)'),
	('Wallis A_Hall', 'POINT(-118.287146 34.021023)'),
	('Dornsife', 'POINT(-118.285081 34.021268)'),
	('PFS Fountain', 'POINT(-118.285224 34.020233)'),
	('IPA Center', 'POINT(-118.284013 34.021337)'),
	('Viterbi','POINT(-118.290004 34.020325)'),
	('CS Department', 'POINT(-118.289563 34.019454)'),
	('Fisher Museum', 'POINT(-118.287356 34.018626)'),
	('Apartment', 'POINT(-118.303993 34.056897)');
/*
Convex Hull
*/
SELECT ST_AsText(ST_ConvexHull(
	ST_GeomFromText('MULTIPOINT(-118.285076 34.025630,
					-118.287450 34.024984,
					-118.288453 34.024481,
					-118.287142 34.022978,
				    -118.286044 34.022042,
					-118.287146 34.021023,
					-118.285081 34.021268,
					-118.285224 34.020233,
					-118.284013 34.021337,
				    -118.290004 34.020325,
				    -118.289563 34.019454,
				    -118.287356 34.018626,
				    -118.303993 34.056897)')
));
/*
Nearest 4 neighbors 
*/
SElECT *
FROM
    (SELECT *
    FROM geometries
    ORDER BY geom <-> ST_SetSRID(ST_MakePoint(-118.303993,34.056897),0)
    LIMIT 5) AS Locations
WHERE Locations.name != 'Apartment'
;
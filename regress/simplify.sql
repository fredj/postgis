SELECT '1', astext(simplify('LINESTRING(0 0, 0 10, 0 51, 50 20, 30 20, 7 32)', 2));
SELECT '2', astext(simplify('LINESTRING(0 0 3, 0 10 6, 0 51 1, 50 20 6, 30 20 9, 7 32 10)', 2));
SELECT '3', astext(simplify('LINESTRINGM(0 0 3, 0 10 6, 0 51 1, 50 20 6, 30 20 9, 7 32 10)', 2));
SELECT '4', astext(simplify('LINESTRING(0 0 3 2, 0 10 6 1, 0 51 1 6, 50 20 6 7, 30 20 9 9, 7 32 10 5)', 2));
SELECT '5', astext(simplify('MULTIPOINT(0 0 3 2, 0 10 6 1, 0 51 1 6, 50 20 6 7, 30 20 9 9, 7 32 10 5)', 20));
SELECT '6', astext(simplify('MULTILINESTRING((0 0 3 2, 0 10 6 1, 0 51 1 6, 50 20 6 7, 30 20 9 9, 7 32 10 5), (0 0 4 3, 1 1 2 3, 20 20 5 30))', 20));
SELECT '7', astext(simplify('POLYGON((0 0 3 2, 0 10 6 1, 0 51 1 6, 50 20 6 7, 30 20 9 9, 7 32 10 5, 0 0 3 2), (1 1 4 3, 1 3 2 3, 18 18 5 30, 1 1 4 3))', 20));
SELECT '8', astext(simplify('POLYGON((0 0 3 2, 0 10 6 1, 0 51 1 6, 50 20 6 7, 30 20 9 9, 7 32 10 5, 0 0 3 2), (1 1 4 3, 1 3 2 3, 18 18 5 30, 1 1 4 3))', 1));

-- Repeat all tests with the new function names.
SELECT '1', ST_astext(ST_simplify('LINESTRING(0 0, 0 10, 0 51, 50 20, 30 20, 7 32)', 2));
SELECT '2', ST_astext(ST_simplify('LINESTRING(0 0 3, 0 10 6, 0 51 1, 50 20 6, 30 20 9, 7 32 10)', 2));
SELECT '3', ST_astext(ST_simplify('LINESTRINGM(0 0 3, 0 10 6, 0 51 1, 50 20 6, 30 20 9, 7 32 10)', 2));
SELECT '4', ST_astext(ST_simplify('LINESTRING(0 0 3 2, 0 10 6 1, 0 51 1 6, 50 20 6 7, 30 20 9 9, 7 32 10 5)', 2));
SELECT '5', ST_astext(ST_simplify('MULTIPOINT(0 0 3 2, 0 10 6 1, 0 51 1 6, 50 20 6 7, 30 20 9 9, 7 32 10 5)', 20));
SELECT '6', ST_astext(ST_simplify('MULTILINESTRING((0 0 3 2, 0 10 6 1, 0 51 1 6, 50 20 6 7, 30 20 9 9, 7 32 10 5), (0 0 4 3, 1 1 2 3, 20 20 5 30))', 20));
SELECT '7', ST_astext(ST_simplify('POLYGON((0 0 3 2, 0 10 6 1, 0 51 1 6, 50 20 6 7, 30 20 9 9, 7 32 10 5, 0 0 3 2), (1 1 4 3, 1 3 2 3, 18 18 5 30, 1 1 4 3))', 20));
SELECT '8', ST_astext(ST_simplify('POLYGON((0 0 3 2, 0 10 6 1, 0 51 1 6, 50 20 6 7, 30 20 9 9, 7 32 10 5, 0 0 3 2), (1 1 4 3, 1 3 2 3, 18 18 5 30, 1 1 4 3))', 1));
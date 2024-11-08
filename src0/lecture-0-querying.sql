SELECT * FROM "longlist";
-- SELECT "title" FROM "longlist";
-- SELECT "title", "author" FROM "lonGlisT";

-- LIMIT -> limit the number
SELECT * FROM "longlist" LIMIT 10;

-- WEHRE -> condition
SELECT "title", "author", "year" FROM "longlist" WHERE "year" = 2023;
-- SELECT "title", "author", "year" FROM "longlist" WHERE "year" = 2023 AND LENGTH("title") > 10;
-- <>
SELECT "title", "format" from longlist WHERE "format" != 'hardcover';
SELECT "title", "format" from longlist WHERE "format" <> 'hardcover';
SELECT "title", "format" from longlist ix
WHERE NOT "format" = 'hardcover';

-- AND, OR, ()
SELECT "title", "author" FROM "longlist" WHERE "year" = 2022 OR "year" == 2023;
SELECT "title", "format" FROM "longlist" WHERE ("year" = 2022 or "year" = 2023) AND "format" != "hardcover";

-- sqlite3
-- .schema longlist

-- NULL
SELECT "title", "translator" FROM "longlist" WHERE "translator" IS NULL;

-- getting the total count
SELECT COUNT(*) FROM longlist;

-- %, - -> like
SELECT "title" FROM "longlist" WHERE "title" LIKE '%love%';

SELECT "title" FROM "longlist" WHERE "title" LIKE 'the %';
-- 上面的也會找到其他 `the` (their) 開頭的字，所以後面可以加上空格


SELECT "title" FROM "longlist" WHERE "title" LIKE '%the';
SELECT "title" FROM "longlist" WHERE "title" LIKE '%the%memo%';

-- 
SELECT "title" from "longlist" WHERE "title" LIKE 'p_re';
SELECT "title" from "longlist" WHERE "title" LIKE 'T___';


-- 
SELECT "title", "year" FROM "longlist" WHERE "year" >= 2019 and "year" <= 2022;

-- BETWEEN ... AND
SELECT "title", "year" FROM "longlist" WHERE "year" BETWEEN 2019 AND 2022;
SELECT "title", "rating" FROM "longlist" WHERE "rating" >= 4.0;
SELECT "title", "rating", "votes" FROM "longlist" WHERE "rating" > 4.0 AND "votes" > 6666;

SELECT "title", "pages" FROM "longlist" WHERE "pages" < 300;

-- get the longlist schema
PRAGMA table_info("longlist");


-- case sensitivity
SELECT "title" FROM "longlist" WHERE "title" LIKE "pYRe"; -- case insensitive
SELECT "title" FROM "longlist" WHERE "title" GLOB "Pyre"; -- case sensitive


-- ORDER BY
SELECT "title", "rating" FROM "longlist" ORDER BY "rating" DESC LIMIT 10; -- ORDER BY _ ASC, ORDER BY _ DESC
SELECT "title", "rating", "votes" FROM "longlist" ORDER BY "rating" DESC, "votes" DESC LIMIT 10;
-- SELECT "title", "rating" FROM "longlist" LIMIT 10 ORDER BY "rating";

SELECT "title" FROM "longlist" ORDER BY "title";
SELECT "title" FROM "longlist" ORDER BY "title" DESC;

-- SQL Aggregate Functions
/*
1. COUNT()
2. SUM()
3. AVG()
4. MAX()
5. MIN()
6. GROUP_CONCAT()
*/
SELECT "author" FROM "longlist" ORDER BY "author";
SELECT "author", AVG("rating") FROM "longlist" GROUP BY "author";
USE react_node_app;

SET FOREIGN_KEY_CHECKS = 0;

UPDATE author SET id = id + 1000;
UPDATE book SET authorId = authorId + 1000;

SET @rank = 0;
CREATE TEMPORARY TABLE author_temp AS
SELECT id as old_id, (@rank := @rank + 1) as new_id
FROM author ORDER BY id ASC;

UPDATE author a
JOIN author_temp t ON a.id = t.old_id
SET a.id = t.new_id;

UPDATE book b
JOIN author_temp t ON b.authorId = t.old_id
SET b.authorId = t.new_id;

UPDATE book SET id = id + 1000;

SET @rank2 = 0;
CREATE TEMPORARY TABLE book_temp AS
SELECT id as old_id, (@rank2 := @rank2 + 1) as new_id
FROM book ORDER BY id ASC;

UPDATE book b
JOIN book_temp t ON b.id = t.old_id
SET b.id = t.new_id;

ALTER TABLE author AUTO_INCREMENT = 1;
ALTER TABLE book AUTO_INCREMENT = 1;

DROP TEMPORARY TABLE IF EXISTS author_temp;
DROP TEMPORARY TABLE IF EXISTS book_temp;

SET FOREIGN_KEY_CHECKS = 1;

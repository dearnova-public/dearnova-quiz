SET search_path = quiz;

CREATE SEQUENCE pk_sequence
  INCREMENT 1
  MINVALUE 0
  MAXVALUE 9223372036854775807
  START 0
  CACHE 1;

CREATE TABLE question (
  id BIGINT NOT NULL,
  question TEXT,
  answer TEXT NOT NULL,

  PRIMARY KEY (id)
);

-- Add some initial questions
INSERT INTO question (id, question, answer)
VALUES (nextval('pk_sequence'), 'Wie begroet je iedere morgen met "Goooeeedemorgen!!!"?', 'Jeroen V.'),
       (nextval('pk_sequence'), 'Op wie is "Die is met vakantie" van toepassing?', 'Luuk'),
       (nextval('pk_sequence'), 'Hoe noem je het wanneer iemand zonder druppel op de gang staat?', 'Een Arnootje');
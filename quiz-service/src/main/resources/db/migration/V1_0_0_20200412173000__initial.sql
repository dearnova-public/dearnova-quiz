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
VALUES (nextval('pk_sequence'), 'Wie speekt Cultuurpagina uit als Cultuurpagína?', 'Robert'),
       (nextval('pk_sequence'), 'Wie begroet je iedere morgen met "Goooeeedemorgen!!!"?', 'Jeroen V.'),
       (nextval('pk_sequence'), 'Op wie is "Die is met vakantie" van toepassing?', 'Luuk'),
       (nextval('pk_sequence'), 'Hoe noem je het wanneer iemand zonder druppel op de gang staat?', 'Een Arnootje'),
       (nextval('pk_sequence'), 'Wie is de man met de groene shakes?', 'Sieto'),
       (nextval('pk_sequence'), 'Wie zegt altijd "Mooi"?', 'Uilke'),
       (nextval('pk_sequence'), 'Wie eet een pakje kauwgom per dag?', 'Niels'),
       (nextval('pk_sequence'), 'Naar wie roept Gerard "Dinges"?', 'Arno'),
       (nextval('pk_sequence'), 'Wie is de Scrummaster@home?', 'Jasper de B.'),
       (nextval('pk_sequence'), 'Wie is de DearNova paparazzi?', 'Patrick de B.'),
       (nextval('pk_sequence'), 'Wie is de Dearnoveaanse Chuck Norris?', 'Grote Corne'),
       (nextval('pk_sequence'), 'Ping!... Magenetron', 'Maurice'),
       (nextval('pk_sequence'), 'Wie is de gemene snooker?', 'Jakootje'),
       (nextval('pk_sequence'), 'Wie zegt vaak: Kan ik al wat zien? Is het al af?', 'Olaf'),
       (nextval('pk_sequence'), 'Lekt het dak nog?', 'Ruben'),
       (nextval('pk_sequence'), 'Heb je dit filmpje al gezien?', 'Menno'),
       (nextval('pk_sequence'), 'Groot aandeelhouder, ben jij dat?', 'Frank'),
       (nextval('pk_sequence'), 'Wie groet iedereen ''s ochtends, ''s middags en ''s avonds met "goedemorgen"?', 'Justin');

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
       (nextval('pk_sequence'), 'Ping!... Magnetron', 'Maurice'),
       (nextval('pk_sequence'), 'Hoe noem je een gemene snooker?', 'Jakootje'),
       (nextval('pk_sequence'), 'Wie zegt vaak: Kan ik al wat zien? Is het al af?', 'Olaf'),
       (nextval('pk_sequence'), 'Lekt het dak nog?', 'Ruben'),
       (nextval('pk_sequence'), 'Heb je dit filmpje al gezien?', 'Menno'),
       (nextval('pk_sequence'), 'Groot aandeelhouder, ben jij dat?', 'Frank'),
       (nextval('pk_sequence'), 'Wie groet iedereen ''s ochtends, ''s middags en ''s avonds met "goedemorgen"?', 'Justin'),
       (nextval('pk_sequence'), 'In welk jaar is DearNova opgericht?', '2000'),
       (nextval('pk_sequence'), 'Wat maakt DearNova anders dan andere bedrijven?', 'zelfsturing'),
       (nextval('pk_sequence'), 'Wat was de naam van het bedrijf voor 2015?', 'E-ID internet strategies'),
       (nextval('pk_sequence'), 'Welke diensten levert DearNova?', 'strategie, creatie, realisatie en support'),
       (nextval('pk_sequence'), 'Hoe heet de oprichter van DearNova?', 'Gerard van de Looi'),
       (nextval('pk_sequence'), 'Hoeveel professionals werken er bij DearNova?', '70'),
       (nextval('pk_sequence'), 'Wie groet iedereen ''s ochtends, ''s middags en ''s avonds met "goedemorgen"?', 'Erik'),
       (nextval('pk_sequence'), 'Wat is de tag line van DearNova?', 'We execute progress');       

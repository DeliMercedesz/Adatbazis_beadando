--Fodraszok tabla letrehozasa--

CREATE TABLE fodraszok (
    fodrasz_id  INTEGER NOT NULL,
    nev         NVARCHAR(50) NOT NULL,
    telefonszam bigint NOT NULL,
    email       NVARCHAR(50),
    ertekeles   INTEGER,
);

ALTER TABLE fodraszok ADD CHECK ( ertekeles BETWEEN 1 AND 5 );

ALTER TABLE fodraszok ADD CONSTRAINT fodraszok_pk PRIMARY KEY ( fodrasz_id );

ALTER TABLE fodraszok ADD CONSTRAINT fodraszok_telefonszam_un UNIQUE ( telefonszam );

ALTER TABLE fodraszok ADD CONSTRAINT fodraszok_email_un UNIQUE ( email );

INSERT INTO fodraszok (fodrasz_id, nev, telefonszam, email, ertekeles)
VALUES 
    (1, 'Kovács Bence', 06301234567, 'bence.kovacs123@gmail.com', 4),
    (2, 'Nagy Eszter', 06305432123, 'eszter.nagy456@gmail.com', 5),
    (3, 'Tóth Gábor', 06309876543, 'gabor.toth789@gmail.com', 3),
    (4, 'Molnár Péter', 06301234568, 'peter.molnar785@gmail.com', 4),
    (5, 'Szabó Anna', 06305432124, 'anna.szabo895@gmail.com', 4),
    (6, 'Kiss Dóra', 06309876544, 'dora.kiss412@gmail.com', 5),
    (7, 'Varga Zoltán', 06301234569, 'zoltan.varga566@gmail.com', 3),
    (8, 'Fekete Márton', 06305432125, 'marton.fekete845@gmail.com', 4),
    (9, 'Németh Réka', 06309876545, 'reka.nemeth415@gmail.com', 5),
    (10, 'Horváth János', 06301234570, 'janos.horvath515@gmail.com', 4),
    (11, 'Simon Éva', 06305432126, 'eva.simon512@gmail.com', 3),
    (12, 'Kovács Gergő', 06309876546, 'gergo.kovacs485@gmail.com', 5),
    (13, 'Takács Petra', 06301234571, 'petra.takacs789@gmail.com', 4),
    (14, 'Mészáros Tamás', 06305432127, 'tamas.meszaros456@gmail.com', 4),
    (15, 'Varga Kinga', 06309876547, 'kinga.varga785@gmail.com', 3);

--Ugyfelek tabla letrehozasa--

CREATE TABLE ugyfelek (
    ugyfel_id           INTEGER NOT NULL,
    nev                 NVARCHAR(50) NOT NULL,
    telefonszam         bigint NOT NULL,
    email               NVARCHAR(50),
    legutobbi_latogatas DATETIME
);

ALTER TABLE ugyfelek ADD CONSTRAINT ugyfelek_pk PRIMARY KEY ( ugyfel_id );

ALTER TABLE ugyfelek ADD CONSTRAINT ugyfelek_telefonszam_un UNIQUE ( telefonszam );

ALTER TABLE ugyfelek ADD CONSTRAINT ugyfelek_email_un UNIQUE ( email );

INSERT INTO ugyfelek (ugyfel_id, nev, telefonszam, email, legutobbi_latogatas)
VALUES 
    (1, 'Kovács János', 06301234567, 'janos.kovacs437@gmail.com', '2023-10-15'),
    (2, 'Nagy Klára', 06305432123, 'klara.nagy941@gmail.com', '2024-04-20'),
    (3, 'Tóth Anna', 06309876543, 'anna.toth590@gmail.com', '2024-03-05'),
    (4, 'Varga Péter', 06301234568, 'peter.varga537@gmail.com', '2024-04-30'),
    (5, 'Kiss Éva', 06305432124, 'eva.kiss328@gmail.com', '2024-04-02'),
    (6, 'Molnár Gábor', 06309876544, 'gabor.molnar659@gmail.com', '2024-04-15'),
    (7, 'Szabó Ádám', 06301234569, 'adam.szabo672@gmail.com', '2024-04-25'),
    (8, 'Horváth Éva', 06305432125, 'eva.horvath922@gmail.com', '2024-03-18'),
    (9, 'Farkas Jánosné', 06309876545, 'janosne.farkas965@gmail.com', '2024-04-10'),
    (10, 'Kovács Attila', 06301234570, 'attila.kovacs111@gmail.com', '2024-04-05'),
    (11, 'Németh Eszter', 06305432126, 'eszter.nemeth886@gmail.com', '2024-04-28'),
    (12, 'Kiss Gergő', 06309876546, 'gergo.kiss001@gmail.com', '2024-04-23'),
    (13, 'Takács Petra', 06301234571, 'petra.takacs543@gmail.com', '2024-02-01'),
    (14, 'Mészáros Béla', 06305432127, 'bela.meszaros872@gmail.com', '2024-03-30'),
    (15, 'Simon Zsuzsa', 06309876547, 'zsuzsa.simon223@gmail.com', '2024-04-15'),
    (16, 'Kovács Bence', 06301234572, 'bence.kovacs431@gmail.com', '2024-04-29'),
    (17, 'Török Anna', 06305432128, 'anna.torok332@gmail.com', '2024-04-12'),
    (18, 'Molnár Balázs', 06309876548, 'balazs.molnar677@gmail.com', '2024-03-25'),
    (19, 'Fekete Katalin', 06301234573, 'katalin.fekete234@gmail.com', '2024-04-02'),
    (20, 'Nagy László', 06305432129, 'laszlo.nagy447@gmail.com', '2024-04-19'),
    (21, 'Varga Éva', 06309876549, 'eva.varga012@gmail.com', '2024-03-20'),
    (22, 'Kiss Márton', 06301234574, 'marton.kiss210@gmail.com', '2024-04-14'),
    (23, 'Takács Kinga', 06305432130, 'kinga.takacs542@gmail.com', '2024-04-27'),
    (24, 'Szabó András', 06309876550, 'andras.szabo555@gmail.com', '2024-04-08'),
    (25, 'Nagy Edit', 06301234575, 'edit.nagy432@gmail.com', '2024-04-17'),
    (26, 'Kovács Gábor', 06305432131, 'gabor.kovacs999@gmail.com', '2024-03-22'),
    (27, 'Fekete Péter', 06309876551, 'peter.fekete321@gmail.com', '2024-04-13'),
    (28, 'Molnár Anna', 06301234576, 'anna.molnar555@gmail.com', '2024-04-24'),
    (29, 'Varga János', 06305432132, 'janos.varga777@gmail.com', '2024-03-28'),
    (30, 'Kiss Anna', 06309876552, 'anna.kiss023@gmail.com', '2024-04-09'),
    (31, 'Tóth Gergő', 06301234577, 'gergo.toth225@gmail.com', '2024-04-16'),
    (32, 'Németh Réka', 06305432133, 'reka.nemeth654@gmail.com', '2024-04-21'),
    (33, 'Horváth Márton', 06309876553, 'marton.horvath777@gmail.com', '2024-03-24'),
    (34, 'Simon Péter', 06301234578, 'peter.simon789@gmail.com', '2024-04-11'),
    (35, 'Kovács Réka', 06305432134, 'reka.kovacs782@gmail.com', '2024-03-29'),
    (36, 'Szabó Gábor', 06309876554, 'gabor.szabo362@gmail.com', '2024-04-18'),
    (37, 'Tóth Júlia', 06301234579, 'julia.toth292@gmail.com', '2024-03-31'),
    (38, 'Nagy Gergő', 06305432135, 'gergo.nagy423@gmail.com', '2024-04-22'),
    (39, 'Kiss Dóra', 06309876555, 'dora.kiss278@gmail.com', '2024-03-26'),
    (40, 'Szabó Réka', 06309876580, 'reka.szabo288@gmail.com', '2024-04-28');

--Foglalasok tabla letrehozasa--

CREATE TABLE foglalasok (
    foglalas_id  INTEGER NOT NULL,
    idopont      DATETIME NOT NULL,
    ugyfel_fk    INTEGER NOT NULL,
    fodrasz_fk   INTEGER NOT NULL,
    kezdes       DATETIME NOT NULL,
    befejezes    DATETIME NOT NULL,
    fizetesi_mod NVARCHAR(20) NOT NULL,
    megjegyzes   NVARCHAR(100)
);

ALTER TABLE foglalasok
    ADD CONSTRAINT fizetes_mod_kenyszer CHECK ( fizetesi_mod IN ( 'Bankkártya', 'Készpénz', 'Nincs', 'Átutalás' ) );

ALTER TABLE foglalasok ADD CONSTRAINT foglalasok_pk PRIMARY KEY ( foglalas_id );

ALTER TABLE foglalasok
    ADD CONSTRAINT foglalasok_fodraszok_fk FOREIGN KEY ( fodrasz_fk )
        REFERENCES fodraszok ( fodrasz_id );

ALTER TABLE foglalasok
    ADD CONSTRAINT foglalasok_ugyfelek_fk FOREIGN KEY ( ugyfel_fk )
        REFERENCES ugyfelek ( ugyfel_id );

INSERT INTO foglalasok (foglalas_id, idopont, ugyfel_fk, fodrasz_fk, kezdes, befejezes, fizetesi_mod, megjegyzes)
VALUES
    (1, '2024-05-10 10:00', 3, 15, '2024-05-10 10:00', '2024-05-10 11:30', 'Nincs', ''),
    (2, '2024-05-21 08:00', 16, 4, '2024-05-21 08:05', '2024-05-21 09:35', 'Bankkártya', 'Freestyle kezelés'),
    (3, '2024-05-04 13:00', 35, 2, '2024-05-04 13:00', '2024-05-04 13:30', 'Nincs', 'Gyors kezelés'),
    (4, '2024-05-02 08:00', 33, 10, '2024-05-02 08:04', '2024-05-02 08:34', 'Bankkártya', 'Gyors kezelés'),
    (5, '2024-05-07 13:00', 35, 7, '2024-05-07 13:00', '2024-05-07 13:30', 'Átutalás', 'Gyors kezelés'),
    (6, '2024-05-19 10:00', 1, 13, '2024-05-19 10:00', '2024-05-19 11:30', 'Bankkártya', ''),
    (7, '2024-05-14 10:00', 22, 2, '2024-05-14 10:04', '2024-05-14 11:34', 'Átutalás', ''),
    (8, '2024-05-04 10:00', 39, 5, '2024-05-04 10:00', '2024-05-04 11:30', 'Bankkártya', ''),
    (9, '2024-05-15 12:00', 6, 9, '2024-05-15 12:07', '2024-05-15 13:37', 'Nincs', ''),
    (10, '2024-05-27 13:00', 24, 10, '2024-05-27 13:00', '2024-05-27 14:30', 'Bankkártya', ''),
    (11, '2024-05-03 08:00', 19, 2, '2024-05-03 08:00', '2024-05-03 09:30', 'Készpénz', ''),
    (12, '2024-05-13 10:00', 11, 6, '2024-05-13 10:06', '2024-05-13 11:36', 'Nincs', ''),
    (13, '2024-05-07 13:00', 39, 11, '2024-05-07 13:02', '2024-05-07 14:32', 'Bankkártya', ''),
    (14, '2024-05-24 09:00', 18, 15, '2024-05-24 09:07', '2024-05-24 10:37', 'Bankkártya', ''),
    (15, '2024-05-11 14:00', 4, 4, '2024-05-11 14:00', '2024-05-11 15:30', 'Átutalás', ''),
    (16, '2024-05-13 10:00', 21, 4, '2024-05-13 10:10', '2024-05-13 11:40', 'Nincs', ''),
    (17, '2024-05-13 13:00', 9, 4, '2024-05-13 13:05', '2024-05-13 14:35', 'Nincs', ''),
    (18, '2024-05-24 12:00', 26, 6, '2024-05-24 12:10', '2024-05-24 12:40', 'Készpénz', 'Gyors kezelés'),
    (19, '2024-05-17 11:00', 8, 3, '2024-05-17 11:01', '2024-05-17 12:31', 'Bankkártya', ''),
    (20, '2024-05-14 12:00', 39, 8, '2024-05-14 12:07', '2024-05-14 13:37', 'Nincs', ''),
    (21, '2024-05-18 14:00', 8, 11, '2024-05-18 14:00', '2024-05-18 15:30', 'Nincs', ''),
    (22, '2024-05-25 13:00', 28, 3, '2024-05-25 13:05', '2024-05-25 14:35', 'Nincs', ''),
    (23, '2024-05-01 13:00', 17, 9, '2024-05-01 13:00', '2024-05-01 14:30', 'Bankkártya', ''),
    (24, '2024-05-30 08:00', 20, 14, '2024-05-30 08:00', '2024-05-30 09:30', 'Készpénz', ''),
    (25, '2024-05-12 14:00', 1, 10, '2024-05-12 14:09', '2024-05-12 15:39', 'Nincs', ''),
    (26, '2024-05-16 08:00', 20, 4, '2024-05-16 08:06', '2024-05-16 09:36', 'Készpénz', ''),
    (27, '2024-05-29 12:00', 6, 12, '2024-05-29 12:00', '2024-05-29 13:30', 'Nincs', ''),
    (28, '2024-05-27 08:00', 35, 13, '2024-05-27 08:00', '2024-05-27 09:30', 'Készpénz', ''),
    (29, '2024-05-22 11:00', 11, 5, '2024-05-22 11:00', '2024-05-22 12:30', 'Nincs', ''),
    (30, '2024-05-31 09:00', 13, 12, '2024-05-31 09:00', '2024-05-31 10:30', 'Nincs', ''),
    (31, '2024-05-13 13:00', 29, 15, '2024-05-13 13:00', '2024-05-13 14:30', 'Nincs', ''),
    (32, '2024-05-04 09:00', 2, 10, '2024-05-04 09:06', '2024-05-04 10:36', 'Bankkártya', ''),
    (33, '2024-05-08 08:00', 15, 2, '2024-05-08 08:01', '2024-05-08 09:31', 'Átutalás', ''),
    (34, '2024-05-03 12:00', 14, 9, '2024-05-03 12:08', '2024-05-03 13:38', 'Bankkártya', ''),
    (35, '2024-05-30 12:00', 16, 13, '2024-05-30 12:00', '2024-05-30 13:30', 'Nincs', ''),
    (36, '2024-05-26 11:00', 28, 6, '2024-05-26 11:02', '2024-05-26 12:32', 'Nincs', ''),
    (37, '2024-05-14 11:00', 4, 11, '2024-05-14 11:00', '2024-05-14 12:30', 'Készpénz', ''),
    (38, '2024-05-13 13:00', 16, 4, '2024-05-13 13:02', '2024-05-13 14:32', 'Bankkártya', ''),
    (39, '2024-05-15 09:00', 30, 4, '2024-05-15 09:05', '2024-05-15 10:35', 'Átutalás', ''),
    (40, '2024-05-26 14:00', 7, 1, '2024-05-26 14:00', '2024-05-26 15:30', 'Készpénz', ''),
    (41, '2024-05-30 14:00', 11, 7, '2024-05-30 14:00', '2024-05-30 15:30', 'Nincs', ''),
    (42, '2024-05-16 09:00', 4, 3, '2024-05-16 09:00', '2024-05-16 10:30', 'Nincs', ''),
    (43, '2024-05-01 11:00', 19, 7, '2024-05-01 11:08', '2024-05-01 12:38', 'Nincs', ''),
    (44, '2024-05-05 09:00', 38, 12, '2024-05-05 09:01', '2024-05-05 10:31', 'Bankkártya', ''),
    (45, '2024-05-11 08:00', 33, 15, '2024-05-11 08:08', '2024-05-11 09:38', 'Készpénz', ''),
    (46, '2024-05-31 12:00', 5, 10, '2024-05-31 12:03', '2024-05-31 13:33', 'Bankkártya', ''),
    (47, '2024-05-28 09:00', 16, 10, '2024-05-28 09:10', '2024-05-28 10:40', 'Bankkártya', ''),
    (48, '2024-05-03 11:00', 37, 9, '2024-05-03 11:00', '2024-05-03 12:30', 'Nincs', ''),
    (49, '2024-05-30 10:00', 16, 5, '2024-05-30 10:06', '2024-05-30 11:36', 'Nincs', ''),
    (50, '2024-05-05 13:00', 30, 6, '2024-05-05 13:00', '2024-05-05 14:30', 'Készpénz', ''),
    (51, '2024-05-15 12:00', 7, 2, '2024-05-15 12:00', '2024-05-15 13:30', 'Bankkártya', ''),
    (52, '2024-05-09 09:00', 5, 15, '2024-05-09 09:00', '2024-05-09 10:30', 'Átutalás', ''),
    (53, '2024-05-10 09:00', 20, 10, '2024-05-10 09:09', '2024-05-10 10:39', 'Bankkártya', ''),
    (54, '2024-05-27 12:00', 9, 5, '2024-05-27 12:02', '2024-05-27 13:32', 'Készpénz', ''),
    (55, '2024-05-24 12:00', 39, 4, '2024-05-24 12:05', '2024-05-24 13:35', 'Nincs', ''),
    (56, '2024-05-07 13:00', 17, 9, '2024-05-07 13:00', '2024-05-07 14:30', 'Nincs', ''),
    (57, '2024-05-09 14:00', 18, 1, '2024-05-09 14:07', '2024-05-09 15:37', 'Átutalás', ''),
    (58, '2024-05-25 09:00', 17, 3, '2024-05-25 09:00', '2024-05-25 10:30', 'Nincs', ''),
    (59, '2024-05-18 13:00', 8, 2, '2024-05-18 13:01', '2024-05-18 14:31', 'Bankkártya', ''),
    (60, '2024-05-02 14:00', 10, 7, '2024-05-02 14:09', '2024-05-02 15:39', 'Készpénz', '');

--Kedvezmegyek tabla letrehozasa--
CREATE TABLE kedvezmeny (
    kedvezmeny_id INTEGER NOT NULL,
    szazalek      FLOAT NOT NULL
);

ALTER TABLE kedvezmeny ADD CONSTRAINT kedvezmeny_pk PRIMARY KEY ( kedvezmeny_id );

INSERT INTO kedvezmeny (kedvezmeny_id, szazalek)
VALUES 
    (1, 1.0), --Nincs kedvezmeny--
    (2, 0.25),
    (3, 0.30),
    (4, 0.5),
    (5, 0.7);

--Szolgaltatasok tabla letrehozasa--

CREATE TABLE szolgaltatasok (
    szolgaltatas_id INTEGER NOT NULL,
    megnevezes      NVARCHAR(50) NOT NULL,
    ar              INTEGER NOT NULL,
    kedvezmeny_fk   INTEGER NOT NULL
);

ALTER TABLE szolgaltatasok ADD CONSTRAINT szolgaltatasok_pk PRIMARY KEY ( szolgaltatas_id );

ALTER TABLE szolgaltatasok ADD CONSTRAINT szolgaltatasok_megnevezes_un UNIQUE ( megnevezes );

ALTER TABLE szolgaltatasok
    ADD CONSTRAINT szolgaltatasok_kedvezmeny_fk FOREIGN KEY ( kedvezmeny_fk )
        REFERENCES kedvezmeny ( kedvezmeny_id );

INSERT INTO szolgaltatasok (szolgaltatas_id, megnevezes, ar, kedvezmeny_fk)
VALUES 
    (1, 'Hajvágás', 5000, 1),
    (2, 'Hajfestés', 8000, 2),
    (3, 'Fodrászati kezelés', 10000, 3),
    (4, 'Hajszárítás', 3000, 4),
    (5, 'Szakáll vágás', 2000, 5),
    (6, 'Rövid hajvágás', 4000, 1),
    (7, 'Színezés', 9000, 1),
    (8, 'Hajmosás', 2000, 3),
    (9, 'Férfi fodrászat', 6000, 1),
    (10, 'Extra kezelés', 12000, 5);


--Foglalasokat es Szolgaltatasokat osszekotjuk a Foglalas_szolgaltatas tablaval

CREATE TABLE foglalas_szolgaltatas (
    foglalas_fk     INTEGER NOT NULL,
    szolgaltatas_fk INTEGER NOT NULL
);

ALTER TABLE foglalas_szolgaltatas
    ADD CONSTRAINT foglalas_szolgaltatas_fk FOREIGN KEY ( foglalas_fk )
        REFERENCES foglalasok ( foglalas_id );

ALTER TABLE foglalas_szolgaltatas
    ADD CONSTRAINT szolgaltatas_foglalasok_fk FOREIGN KEY ( szolgaltatas_fk )
        REFERENCES szolgaltatasok ( szolgaltatas_id );

INSERT INTO foglalas_szolgaltatas (foglalas_fk, szolgaltatas_fk)
VALUES 
    (52, 4),
    (14, 10),
    (58, 3),
    (7, 10),
    (1, 5),
    (10, 1),
    (55, 6),
    (8, 8),
    (40, 2),
    (55, 7),
    (43, 7),
    (19, 6),
    (25, 10),
    (33, 7),
    (46, 8),
    (27, 10),
    (3, 4),
    (25, 8),
    (57, 7),
    (47, 3),
    (29, 5),
    (15, 7),
    (21, 9),
    (30, 3),
    (60, 9),
    (49, 9),
    (1, 9),
    (2, 3),
    (10, 9),
    (23, 9),
    (45, 6),
    (59, 9),
    (32, 7),
    (60, 8),
    (44, 7),
    (18, 8),
    (25, 4),
    (33, 10),
    (45, 1),
    (39, 2),
    (48, 10),
    (60, 5),
    (49, 10),
    (25, 7),
    (11, 10),
    (38, 5),
    (21, 2),
    (14, 7),
    (33, 4),
    (25, 6),
    (16, 3),
    (14, 2),
    (23, 3),
    (4, 6),
    (37, 3),
    (37, 8),
    (36, 10),
    (36, 7),
    (42, 8),
    (35, 7),
    (44, 8),
    (15, 5),
    (44, 5),
    (49, 4),
    (46, 2),
    (10, 10),
    (11, 6),
    (39, 10),
    (32, 3),
    (44, 9),
    (33, 3),
    (41, 6),
    (8, 7),
    (56, 2),
    (18, 7),
    (24, 6),
    (9, 9),
    (4, 3),
    (4, 7),
    (1, 8),
    (59, 8),
    (47, 5),
    (56, 8),
    (16, 9),
    (52, 7),
    (17, 3),
    (32, 10),
    (48, 9),
    (26, 1),
    (50, 4),
    (27, 2),
    (34, 5),
    (26, 10),
    (41, 7),
    (18, 5),
    (11, 1),
    (10, 3),
    (6, 5),
    (14, 6),
    (44, 1);

--Munkanapok tabla letrehozasa--

CREATE TABLE munkanapok (
    munkanap_id INTEGER NOT NULL,
    nap         NVARCHAR(10) NOT NULL
);

ALTER TABLE munkanapok
    ADD CHECK ( nap IN ( 'Csütörtök', 'Hétfő', 'Kedd', 'Péntek', 'Szerda',
                         'Szombat', 'Vasárnap' ) );

ALTER TABLE munkanapok ADD CONSTRAINT munkanapok_pk PRIMARY KEY ( munkanap_id );

INSERT INTO munkanapok (munkanap_id, nap)
VALUES 
    (1, 'Hétfő'),
    (2, 'Kedd'),
    (3, 'Szerda'),
    (4, 'Csütörtök'),
    (5, 'Péntek'),
    (6, 'Szombat'),
    (7, 'Vasárnap');

--Fodraszokat es Munkanapokat osszekotjuk a Fodraszok_munkanapok tablaval
CREATE TABLE fodraszok_munkanapok (
    munkanap_fk INTEGER NOT NULL,
    fodrasz_fk  INTEGER NOT NULL
);

ALTER TABLE fodraszok_munkanapok
    ADD CONSTRAINT fodraszok_mun_fk FOREIGN KEY ( fodrasz_fk )
        REFERENCES fodraszok ( fodrasz_id );

ALTER TABLE fodraszok_munkanapok
    ADD CONSTRAINT munkanap_fod_fk FOREIGN KEY ( munkanap_fk )
        REFERENCES munkanapok ( munkanap_id );

INSERT INTO fodraszok_munkanapok (fodrasz_fk, munkanap_fk)
VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (1, 5),
    (1, 7),
    (2, 1),
    (2, 3),
    (2, 4),
    (2, 5),
    (2, 6),
    (2, 7),
    (3, 1),
    (3, 3),
    (3, 5),
    (3, 7),
    (4, 2),
    (4, 4),
    (4, 5),
    (4, 6),
    (4, 7),
    (5, 1),
    (5, 2),
    (5, 3),
    (5, 4),
    (5, 5),
    (5, 6),
    (5, 7),
    (6, 1),
    (6, 3),
    (6, 4),
    (6, 6),
    (6, 7),
    (7, 1),
    (7, 2),
    (7, 3),
    (7, 5),
    (7, 6),
    (7, 7),
    (8, 1),
    (8, 3),
    (8, 4),
    (8, 5),
    (8, 6),
    (8, 7),
    (9, 1),
    (9, 2),
    (9, 4),
    (9, 5),
    (9, 7),
    (10, 2),
    (10, 3),
    (10, 4),
    (10, 5),
    (10, 6),
    (10, 7),
    (11, 1),
    (11, 2),
    (11, 3),
    (11, 4),
    (11, 5),
    (11, 6),
    (11, 7),
    (12, 1),
    (12, 2),
    (12, 4),
    (12, 6),
    (12, 7),
    (13, 1),
    (13, 2),
    (13, 3),
    (13, 4),
    (13, 5),
    (13, 6),
    (13, 7),
    (14, 1),
    (14, 2),
    (14, 3),
    (14, 4),
    (14, 5),
    (14, 6),
    (14, 7),
    (15, 1),
    (15, 3),
    (15, 5),
    (15, 6),
    (15, 7);

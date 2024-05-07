--Fodraszok tabla letrehozasa--

CREATE TABLE fodraszok (
    fodrasz_id  NUMBER NOT NULL,
    nev         NVARCHAR2(50) NOT NULL,
    telefonszam NUMBER(20) NOT NULL,
    email       NVARCHAR2(50),
    ertekeles   NUMBER,
    munkanap_fk NUMBER NOT NULL
);

ALTER TABLE fodraszok ADD CHECK ( ertekeles BETWEEN 1 AND 5 );

ALTER TABLE fodraszok ADD CONSTRAINT fodraszok_pk PRIMARY KEY ( fodrasz_id );

ALTER TABLE fodraszok ADD CONSTRAINT fodraszok_telefonszam_un UNIQUE ( telefonszam );

ALTER TABLE fodraszok ADD CONSTRAINT fodraszok_email_un UNIQUE ( email );

ALTER TABLE fodraszok
    ADD CONSTRAINT fodraszok_munkanapok_fk FOREIGN KEY ( munkanap_fk )
        REFERENCES munkanapok ( munkanap_id );

INSERT INTO fodraszok (fodrasz_id, nev, telefonszam, email, ertekeles, munkanap_fk)
VALUES 
    (1, 'Kovács Bence', 06301234567, 'bence.kovacs123@gmail.com', 4, 1),
    (2, 'Nagy Eszter', 06305432123, 'eszter.nagy456@gmail.com', 5, 2),
    (3, 'Tóth Gábor', 06309876543, 'gabor.toth789@gmail.com', 3, 3),
    (4, 'Molnár Péter', 06301234568, 'peter.molnar785@gmail.com', 4, 4),
    (5, 'Szabó Anna', 06305432124, 'anna.szabo895@gmail.com', 4, 7),
    (6, 'Kiss Dóra', 06309876544, 'dora.kiss412@gmail.com', 5, 6),
    (7, 'Varga Zoltán', 06301234569, 'zoltan.varga566@gmail.com', 3, 1),
    (8, 'Fekete Márton', 06305432125, 'marton.fekete845@gmail.com', 4, 2),
    (9, 'Németh Réka', 06309876545, 'reka.nemeth415@gmail.com', 5, 3),
    (10, 'Horváth János', 06301234570, 'janos.horvath515@gmail.com', 4, 7),
    (11, 'Simon Éva', 06305432126, 'eva.simon512@gmail.com', 3, 5),
    (12, 'Kovács Gergő', 06309876546, 'gergo.kovacs485@gmail.com', 5, 6),
    (13, 'Takács Petra', 06301234571, 'petra.takacs789@gmail.com', 4, 7),
    (14, 'Mészáros Tamás', 06305432127, 'tamas.meszaros456@gmail.com', 4, 2),
    (15, 'Varga Kinga', 06309876547, 'kinga.varga785@gmail.com', 3, 3);

--Foglalasok tabla letrehozasa

CREATE TABLE foglalasok (
    foglalas_id  NUMBER NOT NULL,
    idopont      DATE NOT NULL,
    ugyfel_fk    NUMBER NOT NULL,
    fodrasz_fk   NUMBER NOT NULL,
    kezdes       DATE NOT NULL,
    befejezes    DATE NOT NULL,
    fizetve      CHAR(1) NOT NULL,
    fizetesi_mod NVARCHAR2(20),
    megjegyzes   NVARCHAR2(100)
);

ALTER TABLE foglalasok
    ADD CONSTRAINT fizetes_mod_kenyszer CHECK ( fizetesi_mod IN ( 'Bankkártya', 'Készpénz', 'Átutalás' ) );

ALTER TABLE foglalasok ADD CONSTRAINT foglalasok_pk PRIMARY KEY ( foglalas_id );

ALTER TABLE foglalasok
    ADD CONSTRAINT foglalasok_fodraszok_fk FOREIGN KEY ( fodrasz_fk )
        REFERENCES fodraszok ( fodrasz_id );

ALTER TABLE foglalasok
    ADD CONSTRAINT foglalasok_ugyfelek_fk FOREIGN KEY ( ugyfel_fk )
        REFERENCES ugyfelek ( ugyfel_id );

--Szolgaltatasok tabla letrehozasa--

CREATE TABLE szolgaltatasok (
    szolgaltatas_id NUMBER NOT NULL,
    megnevezes      NVARCHAR2(50) NOT NULL,
    ar              NUMBER NOT NULL,
    kedvezmeny_fk   NUMBER NOT NULL
);

ALTER TABLE szolgaltatasok ADD CONSTRAINT szolgaltatasok_pk PRIMARY KEY ( szolgaltatas_id );

ALTER TABLE szolgaltatasok ADD CONSTRAINT szolgaltatasok_megnevezes_un UNIQUE ( megnevezes );

ALTER TABLE szolgaltatasok
    ADD CONSTRAINT szolgaltatasok_kedvezmeny_fk FOREIGN KEY ( kedvezmeny_fk )
        REFERENCES kedvezmeny ( kedvezmeny_id );

--Foglalasokat es Szolgaltatasokat osszekotjuk a Foglalas_szolgaltatas tablaval

CREATE TABLE foglalas_szolgaltatas (
    foglalas_fk     NUMBER NOT NULL,
    szolgaltatas_fk NUMBER NOT NULL
);

ALTER TABLE foglalas_szolgaltatas
    ADD CONSTRAINT foglalas_szolgaltatas_fk FOREIGN KEY ( foglalas_fk )
        REFERENCES foglalasok ( foglalas_id );

ALTER TABLE foglalas_szolgaltatas
    ADD CONSTRAINT szolgaltatas_foglalasok_fk FOREIGN KEY ( szolgaltatas_fk )
        REFERENCES szolgaltatasok ( szolgaltatas_id );

--Kedvezmegyek tabla letrehozasa--
CREATE TABLE kedvezmeny (
    kedvezmeny_id NUMBER NOT NULL,
    szazalek      FLOAT NOT NULL
);

ALTER TABLE kedvezmeny ADD CONSTRAINT kedvezmeny_pk PRIMARY KEY ( kedvezmeny_id );

--Munkanapok tabla letrehozasa--

CREATE TABLE munkanapok (
    munkanap_id NUMBER NOT NULL,
    nap         NVARCHAR2(1) NOT NULL
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


--Ugyfelek tabla letrehozasa--

CREATE TABLE ugyfelek (
    ugyfel_id           NUMBER NOT NULL,
    nev                 NVARCHAR2(50) NOT NULL,
    telefonszam         NUMBER(20) NOT NULL,
    email               NVARCHAR2(50),
    legutobbi_latogatas DATE
);

ALTER TABLE ugyfelek ADD CONSTRAINT ugyfelek_pk PRIMARY KEY ( ugyfel_id );

ALTER TABLE ugyfelek ADD CONSTRAINT ugyfelek_telefonszam_un UNIQUE ( telefonszam );

ALTER TABLE ugyfelek ADD CONSTRAINT ugyfelek_email_un UNIQUE ( email );

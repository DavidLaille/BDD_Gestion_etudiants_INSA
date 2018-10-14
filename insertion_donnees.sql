-- Dernière modif 10/05 : 14h par Lucas .D
-- à mettre à jour (personnne > tuteur, encadrant)

-- ---------- CODES ------------------ --
--  0xxx : etudiant                    --
--  1xxx : encadrant                   --
--  2xxx : PO                          --
--  3xxx : stage                       --
--  4xxx : etablissement               --

--  5xxx : SIRET                       --
--  6xxx : unit_recherche              --

--  7xxx : jury                        --
--  8xxx : enseignant                  --
--  9xxx : rapport stage               --
-- 10xxx : soutenance                  --
-- ----------------------------------- --


-- ---------- COMMANDES -------------- --
--  INSERT INTO table VALUES (d, ...); --
--  DELETE FROM table WHERE cndtn;     --
--  UPDATE table SET c=d WHERE cndtn;  --
-- ALTER TABLE nom_table DROP nom_colonne --
-- ----------------------------------- --

-- TODO -- Corriger la clé étrangère : 
-- personne > encadrant vers personnel > encadrant (done)
-- Problème de données sur l'ajout de cette clé (fixed)


-- personne
INSERT INTO personne (num_tel, nom, prenom) VALUES (0605040302, '', 'Aurelien');
INSERT INTO personne VALUES (0603040302, '', 'batpqie');
INSERT INTO personne VALUES (0605078602, '', 'Maxime ');
INSERT INTO personne VALUES (0605640302, '', 'Lucas');
INSERT INTO personne VALUES (0675786302, '', 'Vivien');
INSERT INTO personne VALUES (0607860302, '', 'manuel');
INSERT INTO personne VALUES (0605786862, '', 'Jack');
INSERT INTO personne VALUES (0867867862, '', 'Jacques');
INSERT INTO personne VALUES (0786786302, '', 'Marie');
INSERT INTO personne VALUES (0686740786, '', 'Jeanne');
INSERT INTO personne VALUES (0678786378, '', 'Sophie');
INSERT INTO personne VALUES (0786640302, '', 'Sarah');
INSERT INTO personne VALUES (0789237237, '', 'Gilles');
INSERT INTO personne VALUES (0786293232, '', 'Georges');
INSERT INTO personne VALUES (0786757999, '', 'Bérard');
INSERT INTO personne VALUES (0784967502, '', 'Georgette');
INSERT INTO personne VALUES (0785555202, '', 'Bernadette');
INSERT INTO personne VALUES (0786277892, '', 'Marianne');
INSERT INTO personne VALUES (0786678998, '', 'Charlotte');
INSERT INTO personne VALUES (0787890398, '', 'Phyl');

-- ...

-- etudiant
INSERT INTO etudiant (numetud, numtel) VALUES (1, 0605040302); -- Aurelien
INSERT INTO etudiant VALUES (2, 0603040302); -- batpqie
INSERT INTO etudiant VALUES (3, 0605078602); -- Maxime
INSERT INTO etudiant VALUES (4, 0605640302); -- Lucas
INSERT INTO etudiant VALUES (5, 0675786302); -- Vivien
INSERT INTO etudiant VALUES (6, 0605786862); -- Jack
INSERT INTO etudiant VALUES (7, 0686740786); -- Jeanne
INSERT INTO etudiant VALUES (8, 0678786378); -- Sophie
INSERT INTO etudiant VALUES (9, 0789237237); -- Gilles
INSERT INTO etudiant VALUES (10, 0786293232); -- Georges
INSERT INTO etudiant VALUES (11, 0786757999); -- Bérard
INSERT INTO etudiant VALUES (12, 0784967502); -- Georgette
INSERT INTO etudiant VALUES (13, 0785555202); -- Bernadette
INSERT INTO etudiant VALUES (14, 0786277892); -- Marianne
INSERT INTO etudiant VALUES (15, 0786678998); -- Charlotte
-- ...

-- encadrant
INSERT INTO encadrant (numencad, tel) VALUES (1001, 0607860302); -- Manuel
INSERT INTO encadrant VALUES (1002, 0867867862); -- jacques
INSERT INTO encadrant VALUES (1003, 0786786302); -- Marie
INSERT INTO encadrant VALUES (1004, 0786640302); -- Sarah
INSERT INTO encadrant VALUES (1005, 0787890398); -- Phyl
-- ...

-- PO --
INSERT INTO PO (idpo, departement, intutule) VALUES (2001, 'Elec/phys', 'IMACS');
INSERT INTO PO VALUES (2002, 'Bio/chim', 'ICBE');
INSERT INTO PO VALUES (2003, 'Génie civil', 'IC');
INSERT INTO PO VALUES (2004, 'info', 'MIC');
-- ...


-- nom_etab
INSERT INTO nom_etab (adresse, nom) VALUES('Avenue de rangueil', 'INSA Toulouse');
INSERT INTO nom_etab VALUES('Avenue de xxx', 'Supaero');
INSERT INTO nom_etab VALUES('Avenue de yyy', 'CNES');
INSERT INTO nom_etab VALUES('Avenue de zzz', 'LAAS');
INSERT INTO nom_etab VALUES('Avenue de Leau', 'EDF-CanalDuMidi');
-- ...


-- stage
INSERT INTO stage (numstage, numetud, idpo, intitule, mots_cle, duree, annee) VALUES(3001, 1, 2003, 'Etude de sol', 'topo terrain', 90, 2016); -- Aurelien
INSERT INTO stage VALUES(3002, 2, 2003, 'Etude de fondations', 'beton fondation', 30, 2015); -- batpqie
INSERT INTO stage VALUES(3003, 3, 2001, 'Dimensionnement moteur', 'moteur industrie', 60, 2016); -- Maxime
-- ...


-- etablissement
INSERT INTO etablissement (numetab, numstage, numetud, adresse) VALUES(4001, 3001, 1, 'Avenue de Leau'); -- stage d'Aurelien 
INSERT INTO etablissement (numetab, numstage, numetud, adresse) VALUES(4002, 3003, 3, 'Avenue de zzz'); -- stage d'Maxime
-- ...

-- entreprise
INSERT INTO entreprise (numetr, siret) VALUES (4001, 5001);
-- ...

-- Laboratoire
INSERT INTO laboratoire (numlab, unit_recherche) VALUES(4002, 6002);
-- ...

-- personnel -- 
INSERT INTO personnel (tel, nom, prenom, fonction, mail) VALUES (0202020202, '', 'Monsieur', 'Ingé', 'secr@personne.com');
INSERT INTO personnel VALUES (0028372732, '', 'MrTuteur', 'Ingé2', 'ingé@z.com');
INSERT INTO personnel VALUES (0023827372, '', 'MmeTutrice', 'Ingé3', 'ingé@zef.com');
-- ...

-- jury --
INSERT INTO jury (idjury, numstage) VALUES (7001, 3001);
INSERT INTO jury (idjury, numstage) VALUES (7002, 3002);
INSERT INTO jury (idjury, numstage) VALUES (7003, 3003);
ALTER TABLE jury DROP numstage; 
--

-- enseignant --
INSERT INTO enseignant (idenseignant, idjury) VALUES (8001, 7001);
INSERT INTO enseignant (idenseignant, idjury) VALUES (8002, 7001);
INSERT INTO enseignant (idenseignant, idjury) VALUES (8003, 7002);
INSERT INTO enseignant (idenseignant, idjury) VALUES (8004, 7003);
--

-- tuteur --
INSERT INTO tuteur (idenseignant, tel, numstage, idjury) VALUES (8001, 0028372732, 3001, 7001);
INSERT INTO tuteur (idenseignant, tel, numstage, idjury) VALUES (8003, 0023827372 3003, 7003);
--

-- chercheur --
INSERT INTO chercheur (numencad, numlab) VALUES (1001, 4002);
--

-- industriel --
INSERT INTO industriel (numencad, numentr) VALUES (1002, 4001);
-- 

-- rapporteur --
INSERT INTO rapporteur (idenseignant) VALUES (8001);
INSERT INTO rapporteur VALUES (8003);
--

-- encadrant --
INSERT INTO encadre (numencad, numstage) VALUES (1001, 3001)
INSERT INTO encadre VALUES (1002, 3002);
INSERT INTO encadre VALUEs (1003, 3003);
--

-- rapport stage --
INSERT INTO rapport_stage (idrapport, numstage, intitule) VALUES (9001, 3001, 'Rapport stage Etude de sol');
INSERT INTO rapport_stage VALUES (9002, 3002, 'Rapport stage Etude de fondations');
INSERT INTO rapport_stage VALUES (9003, 3003, 'Rapport stage Etude de moteur');
--

-- participe --
INSERT INTO participe (numencad, idjury) VALUES (1001, 7001);
--

-- notejury --
INSERT INTO notejury (idjury, idsoutenance, note) VALUES (7001, 10001, 12);
INSERT INTO notejury (idjury, idsoutenance, note) VALUES (7002, 10002, 15);
INSERT INTO notejury (idjury, idsoutenance, note) VALUES (7003, 10003, 7);
--

-- soutenance --
-- ALTER TABLE soutenance RENAME COLUMN num_stage TO numstage -- Done --
INSERT INTO soutenance (idsoutenance, numstage, idjury, date_soutenance, note_jury, lieu) VALUES (10001, 3001, 7001, '2017-05-30', 13, 'INSA GEI211E');
INSERT INTO soutenance VALUES (10002, 3002, 7002, '2017-05-31', 16, 'INSA IC2837E');
INSERT INTO soutenance VALUEs (10003, 3003, 7003, '2017-06-04', 13, 'INSA UTE');
--

-- noterapport --
INSERT INTO noterapport (idenseignant, idrapport, note) VALUES (8001, 9001, 9);
INSERT INTO noterapport VALUES (8002, 9002, 5);
INSERT INTO noterapport VALUES (8002, 9003, 4);
--

-- evaluation --
INSERT INTO evaluation (numetud, numstage, numencad, note, comp_tech, integration, communication) VALUES (1, 3001, 1001, 6, 'topo, batiment', 'bien', 'ponne presentation');
INSERT INTO evaluation VALUES (2, 3002, 1002, 15, 'beton bat', 'très bien', 'dynamique');
--
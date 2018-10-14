--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: chercheur; Type: TABLE; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

CREATE TABLE chercheur (
    numencad integer NOT NULL,
    numlab integer
);


ALTER TABLE public.chercheur OWNER TO log_bd3a_13;

--
-- Name: encadrant; Type: TABLE; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

CREATE TABLE encadrant (
    numencad integer NOT NULL,
    tel integer
);


ALTER TABLE public.encadrant OWNER TO log_bd3a_13;

--
-- Name: encadre; Type: TABLE; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

CREATE TABLE encadre (
    numencad integer NOT NULL,
    numstage integer NOT NULL
);


ALTER TABLE public.encadre OWNER TO log_bd3a_13;

--
-- Name: enseignant; Type: TABLE; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

CREATE TABLE enseignant (
    idenseignant integer NOT NULL,
    idjury integer
);


ALTER TABLE public.enseignant OWNER TO log_bd3a_13;

--
-- Name: entreprise; Type: TABLE; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

CREATE TABLE entreprise (
    numentr integer NOT NULL,
    siret integer
);


ALTER TABLE public.entreprise OWNER TO log_bd3a_13;

--
-- Name: etablissement; Type: TABLE; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

CREATE TABLE etablissement (
    numetab integer NOT NULL,
    numstage integer,
    numetud integer,
    adresse character varying(20)
);


ALTER TABLE public.etablissement OWNER TO log_bd3a_13;

--
-- Name: etudiant; Type: TABLE; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

CREATE TABLE etudiant (
    numetud integer NOT NULL,
    num_tel integer
);


ALTER TABLE public.etudiant OWNER TO log_bd3a_13;

--
-- Name: evaluation; Type: TABLE; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

CREATE TABLE evaluation (
    numetud integer NOT NULL,
    numstage integer NOT NULL,
    numencad integer,
    note integer,
    comp_tech text,
    integration text,
    communication text
);


ALTER TABLE public.evaluation OWNER TO log_bd3a_13;

--
-- Name: industriel; Type: TABLE; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

CREATE TABLE industriel (
    numencad integer NOT NULL,
    numentr integer
);


ALTER TABLE public.industriel OWNER TO log_bd3a_13;

--
-- Name: jury; Type: TABLE; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

CREATE TABLE jury (
    idjury integer NOT NULL
);


ALTER TABLE public.jury OWNER TO log_bd3a_13;

--
-- Name: laboratoire; Type: TABLE; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

CREATE TABLE laboratoire (
    numlab integer NOT NULL,
    unit_recherche character varying(30)
);


ALTER TABLE public.laboratoire OWNER TO log_bd3a_13;

--
-- Name: nom_etab; Type: TABLE; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

CREATE TABLE nom_etab (
    adresse character varying(40) NOT NULL,
    nom character varying(20)
);


ALTER TABLE public.nom_etab OWNER TO log_bd3a_13;

--
-- Name: notejury; Type: TABLE; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

CREATE TABLE notejury (
    idjury integer NOT NULL,
    idsoutenance integer NOT NULL,
    note integer
);


ALTER TABLE public.notejury OWNER TO log_bd3a_13;

--
-- Name: noterapport; Type: TABLE; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

CREATE TABLE noterapport (
    idenseignant integer NOT NULL,
    idrapport integer NOT NULL,
    note integer
);


ALTER TABLE public.noterapport OWNER TO log_bd3a_13;

--
-- Name: participe; Type: TABLE; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

CREATE TABLE participe (
    numencad integer NOT NULL,
    idjury integer NOT NULL
);


ALTER TABLE public.participe OWNER TO log_bd3a_13;

--
-- Name: personne; Type: TABLE; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

CREATE TABLE personne (
    num_tel integer NOT NULL,
    nom character varying(30),
    prenom character varying(30)
);


ALTER TABLE public.personne OWNER TO log_bd3a_13;

--
-- Name: personnel; Type: TABLE; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

CREATE TABLE personnel (
    tel integer NOT NULL,
    nom character varying(20),
    prenom character varying(20),
    fonction character varying(20),
    mail character varying(40)
);


ALTER TABLE public.personnel OWNER TO log_bd3a_13;

--
-- Name: po; Type: TABLE; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

CREATE TABLE po (
    idpo integer NOT NULL,
    departement character varying(40),
    intitule character varying(20)
);


ALTER TABLE public.po OWNER TO log_bd3a_13;

--
-- Name: rapport_stage; Type: TABLE; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

CREATE TABLE rapport_stage (
    idrapport integer NOT NULL,
    numstage integer,
    intitule character varying(64)
);


ALTER TABLE public.rapport_stage OWNER TO log_bd3a_13;

--
-- Name: rapporteur; Type: TABLE; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

CREATE TABLE rapporteur (
    idenseignant integer NOT NULL
);


ALTER TABLE public.rapporteur OWNER TO log_bd3a_13;

--
-- Name: soutenance; Type: TABLE; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

CREATE TABLE soutenance (
    idsoutenance integer NOT NULL,
    numstage integer,
    idjury integer,
    date_soutenance date,
    note_jury integer,
    lieu character varying(64)
);


ALTER TABLE public.soutenance OWNER TO log_bd3a_13;

--
-- Name: stage; Type: TABLE; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

CREATE TABLE stage (
    numstage integer NOT NULL,
    numetud integer,
    idpo integer,
    intitule character varying(30),
    mots_cle character varying(50),
    duree integer,
    annee integer
);


ALTER TABLE public.stage OWNER TO log_bd3a_13;

--
-- Name: tuteur; Type: TABLE; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

CREATE TABLE tuteur (
    idenseignant integer NOT NULL,
    tel integer,
    numstage integer,
    idjury integer
);


ALTER TABLE public.tuteur OWNER TO log_bd3a_13;

--
-- Name: chercheur_pkey; Type: CONSTRAINT; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

ALTER TABLE ONLY chercheur
    ADD CONSTRAINT chercheur_pkey PRIMARY KEY (numencad);


--
-- Name: encadrant_pkey; Type: CONSTRAINT; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

ALTER TABLE ONLY encadrant
    ADD CONSTRAINT encadrant_pkey PRIMARY KEY (numencad);


--
-- Name: encadre_pkey; Type: CONSTRAINT; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

ALTER TABLE ONLY encadre
    ADD CONSTRAINT encadre_pkey PRIMARY KEY (numencad, numstage);


--
-- Name: enseignant_pkey; Type: CONSTRAINT; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

ALTER TABLE ONLY enseignant
    ADD CONSTRAINT enseignant_pkey PRIMARY KEY (idenseignant);


--
-- Name: entreprise_pkey; Type: CONSTRAINT; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

ALTER TABLE ONLY entreprise
    ADD CONSTRAINT entreprise_pkey PRIMARY KEY (numentr);


--
-- Name: etablissement_pkey; Type: CONSTRAINT; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

ALTER TABLE ONLY etablissement
    ADD CONSTRAINT etablissement_pkey PRIMARY KEY (numetab);


--
-- Name: etudiant_pkey; Type: CONSTRAINT; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

ALTER TABLE ONLY etudiant
    ADD CONSTRAINT etudiant_pkey PRIMARY KEY (numetud);


--
-- Name: evaluation_pkey; Type: CONSTRAINT; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

ALTER TABLE ONLY evaluation
    ADD CONSTRAINT evaluation_pkey PRIMARY KEY (numetud, numstage);


--
-- Name: industriel_pkey; Type: CONSTRAINT; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

ALTER TABLE ONLY industriel
    ADD CONSTRAINT industriel_pkey PRIMARY KEY (numencad);


--
-- Name: jury_pkey; Type: CONSTRAINT; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

ALTER TABLE ONLY jury
    ADD CONSTRAINT jury_pkey PRIMARY KEY (idjury);


--
-- Name: laboratoire_pkey; Type: CONSTRAINT; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

ALTER TABLE ONLY laboratoire
    ADD CONSTRAINT laboratoire_pkey PRIMARY KEY (numlab);


--
-- Name: nom_etab_pkey; Type: CONSTRAINT; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

ALTER TABLE ONLY nom_etab
    ADD CONSTRAINT nom_etab_pkey PRIMARY KEY (adresse);


--
-- Name: notejury_pkey; Type: CONSTRAINT; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

ALTER TABLE ONLY notejury
    ADD CONSTRAINT notejury_pkey PRIMARY KEY (idjury, idsoutenance);


--
-- Name: noterapport_pkey; Type: CONSTRAINT; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

ALTER TABLE ONLY noterapport
    ADD CONSTRAINT noterapport_pkey PRIMARY KEY (idenseignant, idrapport);


--
-- Name: participe_pkey; Type: CONSTRAINT; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

ALTER TABLE ONLY participe
    ADD CONSTRAINT participe_pkey PRIMARY KEY (numencad, idjury);


--
-- Name: personne_pkey; Type: CONSTRAINT; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

ALTER TABLE ONLY personne
    ADD CONSTRAINT personne_pkey PRIMARY KEY (num_tel);


--
-- Name: personnel_pkey; Type: CONSTRAINT; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (tel);


--
-- Name: po_pkey; Type: CONSTRAINT; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

ALTER TABLE ONLY po
    ADD CONSTRAINT po_pkey PRIMARY KEY (idpo);


--
-- Name: rapport_stage_pkey; Type: CONSTRAINT; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

ALTER TABLE ONLY rapport_stage
    ADD CONSTRAINT rapport_stage_pkey PRIMARY KEY (idrapport);


--
-- Name: rapporteur_pkey; Type: CONSTRAINT; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

ALTER TABLE ONLY rapporteur
    ADD CONSTRAINT rapporteur_pkey PRIMARY KEY (idenseignant);


--
-- Name: soutenance_pkey; Type: CONSTRAINT; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

ALTER TABLE ONLY soutenance
    ADD CONSTRAINT soutenance_pkey PRIMARY KEY (idsoutenance);


--
-- Name: stage_pkey; Type: CONSTRAINT; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

ALTER TABLE ONLY stage
    ADD CONSTRAINT stage_pkey PRIMARY KEY (numstage);


--
-- Name: tuteur_pkey; Type: CONSTRAINT; Schema: public; Owner: log_bd3a_13; Tablespace: 
--

ALTER TABLE ONLY tuteur
    ADD CONSTRAINT tuteur_pkey PRIMARY KEY (idenseignant);


--
-- Name: chercheur_numlab_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY chercheur
    ADD CONSTRAINT chercheur_numlab_fkey FOREIGN KEY (numlab) REFERENCES laboratoire(numlab);


--
-- Name: encadrant_tel_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY encadrant
    ADD CONSTRAINT encadrant_tel_fkey FOREIGN KEY (tel) REFERENCES personne(num_tel);


--
-- Name: encadre_numencad_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY encadre
    ADD CONSTRAINT encadre_numencad_fkey FOREIGN KEY (numencad) REFERENCES encadrant(numencad);


--
-- Name: encadre_numstage_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY encadre
    ADD CONSTRAINT encadre_numstage_fkey FOREIGN KEY (numstage) REFERENCES stage(numstage);


--
-- Name: enseignant_idjury_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY enseignant
    ADD CONSTRAINT enseignant_idjury_fkey FOREIGN KEY (idjury) REFERENCES jury(idjury);


--
-- Name: entreprise_numentr_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY entreprise
    ADD CONSTRAINT entreprise_numentr_fkey FOREIGN KEY (numentr) REFERENCES etablissement(numetab);


--
-- Name: etablissement_adresse_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY etablissement
    ADD CONSTRAINT etablissement_adresse_fkey FOREIGN KEY (adresse) REFERENCES nom_etab(adresse);


--
-- Name: etablissement_numetud_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY etablissement
    ADD CONSTRAINT etablissement_numetud_fkey FOREIGN KEY (numetud) REFERENCES etudiant(numetud);


--
-- Name: etablissement_numstage_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY etablissement
    ADD CONSTRAINT etablissement_numstage_fkey FOREIGN KEY (numstage) REFERENCES stage(numstage);


--
-- Name: etudiant_num_tel_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY etudiant
    ADD CONSTRAINT etudiant_num_tel_fkey FOREIGN KEY (num_tel) REFERENCES personne(num_tel);


--
-- Name: evaluation_numencad_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY evaluation
    ADD CONSTRAINT evaluation_numencad_fkey FOREIGN KEY (numencad) REFERENCES encadrant(numencad);


--
-- Name: evaluation_numetud_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY evaluation
    ADD CONSTRAINT evaluation_numetud_fkey FOREIGN KEY (numetud) REFERENCES etudiant(numetud);


--
-- Name: evaluation_numstage_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY evaluation
    ADD CONSTRAINT evaluation_numstage_fkey FOREIGN KEY (numstage) REFERENCES stage(numstage);


--
-- Name: industriel_numentr_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY industriel
    ADD CONSTRAINT industriel_numentr_fkey FOREIGN KEY (numentr) REFERENCES entreprise(numentr);


--
-- Name: laboratoire_numlab_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY laboratoire
    ADD CONSTRAINT laboratoire_numlab_fkey FOREIGN KEY (numlab) REFERENCES etablissement(numetab);


--
-- Name: notejury_idjury_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY notejury
    ADD CONSTRAINT notejury_idjury_fkey FOREIGN KEY (idjury) REFERENCES jury(idjury);


--
-- Name: notejury_idsoutenance_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY notejury
    ADD CONSTRAINT notejury_idsoutenance_fkey FOREIGN KEY (idsoutenance) REFERENCES soutenance(idsoutenance);


--
-- Name: noterapport_idenseignant_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY noterapport
    ADD CONSTRAINT noterapport_idenseignant_fkey FOREIGN KEY (idenseignant) REFERENCES enseignant(idenseignant);


--
-- Name: noterapport_idrapport_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY noterapport
    ADD CONSTRAINT noterapport_idrapport_fkey FOREIGN KEY (idrapport) REFERENCES rapport_stage(idrapport);


--
-- Name: participe_idjury_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY participe
    ADD CONSTRAINT participe_idjury_fkey FOREIGN KEY (idjury) REFERENCES jury(idjury);


--
-- Name: participe_numencad_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY participe
    ADD CONSTRAINT participe_numencad_fkey FOREIGN KEY (numencad) REFERENCES encadrant(numencad);


--
-- Name: rapport_stage_numstage_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY rapport_stage
    ADD CONSTRAINT rapport_stage_numstage_fkey FOREIGN KEY (numstage) REFERENCES stage(numstage);


--
-- Name: rapporteur_idenseignant_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY rapporteur
    ADD CONSTRAINT rapporteur_idenseignant_fkey FOREIGN KEY (idenseignant) REFERENCES enseignant(idenseignant);


--
-- Name: soutenance_idjury_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY soutenance
    ADD CONSTRAINT soutenance_idjury_fkey FOREIGN KEY (idjury) REFERENCES jury(idjury);


--
-- Name: soutenance_num_stage_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY soutenance
    ADD CONSTRAINT soutenance_num_stage_fkey FOREIGN KEY (numstage) REFERENCES stage(numstage);


--
-- Name: stage_idpo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY stage
    ADD CONSTRAINT stage_idpo_fkey FOREIGN KEY (idpo) REFERENCES po(idpo);


--
-- Name: stage_numetud_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY stage
    ADD CONSTRAINT stage_numetud_fkey FOREIGN KEY (numetud) REFERENCES etudiant(numetud);


--
-- Name: tuteur_idenseignant_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY tuteur
    ADD CONSTRAINT tuteur_idenseignant_fkey FOREIGN KEY (idenseignant) REFERENCES enseignant(idenseignant);


--
-- Name: tuteur_idjury_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY tuteur
    ADD CONSTRAINT tuteur_idjury_fkey FOREIGN KEY (idjury) REFERENCES jury(idjury);


--
-- Name: tuteur_numstage_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY tuteur
    ADD CONSTRAINT tuteur_numstage_fkey FOREIGN KEY (numstage) REFERENCES stage(numstage);


--
-- Name: tuteur_tel_fkey; Type: FK CONSTRAINT; Schema: public; Owner: log_bd3a_13
--

ALTER TABLE ONLY tuteur
    ADD CONSTRAINT tuteur_tel_fkey FOREIGN KEY (tel) REFERENCES personnel(tel);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--


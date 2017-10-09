CREATE TABLE IF NOT EXISTS `T_Association` (
`id_Association` int(11) NOT NULL,
  `Ass_Name` varchar(45) NOT NULL DEFAULT 'Association non définie'
) 

INSERT INTO `T_Association` (`id_Association`, `Ass_Name`) VALUES
(1, 'Lalafell Lubrique'),
(2, 'Olala');

CREATE TABLE IF NOT EXISTS `T_Convention` (
`id_Convention` int(11) NOT NULL,
  `Con_Name` varchar(45) NOT NULL,
  `Con_TableQuantity` int(11) NOT NULL,
  `Con_StartDate` datetime NOT NULL,
  `Con_EndDate` datetime NOT NULL
)


-- A automatiser

INSERT INTO `T_Convention` (`id_Convention`, `Con_Name`, `Con_TableQuantity`, `Con_StartDate`, `Con_EndDate`) VALUES
(1, 'Salon du Monde Fantomatique', 18, '2017-05-19 10:00:00', '2017-05-19 20:00:00'),
(2, 'Salon du Monde Fanmagazine', 18, '2017-05-20 10:00:00', '2017-05-20 20:00:00');

-- Fin automatisation

--
-- Structure de la table `T_Disponibilite`
--

CREATE TABLE IF NOT EXISTS `T_Disponibilite` (
`id_Disponibilite` int(11) NOT NULL,
  `Dis_Schedule` datetime NOT NULL,
  `Dis_TableNumber` int(11) DEFAULT NULL,
  `id_Convention` int(11) NOT NULL,
  `id_Scenario` int(11) NOT NULL
)

--
-- Contenu de la table `T_Disponibilite`
--

INSERT INTO `T_Disponibilite` (`id_Disponibilite`, `Dis_Schedule`, `Dis_TableNumber`, `id_Convention`, `id_Scenario`) VALUES
(1, '2017-02-18 09:31:21', 11, 1, 4),
(3, '2017-08-08 07:27:00', 12, 1, 2),
(4, '2017-08-20 20:31:00', 3, 2, 6),
(5, '2017-08-08 07:27:00', 12, 1, 2),
(6, '2017-08-20 20:31:00', 3, 2, 6);

-- --------------------------------------------------------

--
-- Structure de la table `T_Editeur`
--

CREATE TABLE IF NOT EXISTS `T_Editeur` (
`id_Editeur` int(11) NOT NULL,
  `Edi_Name` varchar(45) NOT NULL,
  `Edi_Website` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `T_Editeur`
--

INSERT INTO `T_Editeur` (`id_Editeur`, `Edi_Name`, `Edi_Website`) VALUES
(1, 'Black Book Edition', 'https://www.black-book-editions.fr/'),
(2, 'Sans-Détour', 'http://www.sans-detour.com/'),
(3, 'Edge', NULL),
(4, 'La Boîte à Heuhh', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `T_Joueur`
--

CREATE TABLE IF NOT EXISTS `T_Joueur` (
`id_Joueur` int(11) NOT NULL,
  `Jou_FirstName` varchar(16) NOT NULL,
  `Jou_LastName` varchar(16) NOT NULL,
  `Jou_Mail` varchar(100) DEFAULT NULL,
  `Jou_TelNumber` varchar(10) NOT NULL
)

--
-- Contenu de la table `T_Joueur`
--

INSERT INTO `T_Joueur` (`id_Joueur`, `Jou_FirstName`, `Jou_LastName`, `Jou_Mail`, `Jou_TelNumber`) VALUES
(1, 'Nom1', 'Prenom1', 'mail@joueur1.com', '0101010101'),
(2, 'Nom2', 'Prenom2', 'mail@joueur2.com', '22222'),
(3, 'Nom3', 'Prenom3', 'mail@joueur3.com', '33333'),
(4, 'Nom4', 'Prenom4', 'mail@joueur4.com', '44444'),
(5, 'Nom5', 'Prenom5', 'mail@joueur5.com', '55555'),
(6, 'Nom6', 'Prenom6', 'mail@joueur6.com', '66666'),
(7, 'Nom7', 'Prenom7', 'mail@joueur7.com', '77777'),
(8, 'Nom8', 'Prenom8', 'mail@joueur8.com', '88888'),
(9, 'Nom9', 'Prenom9', 'mail@joueur9.com', '99999'),
(10, 'Nom10', 'Prenom10', 'mail@joueur10.com', '1010101010'),
(11, 'Nom11', 'Prenom11', 'mail@joueur11.com', '1111111111'),
(12, 'Nom12', 'Prenom12', 'mail@joueur12.com', '1212121212'),
(13, 'Nom13', 'Prenom13', 'mail@joueur13.com', '1313131313'),
(14, 'Nom14', 'Prenom14', 'mail@joueur14.com', '1414141414'),
(15, 'Nom15', 'Prenom15', 'mail@joueur15.com', '1515151515'),
(16, 'Nom16', 'Prenom16', 'mail@joueur16.com', '1616161616'),
(17, 'Nom17', 'Prenom17', 'mail@joueur17.com', '1717171717'),
(18, 'Nom18', 'Prenom18', 'mail@joueur18.com', '1818181818'),
(19, 'Nom19', 'Prenom19', 'mail@joueur19.com', '1919191919'),
(20, 'Nom20', 'Prenom20', 'mail@joueur20.com', '2020202020'),
(21, 'Nom21', 'Prenom21', 'mail@joueur21.com', '2121212121'),
(22, 'Nom22', 'Prenom22', 'mail@joueur22.com', '2222222222'),
(23, 'Nom23', 'Prenom23', 'mail@joueur23.com', '2323232323'),
(24, 'Nom24', 'Prenom24', 'mail@joueur24.com', '2424242424'),
(25, 'Nom25', 'Prenom25', 'mail@joueur25.com', '2525252525');

-- --------------------------------------------------------

--
-- Structure de la table `T_MotCle`
--

CREATE TABLE IF NOT EXISTS `T_MotCle` (
`id_MotCle` int(11) NOT NULL,
  `MCl_Name` varchar(45) NOT NULL
)

--
-- Contenu de la table `T_MotCle`
--

INSERT INTO `T_MotCle` (`id_MotCle`, `MCl_Name`) VALUES
(3, 'médiéval'),
(4, 'fantastique'),
(5, 'space opera'),
(6, 'contemporain'),
(7, 'horrifique'),
(8, 'cyberpunk'),
(9, 'transhumanisme'),
(10, 'post apocalyptique');

-- --------------------------------------------------------

--
-- Structure de la table `T_Organisateur`
--

CREATE TABLE IF NOT EXISTS `T_Organisateur` (
`id_Organisateur` int(11) NOT NULL,
  `Org_FirstName` varchar(16) NOT NULL,
  `Org_LastName` varchar(16) NOT NULL,
  `Org_Nickname` varchar(16) DEFAULT NULL,
  `Org_TelNumber` varchar(10) NOT NULL,
  `Org_Password` varchar(45) NOT NULL,
  `id_Responsabilite` int(11) NOT NULL,
  `id_Association` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `T_Organisateur`
--

INSERT INTO `T_Organisateur` (`id_Organisateur`, `Org_FirstName`, `Org_LastName`, `Org_Nickname`, `Org_TelNumber`, `Org_Password`, `id_Responsabilite`, `id_Association`) VALUES
(1, 'Juliette', 'Binotte', 'Binette', '0102030405', 'jaimelapatate', 1, 1),
(2, 'Dupont', 'Martin', NULL, '0102030405', 'mangezdespommes', 3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `T_Partie`
--

CREATE TABLE IF NOT EXISTS `T_Partie` (
  `id_Disponibilite` int(11) NOT NULL,
  `id_Joueur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `T_Partie`
--

INSERT INTO `T_Partie` (`id_Disponibilite`, `id_Joueur`) VALUES
(3, 2),
(3, 8),
(3, 12),
(4, 4),
(5, 15);

-- --------------------------------------------------------

--
-- Structure de la table `T_Responsabilite`
--

CREATE TABLE IF NOT EXISTS `T_Responsabilite` (
`id_Responsabilite` int(11) NOT NULL,
  `Res_Name` varchar(45) NOT NULL DEFAULT 'Responsabilité non définie'
)

--
-- Contenu de la table `T_Responsabilite`
--

INSERT INTO `T_Responsabilite` (`id_Responsabilite`, `Res_Name`) VALUES
(1, 'Accueil'),
(2, 'Administrateur'),
(3, 'Maître du Jeu');

-- --------------------------------------------------------

--
-- Structure de la table `T_Scenario`
--

CREATE TABLE IF NOT EXISTS `T_Scenario` (
`id_Scenario` int(11) NOT NULL,
  `Sce_Name` varchar(45) DEFAULT NULL,
  `Sce_NumberOfPlayers` int(11) NOT NULL,
  `Sce_Duration` int(11) NOT NULL,
  `Sce_Description` varchar(45) DEFAULT NULL,
  `id_Organisateur` int(11) NOT NULL,
  `id_Systeme` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `T_Scenario`
--

INSERT INTO `T_Scenario` (`id_Scenario`, `Sce_Name`, `Sce_NumberOfPlayers`, `Sce_Duration`, `Sce_Description`, `id_Organisateur`, `id_Systeme`) VALUES
(1, 'Scenario 1', 4, 180, 'Description du Scenario 1', 1, 1),
(2, 'Scenario 2', 3, 240, 'Scénario numéro 2', 1, 2),
(3, 'Scenario 3', 6, 210, 'Description du Scenario 3', 1, 3),
(4, 'Scenario 4', 5, 240, 'Description Scenario 4', 1, 4),
(5, 'Scenario 5', 3, 210, 'Description Scenario  5', 1, 5),
(6, 'Scenario 6', 4, 30, 'Description Scenario 6', 1, 6),
(7, 'Scenario 1-2', 6, 210, 'Description du Scenario 1', 2, 1),
(8, 'Scenario 2-2', 6, 60, 'Scénario numéro 2', 2, 2),
(9, 'Scenario 3-2', 6, 60, 'Description du Scenario 3', 2, 3),
(10, 'Scenario 4-2', 4, 120, 'Description Scenario 4', 2, 4),
(11, 'Scenario 5-2', 4, 210, 'Description Scenario  5', 2, 5),
(12, 'Scenario 6-2', 1, 150, 'Description Scenario 6', 2, 6);

-- --------------------------------------------------------

--
-- Structure de la table `T_Systeme`
--

CREATE TABLE IF NOT EXISTS `T_Systeme` (
`id_Systeme` int(11) NOT NULL,
  `Sys_Name` varchar(45) NOT NULL,
  `Sys_Quatrieme` varchar(45) NOT NULL,
  `Sys_Description` varchar(45) NOT NULL,
  `Sys_Website` varchar(45) NOT NULL,
  `id_Editeur` int(11) DEFAULT NULL
)

--
-- Contenu de la table `T_Systeme`
--

INSERT INTO `T_Systeme` (`id_Systeme`, `Sys_Name`, `Sys_Quatrieme`, `Sys_Description`, `Sys_Website`, `id_Editeur`) VALUES
(1, 'Pathfinder', 'lalala', 'lalalala', '', 1),
(2, 'Rogue Trader', '', '', '', 3),
(3, 'DeltaGreen', '', '', '', 1),
(4, 'Cyber Age', '', '', '', 1),
(5, 'Eclipse Phase', '', '', '', 1),
(6, 'SuperClique', '', '', '', 4),
(7, 'Tatayoyo', '', '', '', 4);

-- --------------------------------------------------------

--
-- Structure de la table `T_Theme`
--

CREATE TABLE IF NOT EXISTS `T_Theme` (
  `id_Systeme` int(11) NOT NULL,
  `id_MotCle` int(11) NOT NULL
)

--
-- Contenu de la table `T_Theme`
--

INSERT INTO `T_Theme` (`id_Systeme`, `id_MotCle`) VALUES
(1, 3),
(1, 4),
(2, 5),
(3, 6),
(3, 7),
(4, 8),
(5, 7),
(5, 9),
(5, 10),
(6, 4);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `V_Disponibilite`
--
CREATE TABLE IF NOT EXISTS `V_Disponibilite` (
`id_Disponibilite` int(11)
,`Dis_Schedule` datetime
,`Dis_TableNumber` int(11)
,`Con_Name` varchar(45)
,`Con_StartDate` datetime
,`Con_EndDate` datetime
,`Sce_Name` varchar(45)
,`Sce_NumberOfPlayers` int(11)
,`Sce_Duration` int(11)
,`Sys_Name` varchar(45)
);
-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `V_Organisateur`
--
CREATE TABLE IF NOT EXISTS `V_Organisateur` (
`id_Association` int(11)
,`Ass_Name` varchar(45)
,`id_Organisateur` int(11)
,`Org_FirstName` varchar(16)
,`Org_LastName` varchar(16)
,`Org_Nickname` varchar(16)
,`Org_TelNumber` varchar(10)
,`Org_Password` varchar(45)
,`id_Responsabilite` int(11)
,`Res_Name` varchar(45)
);
-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `V_Scenario`
--
CREATE TABLE IF NOT EXISTS `V_Scenario` (
`id_Scenario` int(11)
,`Sce_Name` varchar(45)
,`Sce_NumberOfPlayers` int(11)
,`Sce_Duration` int(11)
,`Sce_Description` varchar(45)
,`Sys_Name` varchar(45)
,`Org_FirstName` varchar(16)
,`Org_LastName` varchar(16)
);
-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `V_Systeme`
--
CREATE TABLE IF NOT EXISTS `V_Systeme` (
`id_Systeme` int(11)
,`Sys_Name` varchar(45)
,`Sys_Quatrieme` varchar(45)
,`Sys_Description` varchar(45)
,`Sys_Website` varchar(45)
,`Edi_Name` varchar(45)
,`Edi_Website` varchar(45)
,`MCl_Name` varchar(45)
);
-- --------------------------------------------------------

--
-- Structure de la vue `V_Disponibilite`
--
DROP TABLE IF EXISTS `V_Disponibilite`;

CREATE ALGORITHM=UNDEFINED DEFINER=`testuser`@`%` SQL SECURITY DEFINER VIEW `V_Disponibilite` AS select `T_Disponibilite`.`id_Disponibilite` AS `id_Disponibilite`,`T_Disponibilite`.`Dis_Schedule` AS `Dis_Schedule`,`T_Disponibilite`.`Dis_TableNumber` AS `Dis_TableNumber`,`T_Convention`.`Con_Name` AS `Con_Name`,`T_Convention`.`Con_StartDate` AS `Con_StartDate`,`T_Convention`.`Con_EndDate` AS `Con_EndDate`,`T_Scenario`.`Sce_Name` AS `Sce_Name`,`T_Scenario`.`Sce_NumberOfPlayers` AS `Sce_NumberOfPlayers`,`T_Scenario`.`Sce_Duration` AS `Sce_Duration`,`T_Systeme`.`Sys_Name` AS `Sys_Name` from (((`T_Disponibilite` join `T_Convention` on((`T_Disponibilite`.`id_Convention` = `T_Convention`.`id_Convention`))) join `T_Scenario` on((`T_Disponibilite`.`id_Scenario` = `T_Scenario`.`id_Scenario`))) join `T_Systeme` on((`T_Scenario`.`id_Systeme` = `T_Systeme`.`id_Systeme`))) WITH CASCADED CHECK OPTION;

-- --------------------------------------------------------

--
-- Structure de la vue `V_Organisateur`
--
DROP TABLE IF EXISTS `V_Organisateur`;

CREATE ALGORITHM=UNDEFINED DEFINER=`testuser`@`%` SQL SECURITY DEFINER VIEW `V_Organisateur` AS select `org`.`id_Association` AS `id_Association`,`ass`.`Ass_Name` AS `Ass_Name`,`org`.`id_Organisateur` AS `id_Organisateur`,`org`.`Org_FirstName` AS `Org_FirstName`,`org`.`Org_LastName` AS `Org_LastName`,`org`.`Org_Nickname` AS `Org_Nickname`,`org`.`Org_TelNumber` AS `Org_TelNumber`,`org`.`Org_Password` AS `Org_Password`,`org`.`id_Responsabilite` AS `id_Responsabilite`,`res`.`Res_Name` AS `Res_Name` from ((`T_Association` `ass` join `T_Organisateur` `org`) join `T_Responsabilite` `res`) where ((`ass`.`id_Association` = `org`.`id_Association`) and (`org`.`id_Responsabilite` = `res`.`id_Responsabilite`)) WITH CASCADED CHECK OPTION;

-- --------------------------------------------------------

--
-- Structure de la vue `V_Scenario`
--
DROP TABLE IF EXISTS `V_Scenario`;

CREATE ALGORITHM=UNDEFINED DEFINER=`testuser`@`%` SQL SECURITY DEFINER VIEW `V_Scenario` AS select `T_Scenario`.`id_Scenario` AS `id_Scenario`,`T_Scenario`.`Sce_Name` AS `Sce_Name`,`T_Scenario`.`Sce_NumberOfPlayers` AS `Sce_NumberOfPlayers`,`T_Scenario`.`Sce_Duration` AS `Sce_Duration`,`T_Scenario`.`Sce_Description` AS `Sce_Description`,`T_Systeme`.`Sys_Name` AS `Sys_Name`,`T_Organisateur`.`Org_FirstName` AS `Org_FirstName`,`T_Organisateur`.`Org_LastName` AS `Org_LastName` from ((`T_Scenario` join `T_Systeme` on((`T_Scenario`.`id_Systeme` = `T_Systeme`.`id_Systeme`))) join `T_Organisateur` on((`T_Scenario`.`id_Organisateur` = `T_Organisateur`.`id_Organisateur`))) WITH CASCADED CHECK OPTION;

-- --------------------------------------------------------

--
-- Structure de la vue `V_Systeme`
--
DROP TABLE IF EXISTS `V_Systeme`;

CREATE ALGORITHM=UNDEFINED DEFINER=`testuser`@`%` SQL SECURITY DEFINER VIEW `V_Systeme` AS select `T_Systeme`.`id_Systeme` AS `id_Systeme`,`T_Systeme`.`Sys_Name` AS `Sys_Name`,`T_Systeme`.`Sys_Quatrieme` AS `Sys_Quatrieme`,`T_Systeme`.`Sys_Description` AS `Sys_Description`,`T_Systeme`.`Sys_Website` AS `Sys_Website`,`T_Editeur`.`Edi_Name` AS `Edi_Name`,`T_Editeur`.`Edi_Website` AS `Edi_Website`,`T_MotCle`.`MCl_Name` AS `MCl_Name` from (((`T_Systeme` join `T_Editeur` on((`T_Systeme`.`id_Editeur` = `T_Editeur`.`id_Editeur`))) join `T_Theme` on((`T_Systeme`.`id_Systeme` = `T_Theme`.`id_Systeme`))) join `T_MotCle` on((`T_Theme`.`id_MotCle` = `T_MotCle`.`id_MotCle`))) WITH CASCADED CHECK OPTION;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `T_Association`
--
ALTER TABLE `T_Association`
 ADD PRIMARY KEY (`id_Association`);

--
-- Index pour la table `T_Convention`
--
ALTER TABLE `T_Convention`
 ADD PRIMARY KEY (`id_Convention`);

--
-- Index pour la table `T_Disponibilite`
--
ALTER TABLE `T_Disponibilite`
 ADD PRIMARY KEY (`id_Disponibilite`), ADD KEY `FK_DIS_SCE_idx` (`id_Scenario`), ADD KEY `FK_DIS_CON_idx` (`id_Convention`);

--
-- Index pour la table `T_Editeur`
--
ALTER TABLE `T_Editeur`
 ADD PRIMARY KEY (`id_Editeur`);

--
-- Index pour la table `T_Joueur`
--
ALTER TABLE `T_Joueur`
 ADD PRIMARY KEY (`id_Joueur`);

--
-- Index pour la table `T_MotCle`
--
ALTER TABLE `T_MotCle`
 ADD PRIMARY KEY (`id_MotCle`);

--
-- Index pour la table `T_Organisateur`
--
ALTER TABLE `T_Organisateur`
 ADD PRIMARY KEY (`id_Organisateur`), ADD KEY `FK_Res_Org_idx` (`id_Responsabilite`), ADD KEY `FK_ORG_ASS_idx` (`id_Association`);

--
-- Index pour la table `T_Partie`
--
ALTER TABLE `T_Partie`
 ADD PRIMARY KEY (`id_Disponibilite`,`id_Joueur`), ADD KEY `FK_DIS_PAR_idx` (`id_Disponibilite`), ADD KEY `FK_JOU_PAR_idx` (`id_Joueur`);

--
-- Index pour la table `T_Responsabilite`
--
ALTER TABLE `T_Responsabilite`
 ADD PRIMARY KEY (`id_Responsabilite`);

--
-- Index pour la table `T_Scenario`
--
ALTER TABLE `T_Scenario`
 ADD PRIMARY KEY (`id_Scenario`), ADD KEY `FK_ORG_SCE_idx` (`id_Organisateur`), ADD KEY `FK_ORG_SYS_idx` (`id_Systeme`);

--
-- Index pour la table `T_Systeme`
--
ALTER TABLE `T_Systeme`
 ADD PRIMARY KEY (`id_Systeme`), ADD KEY `fk_T_Systeme_1_idx` (`id_Editeur`);

--
-- Index pour la table `T_Theme`
--
ALTER TABLE `T_Theme`
 ADD PRIMARY KEY (`id_Systeme`,`id_MotCle`), ADD KEY `FK_Sys_The_idx` (`id_Systeme`), ADD KEY `FK_MCl_The_idx` (`id_MotCle`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `T_Association`
--
ALTER TABLE `T_Association`
MODIFY `id_Association` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `T_Convention`
--
ALTER TABLE `T_Convention`
MODIFY `id_Convention` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `T_Disponibilite`
--
ALTER TABLE `T_Disponibilite`
MODIFY `id_Disponibilite` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `T_Editeur`
--
ALTER TABLE `T_Editeur`
MODIFY `id_Editeur` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `T_Joueur`
--
ALTER TABLE `T_Joueur`
MODIFY `id_Joueur` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `T_MotCle`
--
ALTER TABLE `T_MotCle`
MODIFY `id_MotCle` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `T_Organisateur`
--
ALTER TABLE `T_Organisateur`
MODIFY `id_Organisateur` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `T_Responsabilite`
--
ALTER TABLE `T_Responsabilite`
MODIFY `id_Responsabilite` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `T_Scenario`
--
ALTER TABLE `T_Scenario`
MODIFY `id_Scenario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `T_Systeme`
--
ALTER TABLE `T_Systeme`
MODIFY `id_Systeme` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `T_Disponibilite`
--
ALTER TABLE `T_Disponibilite`
ADD CONSTRAINT `FK_DIS_CON` FOREIGN KEY (`id_Convention`) REFERENCES `T_Convention` (`id_Convention`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_DIS_SCE` FOREIGN KEY (`id_Scenario`) REFERENCES `T_Scenario` (`id_Scenario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `T_Organisateur`
--
ALTER TABLE `T_Organisateur`
ADD CONSTRAINT `FK_ORG_ASS` FOREIGN KEY (`id_Association`) REFERENCES `T_Association` (`id_Association`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_ORG_RES` FOREIGN KEY (`id_Responsabilite`) REFERENCES `T_Responsabilite` (`id_Responsabilite`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `T_Partie`
--
ALTER TABLE `T_Partie`
ADD CONSTRAINT `FK_DIS_PAR` FOREIGN KEY (`id_Disponibilite`) REFERENCES `T_Disponibilite` (`id_Disponibilite`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_JOU_PAR` FOREIGN KEY (`id_Joueur`) REFERENCES `T_Joueur` (`id_Joueur`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `T_Scenario`
--
ALTER TABLE `T_Scenario`
ADD CONSTRAINT `FK_ORG_SCE` FOREIGN KEY (`id_Organisateur`) REFERENCES `T_Organisateur` (`id_Organisateur`),
ADD CONSTRAINT `FK_ORG_SYS` FOREIGN KEY (`id_Systeme`) REFERENCES `T_Systeme` (`id_Systeme`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `T_Systeme`
--
ALTER TABLE `T_Systeme`
ADD CONSTRAINT `FK_Edi_Sys` FOREIGN KEY (`id_Editeur`) REFERENCES `T_Editeur` (`id_Editeur`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `T_Theme`
--
ALTER TABLE `T_Theme`
ADD CONSTRAINT `FK_MCl_The` FOREIGN KEY (`id_MotCle`) REFERENCES `T_MotCle` (`id_MotCle`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_Sys_The` FOREIGN KEY (`id_Systeme`) REFERENCES `T_Systeme` (`id_Systeme`) ON DELETE NO ACTION ON UPDATE NO ACTION;

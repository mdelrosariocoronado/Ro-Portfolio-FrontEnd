
Insert into social_medias Values 
(5, 'github', 'link github aca', 1);jobsCREATE TABLE `education` (
  `ideducation` int NOT NULL,
  `name_ed` varchar(45) DEFAULT NULL,
  `year_ed` year DEFAULT NULL,
  `institutionName_ed` varchar(45) DEFAULT NULL,
  `location_ed` varchar(45) DEFAULT NULL,
  `people_idpeople` int NOT NULL,
  PRIMARY KEY (`ideducation`,`people_idpeople`),
  KEY `fk_education_people_idx` (`people_idpeople`),
  CONSTRAINT `fk_education_people` FOREIGN KEY (`people_idpeople`) REFERENCES `people` (`idpeople`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE `job_type` (
  `idjobs` int NOT NULL,
  `name_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idjobs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE `jobs` (
  `id_job` int NOT NULL,
  `name_job` varchar(45) DEFAULT NULL,
  `startDate_job` date DEFAULT NULL,
  `endDate_job` date DEFAULT NULL,
  `description_job` varchar(200) DEFAULT NULL,
  `job_type_idjobs` int NOT NULL,
  `people_idpeople` int NOT NULL,
  PRIMARY KEY (`id_job`,`job_type_idjobs`,`people_idpeople`),
  KEY `fk_jobs_job_type1_idx` (`job_type_idjobs`),
  KEY `fk_jobs_people1_idx` (`people_idpeople`),
  CONSTRAINT `fk_jobs_job_type1` FOREIGN KEY (`job_type_idjobs`) REFERENCES `job_type` (`idjobs`),
  CONSTRAINT `fk_jobs_people1` FOREIGN KEY (`people_idpeople`) REFERENCES `people` (`idpeople`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE `people` (
  `idpeople` int NOT NULL,
  `name_p` varchar(45) DEFAULT NULL,
  `lastname_p` varchar(45) DEFAULT NULL,
  `birthday_p` date DEFAULT NULL,
  `location_p` varchar(45) DEFAULT NULL,
  `developerType_p` varchar(45) DEFAULT NULL,
  `highlight_p` varchar(45) DEFAULT NULL,
  `aboutMe_p` varchar(200) DEFAULT NULL,
  `urlPhoto_p` varchar(150) DEFAULT NULL,
  `adress_p` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`idpeople`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE `projects` (
  `idprojects` int NOT NULL,
  `name_proj` varchar(45) DEFAULT NULL,
  `type_proj` varchar(45) DEFAULT NULL,
  `description_proj` varchar(200) DEFAULT NULL,
  `url_proj` varchar(150) DEFAULT NULL,
  `urlMultImages_proj` varchar(150) DEFAULT NULL,
  `people_idpeople` int NOT NULL,
  PRIMARY KEY (`idprojects`,`people_idpeople`),
  KEY `fk_projects_people1_idx` (`people_idpeople`),
  CONSTRAINT `fk_projects_people1` FOREIGN KEY (`people_idpeople`) REFERENCES `people` (`idpeople`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE `social_medias` (
  `idsocial_medias` int NOT NULL,
  `name_sm` varchar(45) DEFAULT NULL,
  `url_sm` varchar(150) DEFAULT NULL,
  `people_idpeople` int NOT NULL,
  PRIMARY KEY (`idsocial_medias`,`people_idpeople`),
  KEY `fk_social_medias_people1_idx` (`people_idpeople`),
  CONSTRAINT `fk_social_medias_people1` FOREIGN KEY (`people_idpeople`) REFERENCES `people` (`idpeople`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

select  from social_medias;
CREATE TABLE `data_platform_questionnaire_header_data`
(
  `Questionnaire`            int(20) NOT NULL,
  `QuestionnaireOwner`       int(12) NOT NULL,
  `QuestionnaireType`        varchar(4) NOT NULL,
  `QuestionnaireTemplate`    varchar(4) NOT NULL,
  `QuestionnaireDate`        date NOT NULL,
  `QuestionnaireTime`        time NOT NULL,
  `Respondent`               int(12) NOT NULL,
  `QuestionnaireObjectType`  varchar(40) NOT NULL,
  `QuestionnaireObject`      int(16) NOT NULL,
  `CreationDate`             date NOT NULL,
  `CreationTime`             time NOT NULL,
  `IsMarkedForDeletion`      tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Questionnaire`),

    CONSTRAINT `DPFMQuestionnaireHeaderDataQuestionnaireOwner_fk` FOREIGN KEY (`QuestionnaireOwner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMQuestionnaireHeaderDataQuestionnaireType_fk` FOREIGN KEY (`QuestionnaireType`) REFERENCES `data_platform_questionnaire_type_questionnaire_type_data` (`QuestionnaireType`),
    CONSTRAINT `DPFMQuestionnaireHeaderDataQuestionnaireTemplate_fk` FOREIGN KEY (`QuestionnaireTemplate`) REFERENCES `data_platform_questionnaire_tmpl_questionnaire_tmpl_data` (`QuestionnaireTemplate`),
    CONSTRAINT `DPFMQuestionnaireHeaderDataRespondent_fk` FOREIGN KEY (`Respondent`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

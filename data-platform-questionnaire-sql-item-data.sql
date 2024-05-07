CREATE TABLE `data_platform_questionnaire_item_data`
(
  `Questionnaire`                    int(20) NOT NULL,
  `QuestionnaireItem`                int(3) NOT NULL,
  `QuestionnaireItemDescription`     varchar(300) NOT NULL,
  `QuestionnaireItemFormType`        varchar(4) NOT NULL,
  `QuestionnaireItemReplyType`       varchar(4) NOT NULL,
  `QuestionnaireItemReplyByYesNo`    tinyint(1) DEFAULT NULL,
  `QuestionnaireItemReplyByNumber`   int(4) DEFAULT NULL,
  `QuestionnaireItemReplyByText`     varchar(1000) DEFAULT NULL,
  `CreationDate`                     date NOT NULL,
  `CreationTime`                     time NOT NULL,
  `IsMarkedForDeletion`              tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Questionnaire`, `QuestionnaireItem`),

    CONSTRAINT `DPFMQuestionnaireItemData_fk` FOREIGN KEY (`Questionnaire`) REFERENCES `data_platform_questionnaire_header_data` (`Questionnaire`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

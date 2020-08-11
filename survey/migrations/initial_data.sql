/*
If we want to autogenerate the uuids:
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
uuid_generate_v4()
*/

/* survey_surveyquestionservicecategory */
INSERT INTO "survey_surveyquestionservicecategory" ("id", "titleKey") VALUES (1, 'SERVCAT001GENERAL');
INSERT INTO "survey_surveyquestionservicecategory" ("id", "titleKey") VALUES (2, 'SERVCAT002LOGMAINTENANCE');
INSERT INTO "survey_surveyquestionservicecategory" ("id", "titleKey") VALUES (3, 'SERVCAT003LOGDEV');
INSERT INTO "survey_surveyquestionservicecategory" ("id", "titleKey") VALUES (4, 'SERVCAT004RH1');
INSERT INTO "survey_surveyquestionservicecategory" ("id", "titleKey") VALUES (5, 'SERVCAT005RH2');
INSERT INTO "survey_surveyquestionservicecategory" ("id", "titleKey") VALUES (6, 'SERVCAT006AUDIT');
INSERT INTO "survey_surveyquestionservicecategory" ("id", "titleKey") VALUES (7, 'SERVCAT007REGL');
INSERT INTO "survey_surveyquestionservicecategory" ("id", "titleKey") VALUES (8, 'SERVCAT008SERVICE');
INSERT INTO "survey_surveyquestionservicecategory" ("id", "titleKey") VALUES (9, 'SERVCAT009BACKUP');

/* survey_surveysection */
INSERT INTO "survey_surveysection" ("id", "sectionTitleKey") VALUES (1, 'SECTION001GENERAL');
INSERT INTO "survey_surveysection" ("id", "sectionTitleKey") VALUES (2, 'SECTION002LOGICIEL');
INSERT INTO "survey_surveysection" ("id", "sectionTitleKey") VALUES (3, 'SECTION003RH');
INSERT INTO "survey_surveysection" ("id", "sectionTitleKey") VALUES (4, 'SECTION004AUDIT');
INSERT INTO "survey_surveysection" ("id", "sectionTitleKey") VALUES (5, 'SECTION005CONTRAINTESREGL');
INSERT INTO "survey_surveysection" ("id", "sectionTitleKey") VALUES (6, 'SECTION006SERVICE');
INSERT INTO "survey_surveysection" ("id", "sectionTitleKey") VALUES (7, 'SECTION006BACKUP');

/* survey_surveyquestion */
INSERT INTO "survey_surveyquestion" ("uuid", "titleKey", "qtype", "qindex", "service_category_id", "section_id", "maxPoints") VALUES ('070946ca-abb0-44d0-b4b5-04c3155b78a9', 'Q001GENERAL', 'M', 1, 1, 1, 45);
INSERT INTO "survey_surveyquestion" ("uuid", "titleKey", "qtype", "qindex", "service_category_id", "section_id", "maxPoints") VALUES ('96eba38d-5129-461e-986c-50e5dc3b479f', 'Q002LOGMAINTENANCE', 'S', 2, 2, 2, 30);
INSERT INTO "survey_surveyquestion" ("uuid", "titleKey", "qtype", "qindex", "service_category_id", "section_id", "maxPoints") VALUES ('65a694eb-8043-4ba5-a515-ab986b00bf17', 'Q003LOGDEV', 'S', 3, 3, 2, 35);
INSERT INTO "survey_surveyquestion" ("uuid", "titleKey", "qtype", "qindex", "service_category_id", "section_id", "maxPoints") VALUES ('5fdd319c-cbcb-4dd9-a7d8-4277a977f697', 'Q004RH1', 'S', 4, 4, 3, 15);
INSERT INTO "survey_surveyquestion" ("uuid", "titleKey", "qtype", "qindex", "service_category_id", "section_id", "maxPoints") VALUES ('059a045d-c7ea-422f-8d42-288400349a51', 'Q005RH2', 'M', 5, 5, 3, 35);
INSERT INTO "survey_surveyquestion" ("uuid", "titleKey", "qtype", "qindex", "service_category_id", "section_id", "maxPoints") VALUES ('5251e7ff-4560-4d7a-a624-a002e35ab753', 'Q006AUDIT', 'S', 6, 6, 4, 15);
INSERT INTO "survey_surveyquestion" ("uuid", "titleKey", "qtype", "qindex", "service_category_id", "section_id", "maxPoints") VALUES ('31a93341-8df1-4bf9-93c6-377089be1756', 'Q007REGL', 'S', 7, 7, 5, 30);
INSERT INTO "survey_surveyquestion" ("uuid", "titleKey", "qtype", "qindex", "service_category_id", "section_id", "maxPoints") VALUES ('586ffb9e-70a0-4c00-9ada-f99e44bb32a3', 'Q008SERVICE', 'M', 8, 8, 6, 45);
INSERT INTO "survey_surveyquestion" ("uuid", "titleKey", "qtype", "qindex", "service_category_id", "section_id", "maxPoints") VALUES ('daa729d6-db30-4e4b-b91c-6610f7287c3e', 'Q009BACKUP', 'M', 9, 9, 7, 25);

/* survey_surveyquestionanswer */
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (1, 'Q001GENERALA001', 10, '070946ca-abb0-44d0-b4b5-04c3155b78a9', FALSE, 0);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (2, 'Q001GENERALA002', 20, '070946ca-abb0-44d0-b4b5-04c3155b78a9', FALSE, 15);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (3, 'Q001GENERALA003', 30, '070946ca-abb0-44d0-b4b5-04c3155b78a9', FALSE, 5);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (4, 'Q001GENERALA004', 40, '070946ca-abb0-44d0-b4b5-04c3155b78a9', FALSE, 10);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (5, 'Q001GENERALA005', 50, '070946ca-abb0-44d0-b4b5-04c3155b78a9', FALSE, 5);

INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (6, 'Q002LOGMAINTENANCEA001', 10, '96eba38d-5129-461e-986c-50e5dc3b479f', TRUE, 0);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (7, 'Q002LOGMAINTENANCEA002', 20, '96eba38d-5129-461e-986c-50e5dc3b479f', TRUE, 10);

INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (8, 'Q003LOGDEVA001', 10, '65a694eb-8043-4ba5-a515-ab986b00bf17', TRUE, 15);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (9, 'Q003LOGDEVA002', 20, '65a694eb-8043-4ba5-a515-ab986b00bf17', TRUE, 5);

INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (10, 'Q004RH1A001', 10, '5fdd319c-cbcb-4dd9-a7d8-4277a977f697', TRUE, 15);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (11, 'Q004RH1A002', 20, '5fdd319c-cbcb-4dd9-a7d8-4277a977f697', TRUE, 15);

INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (12, 'Q005RH2A001', 10, '059a045d-c7ea-422f-8d42-288400349a51', FALSE, 35);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (13, 'Q005RH2A002', 20, '059a045d-c7ea-422f-8d42-288400349a51', FALSE, 15);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (14, 'Q005RH2A003', 30, '059a045d-c7ea-422f-8d42-288400349a51', FALSE, 0);

INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (15, 'Q006AUDITA001', 10, '5251e7ff-4560-4d7a-a624-a002e35ab753', TRUE, 0);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (16, 'Q006AUDITA002', 20, '5251e7ff-4560-4d7a-a624-a002e35ab753', TRUE, 5);

INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (17, 'Q007REGLA001', 10, '31a93341-8df1-4bf9-93c6-377089be1756', TRUE, 30);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (18, 'Q007REGLA002', 20, '31a93341-8df1-4bf9-93c6-377089be1756', TRUE, 10);

INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (19, 'Q008SERVICEA001', 10, '586ffb9e-70a0-4c00-9ada-f99e44bb32a3', FALSE, 0);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (20, 'Q008SERVICEA002', 20, '586ffb9e-70a0-4c00-9ada-f99e44bb32a3', FALSE, 0);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (21, 'Q008SERVICEA003', 30, '586ffb9e-70a0-4c00-9ada-f99e44bb32a3', FALSE, 0);

INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (22, 'Q009BACKUPA001', 10, 'daa729d6-db30-4e4b-b91c-6610f7287c3e', FALSE, 25);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (23, 'Q009BACKUPA002', 20, 'daa729d6-db30-4e4b-b91c-6610f7287c3e', FALSE, 0);


/* survey_recommendations */
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC002_CHARTER', 'a', 'j', NULL, TRUE, 1);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC017_CAPACITY', 'a', 'j', NULL, TRUE, 1);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC018_CASCADE', 'a', 'b', NULL, TRUE, 1);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC024_SLA', 'c', 'j', NULL, TRUE, 1);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC025_NDA', 'a', 'j', NULL, TRUE, 1);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC027_ACTIFS', 'a', 'j', NULL, TRUE, 1);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC004_EQUIPMAINT', 'c', 'j', NULL, TRUE, 1);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC041_EQUIPREBUT', 'a', 'j', NULL, TRUE, 1);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC022_VULNRESP', 'a', 'j', NULL, TRUE, 1);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC002_CHARTER', 'a', 'j', NULL, TRUE, 2);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC017_CAPACITY', 'a', 'j', NULL, TRUE, 2);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC018_CASCADE', 'a', 'b', NULL, TRUE, 2);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC024_SLA', 'c', 'j', NULL, TRUE, 2);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC025_NDA', 'a', 'j', NULL, TRUE, 2);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC027_ACTIFS', 'a', 'j', NULL, TRUE, 2);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC022_VULNRESP', 'a', 'j', NULL, TRUE, 2);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC026_EFFACEMENT', 'a', 'j', NULL, TRUE, 1);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC002_CHARTER', 'a', 'j', NULL, TRUE, 3);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC017_CAPACITY', 'a', 'j', NULL, TRUE, 3);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC018_CASCADE', 'a', 'b', NULL, TRUE, 3);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC024_SLA', 'c', 'j', NULL, TRUE, 3);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC025_NDA', 'a', 'j', NULL, TRUE, 3);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC027_ACTIFS', 'a', 'j', NULL, TRUE, 3);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC001_RH', 'a', 'j', NULL, TRUE, 3);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC002_CHARTER', 'a', 'j', NULL, TRUE, 4);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC017_CAPACITY', 'a', 'j', NULL, TRUE, 4);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC018_CASCADE', 'a', 'b', NULL, TRUE, 4);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC024_SLA', 'c', 'j', NULL, TRUE, 4);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC025_NDA', 'a', 'j', NULL, TRUE, 4);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC027_ACTIFS', 'a', 'j', NULL, TRUE, 4);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC013_ANTIVIRUS', 'c', 'j', NULL, TRUE, 4);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC022_VULNRESP', 'a', 'j', NULL, TRUE, 4);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC026_EFFACEMENT', 'a', 'j', NULL, TRUE, 4);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC002_CHARTER', 'a', 'j', NULL, TRUE, 5);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC017_CAPACITY', 'a', 'j', NULL, TRUE, 5);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC018_CASCADE', 'a', 'b', NULL, TRUE, 5);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC024_SLA', 'c', 'j', NULL, TRUE, 5);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC025_NDA', 'a', 'j', NULL, TRUE, 5);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC027_ACTIFS', 'a', 'j', NULL, TRUE, 5);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC003_TELEWORKING', 'a', 'j', NULL, TRUE, 6);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC008_SOFTWMAINT', 'a', 'j', NULL, TRUE, 6);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC003_TELEWORKING', 'a', 'j', NULL, TRUE, 12);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC007_SECPHY', 'a', 'j', NULL, TRUE, 13);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC006_LOGICAL', 'a', 'j', NULL, TRUE, 14);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC0051_IDENTIFY', 'a', 'j', NULL, TRUE, 14);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC005_AUTHFCT', 'a', 'j', NULL, TRUE, 14);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC016_AUDIT', 'a', 'j', NULL, TRUE, 15);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC012_CONFORM', 'a', 'j', NULL, TRUE, 17);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC010_BACKUP', 'a', 'j', NULL, TRUE, 19);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC004_EQUIPMAINT', 'a', 'j', NULL, TRUE, 20);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC041_EQUIPREBUT', 'a', 'j', NULL, TRUE, 20);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC014_NETWORK', 'a', 'j', NULL, TRUE, 20);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC011_INCIDENT', 'a', 'j', NULL, TRUE, 21);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC021_PORT', 'a', 'j', NULL, TRUE, 21);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC023_CHANGE', 'a', 'j', NULL, TRUE, 21);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC004_EQUIPMAINT', 'a', 'j', NULL, TRUE, 22);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC041_EQUIPREBUT', 'a', 'j', NULL, TRUE, 22);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC011_INCIDENT', 'a', 'j', NULL, TRUE, 23);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC021_PORT', 'a', 'j', NULL, TRUE, 23);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC023_CHANGE', 'a', 'j', NULL, TRUE, 23);


/* survey_translationkey */
-- FR
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT001GENERAL', 'Général', 'fr', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT002LOGMAINTENANCE', 'Maintenance logiciel', 'fr', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT003LOGDEV', 'Développement logiciel', 'fr', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT004RH1', 'Présence RH', 'fr', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT005RH2', 'Interactions RH', 'fr', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT006AUDIT', 'Audit', 'fr', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT007REGL', 'Contraintes règlementaires', 'fr', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT008SERVICE', 'Service', 'fr', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT009BACKUP', 'Backup', 'fr', 'C');

-- EN
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT001GENERAL', 'Général', 'en', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT002LOGMAINTENANCE', 'Maintenance logiciel', 'en', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT003LOGDEV', 'Développement logiciel', 'en', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT004RH1', 'Présence RH', 'en', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT005RH2', 'Interactions RH', 'en', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT006AUDIT', 'Audit', 'en', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT007REGL', 'Contraintes règlementaires', 'en', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT008SERVICE', 'Service', 'en', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT009BACKUP', 'Backup', 'en', 'C');
-- DE
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT001GENERAL', 'Général', 'de', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT002LOGMAINTENANCE', 'Maintenance logiciel', 'de', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT003LOGDEV', 'Développement logiciel', 'de', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT004RH1', 'Présence RH', 'de', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT005RH2', 'Interactions RH', 'de', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT006AUDIT', 'Audit', 'de', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT007REGL', 'Contraintes règlementaires', 'de', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT008SERVICE', 'Service', 'de', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT009BACKUP', 'Backup', 'de', 'C');

-- FR
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION001GENERAL', 'Description du service', 'fr', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION002LOGICIEL', 'Logiciel', 'fr', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION003RH', 'Ressources humaines', 'fr', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION004AUDIT', 'Audit', 'fr', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION005CONTRAINTESREGL', 'Contraintes règlementaires', 'fr', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION006SERVICE', 'Service', 'fr', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION006BACKUP', 'Backup', 'fr', 'S');
-- EN
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION001GENERAL', 'Description du service', 'en', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION002LOGICIEL', 'Logiciel', 'en', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION003RH', 'Ressources humaines', 'en', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION004AUDIT', 'Audit', 'en', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION005CONTRAINTESREGL', 'Contraintes règlementaires', 'fr', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION006SERVICE', 'Service', 'en', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION006BACKUP', 'Backup', 'en', 'S');
-- DE
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION001GENERAL', 'Description du service', 'de', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION002LOGICIEL', 'Logiciel', 'de', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION003RH', 'Ressources humaines', 'de', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION004AUDIT', 'Audit', 'de', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION005CONTRAINTESREGL', 'Contraintes règlementaires', 'fr', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION006SERVICE', 'Service', 'de', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION006BACKUP', 'Backup', 'de', 'S');
-- FR
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERAL', 'Veuillez décrire au mieux le projet qui sera sous-traité parmi les catégories suivantes :  ', 'fr', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA001', 'Achat ou location de matériel, sans prestation de service. (ex. : serveur, matériel réseau, ordinateur, mobile, etc.)En cas d''achat de matériel et prestation de service, cocher également la case "Prestation de service"', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA002', 'Achat, location ou développement de logiciel. Tout type de prestations sur les logiciels (ex.: Maintenance, développement, etc.). Pour les logiciels en accès SaaS, veuillez cocher la case "Prestation de service"', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA003', 'Ressources humaines. Embauche d''une ou plusieurs personnes dans le projet (ex. : consultant, service de ménage, technicien, etc.)', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA004', 'Prestation de service. Délégation d’un service entier, notamment sur une infrastructure pouvant être gérée par un tiers (ex.: service de backup, cloud, SaaS, etc.)', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA005', 'Bâtiment. Tout élément se rapportant physiquement à un bâtiment (ex.: climatisation, etc.). Si le projet porte sur le périmètre d''accès physique et qu''il est lié à un logiciel, il faut également cocher la case "Achat, location ou développement de logiciel"', 'fr', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q002LOGMAINTENANCE', '	Est-ce que de la maintenance à distance aura lieue ? ', 'fr', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q002LOGMAINTENANCEA001', 'Oui', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q002LOGMAINTENANCEA002', 'Non', 'fr', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q003LOGDEV', 'Est-ce qu''il s''agit d''un développement sur mesure ? ', 'fr', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q003LOGDEVA001', 'Oui', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q003LOGDEVA002', 'Non', 'fr', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q004RH1', '	Est-ce que le projet utilisera des ressources humaines tierces ? ', 'fr', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q004RH1A001', 'Oui', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q004RH1A002', 'Non', 'fr', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q005RH2', 'Pouvez-vous décrire l''interaction de cette(ces) personne(s) avec votre organismes : ', 'fr', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q005RH2A001', 'Elles travailleront à distance', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q005RH2A002', 'Elles auront accès au bâtiment ', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q005RH2A003', 'Elles auront un accès logique au système d''information', 'fr', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q006AUDIT', 'Des contrats avec les différents prestataires (informatique, comptabilité...)', 'fr', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q006AUDITA001', 'Oui', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q006AUDITA002', 'Non', 'fr', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q007REGL', 'Le nettoyage des locaux de travail se déroule', 'fr', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q007REGLA001', 'Oui', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q007REGLA002', 'Non', 'fr', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q008SERVICE', 'Est-ce que l''un des éléments suivants sera sous-traité : ', 'fr', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q008SERVICEA001', 'Backup ', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q008SERVICEA002', 'Service de communication', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q008SERVICEA003', 'Cloud', 'fr', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q009BACKUP', 'Les réseaux sans fil', 'fr', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q009BACKUPA001', 'Le service comprend la gestion d''une infrastructure de sauvegarde physique propre ', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q009BACKUPA002', 'Les données sont stockées en partie ou en totalité sur une infrastructure cloud', 'fr', 'A');

  -- EN
  INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERAL', 'Veuillez décrire au mieux le projet qui sera sous-traité parmi les catégories suivantes :  ', 'en', 'Q');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA001', 'Achat ou location de matériel, sans prestation de service. (ex. : serveur, matériel réseau, ordinateur, mobile, etc.)En cas d''achat de matériel et prestation de service, cocher également la case "Prestation de service"', 'en', 'A');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA002', 'Achat, location ou développement de logiciel. Tout type de prestations sur les logiciels (ex.: Maintenance, développement, etc.). Pour les logiciels en accès SaaS, veuillez cocher la case "Prestation de service"', 'en', 'A');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA003', 'Ressources humaines. Embauche d''une ou plusieurs personnes dans le projet (ex. : consultant, service de ménage, technicien, etc.)', 'en', 'A');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA004', 'Prestation de service. Délégation d’un service entier, notamment sur une infrastructure pouvant être gérée par un tiers (ex.: service de backup, cloud, SaaS, etc.)', 'en', 'A');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA005', 'Bâtiment. Tout élément se rapportant physiquement à un bâtiment (ex.: climatisation, etc.). Si le projet porte sur le périmètre d''accès physique et qu''il est lié à un logiciel, il faut également cocher la case "Achat, location ou développement de logiciel"', 'en', 'A');

  INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q002LOGMAINTENANCE', '	Est-ce que de la maintenance à distance aura lieue ? ', 'en', 'Q');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q002LOGMAINTENANCEA001', 'Oui', 'en', 'A');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q002LOGMAINTENANCEA002', 'Non', 'en', 'A');

  INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q003LOGDEV', 'Est-ce qu''il s''agit d''un développement sur mesure ? ', 'en', 'Q');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q003LOGDEVA001', 'Oui', 'en', 'A');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q003LOGDEVA002', 'Non', 'en', 'A');

  INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q004RH1', '	Est-ce que le projet utilisera des ressources humaines tierces ? ', 'en', 'Q');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q004RH1A001', 'Oui', 'en', 'A');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q004RH1A002', 'Non', 'en', 'A');

  INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q005RH2', 'Pouvez-vous décrire l''interaction de cette(ces) personne(s) avec votre organismes : ', 'en', 'Q');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q005RH2A001', 'Elles travailleront à distance', 'en', 'A');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q005RH2A002', 'Elles auront accès au bâtiment ', 'en', 'A');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q005RH2A003', 'Elles auront un accès logique au système d''information', 'en', 'A');

  INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q006AUDIT', 'Des contrats avec les différents prestataires (informatique, comptabilité...)', 'en', 'Q');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q006AUDITA001', 'Oui', 'en', 'A');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q006AUDITA002', 'Non', 'en', 'A');

  INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q007REGL', 'Le nettoyage des locaux de travail se déroule', 'en', 'Q');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q007REGLA001', 'Oui', 'en', 'A');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q007REGLA002', 'Non', 'en', 'A');

  INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q008SERVICE', 'Est-ce que l''un des éléments suivants sera sous-traité : ', 'en', 'Q');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q008SERVICEA001', 'Backup ', 'en', 'A');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q008SERVICEA002', 'Service de communication', 'en', 'A');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q008SERVICEA003', 'Cloud', 'en', 'A');

  INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q009BACKUP', 'Les réseaux sans fil', 'en', 'Q');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q009BACKUPA001', 'Le service comprend la gestion d''une infrastructure de sauvegarde physique propre ', 'en', 'A');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q009BACKUPA002', 'Les données sont stockées en partie ou en totalité sur une infrastructure cloud', 'en', 'A');
-- DE
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERAL', 'Veuillez décrire au mieux le projet qui sera sous-traité parmi les catégories suivantes :  ', 'de', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA001', 'Achat ou location de matériel, sans prestation de service. (ex. : serveur, matériel réseau, ordinateur, mobile, etc.)En cas d''achat de matériel et prestation de service, cocher également la case "Prestation de service"', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA002', 'Achat, location ou développement de logiciel. Tout type de prestations sur les logiciels (ex.: Maintenance, développement, etc.). Pour les logiciels en accès SaaS, veuillez cocher la case "Prestation de service"', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA003', 'Ressources humaines. Embauche d''une ou plusieurs personnes dans le projet (ex. : consultant, service de ménage, technicien, etc.)', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA004', 'Prestation de service. Délégation d’un service entier, notamment sur une infrastructure pouvant être gérée par un tiers (ex.: service de backup, cloud, SaaS, etc.)', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA005', 'Bâtiment. Tout élément se rapportant physiquement à un bâtiment (ex.: climatisation, etc.). Si le projet porte sur le périmètre d''accès physique et qu''il est lié à un logiciel, il faut également cocher la case "Achat, location ou développement de logiciel"', 'de', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q002LOGMAINTENANCE', '	Est-ce que de la maintenance à distance aura lieue ? ', 'de', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q002LOGMAINTENANCEA001', 'Oui', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q002LOGMAINTENANCEA002', 'Non', 'de', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q003LOGDEV', 'Est-ce qu''il s''agit d''un développement sur mesure ? ', 'de', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q003LOGDEVA001', 'Oui', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q003LOGDEVA002', 'Non', 'de', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q004RH1', '	Est-ce que le projet utilisera des ressources humaines tierces ? ', 'de', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q004RH1A001', 'Oui', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q004RH1A002', 'Non', 'de', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q005RH2', 'Pouvez-vous décrire l''interaction de cette(ces) personne(s) avec votre organismes : ', 'de', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q005RH2A001', 'Elles travailleront à distance', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q005RH2A002', 'Elles auront accès au bâtiment ', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q005RH2A003', 'Elles auront un accès logique au système d''information', 'de', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q006AUDIT', 'Des contrats avec les différents prestataires (informatique, comptabilité...)', 'de', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q006AUDITA001', 'Oui', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q006AUDITA002', 'Non', 'de', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q007REGL', 'Le nettoyage des locaux de travail se déroule', 'de', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q007REGLA001', 'Oui', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q007REGLA002', 'Non', 'de', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q008SERVICE', 'Est-ce que l''un des éléments suivants sera sous-traité : ', 'de', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q008SERVICEA001', 'Backup ', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q008SERVICEA002', 'Service de communication', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q008SERVICEA003', 'Cloud', 'de', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q009BACKUP', 'Les réseaux sans fil', 'de', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q009BACKUPA001', 'Le service comprend la gestion d''une infrastructure de sauvegarde physique propre ', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q009BACKUPA002', 'Les données sont stockées en partie ou en totalité sur une infrastructure cloud', 'de', 'A');

-- FR
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC001_RH', 'Un screening d''un collabateur externe est réalisé avant l''embauche. Lors du départ du collaborateur externe, une procédure assure que ce dernier rend tous les biens prêtés par l''organisation du client (matériel, laptop, clés, badges, smartphone, etc.)', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC002_CHARTER', 'Le prestataire adhère aux pratiques de sécurité de l''organisation du client et communique toute situation où cette adhésion n''est pas possible, pour contribuer à prévenir des lacunes ou des conflits en matière de sécurité qui pourraient nuire aux performances de sécurité. Il convient de formaliser les pratiques de sécurité dans une charte de bonne conduite en matière de sécurité des systèmes d''informations. ', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC003_TELEWORKING', 'Les modalités d''un travail ou d''une maintenance à distance sont formalisées. Le dispositif et les mesures de sécurité techniques et organisationnelles mises en place par le prestataire sont validés par le client.', 'fr', 'R');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC004_EQUIPMAINT', 'Les modalités et la fréquence de maintenance de l''infrastructure et les modalités d''intervention pour maintenance et dépannage sont gérés par des procédures établies.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC041_EQUIPREBUT', 'Lors d''une réutilisation ou mise au rebut de matériel, les données du client et les logiciels sous licence sont effacés ou leur support de stockage est détruit de façon irréversible et documentée.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC005_AUTHFCT', 'Lors d''une réutilisation ou mise au rebut de matériel, les données du client et les logiciels sous licence sont effacés ou leur support de stockage est détruit de façon irréversible et documentée.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC0051_IDENTIFY', 'Les utilisateurs ou processus accédant à un système d''information ou logiciel sous-traité sont identifiés.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC006_LOGICAL', 'L''authentification et l''autorisation pour l''accès de l''utilisateur ou du processus au système d''information ou logiciel sous-traité sont gérés suivant une procédure établie.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC007_SECPHY', 'L''accès physique du prestataire à un bâtiment, local ou une infrastructure est géré suivant une procédure établie. Les moyens d''accès remis au prestataires sont inventoriés et récupérés au terme de l''exécution du contrat.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC008_SOFTWMAINT', 'Les modalités et la fréquence de maintenance ou de mise à jour du logiciel ou du système d''exploitation sont gérés suivant une procédure établie.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC009_LOGDEV', 'Le contrat prend en compte les spécificités liées aux développements logiciels comme les licences.  Le contrat définit également les référentiels de bonnes pratiques (p.ex. OWASP) à suivre lors du développement.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC010_BACKUP', 'Lors de la sous-traitance d''un service de sauvegarde (backup), les éléments suivants sont gérés :
- les mécanismes de mise en redondance et de récupération des sauvegardes ;
- l''externalisation des infrastructures de sauvegarde ;
- le chiffrement de la sauvegarde et la gestion des clés de chiffrement ;
Les procédures de sauvegarde et de récupération sont testées périodiquement.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC011_INCIDENT', 'Le prestataire informe l''organisation du client en temps utile de tout incident technique ou violation de la sécurité susceptible d''avoir un impact sur les activités de l''organisation. Les obligation légales liées à  la notification de violations de la protection des données à caractère personnel doivent être considérées dans ce contexte. Il est recommandé de définir un point de contact unique pour la communication entre parties contractuelles.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC012_CONFORM', 'Le prestataire fournit des preuves d''institutions ou d''organisations de contrôle indépendantes que ses opérations et contrôles sont conformes aux exigences légales et contractuelles.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC013_ANTIVIRUS', 'Si la prestation de service comprend la mise en oeuvre de logiciels système ou applicatifs gérés par le prestataire, ces derniers sont protégés contre les codes malveillants par un moyen approprié et une procédure de mise à jour régulière de cette protection est établie.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC014_NETWORK', 'Les bonnes pratiques de conception de réseau, tel le cloisement en sous-réseaux, sont respectées.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC016_AUDIT', 'Le contrat prévoit le droit d''auditer les contrôles de sécurité périodiquement, ou lors de changements importants dans la relation de sous-traitance', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC017_CAPACITY', 'Les capacitiés techniques et financières du prestataire sont vérifiées en vue d''une bonne exécution du contrat', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC018_CASCADE', 'Le prestataire garantit, au sein de sa propre chaîne d''approvisionnement ou en cas d''une sous-traitance en cascade, le respect des exigences de sécurité exigées par le client', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC021_PORT', 'Le contrat définit les modalités pour la récupération des données. Ces données sont notamment récupérables dans un format commun (p.ex. texte, json, XML, etc.), ou défini en avance pour être réimporté dans un autre système.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC022_VULNRESP', 'Le prestataire fournit en temps utile un traitement approprié pour les vulnérabilités connues qui peuvent avoir un impact sur les activités du client.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC023_CHANGE', 'Le prestataire informe l''organisation du client en temps utile des changements dans son environnement qui peuvent avoir un impact sur les activités de l''organisation du client. En fonction de leur impact, le prestataire planifie ces changements de manière concertée avec le client.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC024_SLA', 'Le prestataire garantit les niveaux de service minimal définis dans le contrat. Le prestataire informe l''organisation du client de ses plans pour assurer les niveaux de service dans des conditions normales et lors d''événements perturbateurs, que ces événements surgissent dans les locaux ou sur les infrastructures de l''organisation du client ou du prestataire de service.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC025_NDA', 'Le prestataire et ses sous-traitants ou fournisseurs en cascade éventuels respectent la confidentialité des informations dont ils prennent connaissance lors de l’exécution du contrat. A cette fin, il convient de définir un accord de confidentialité et de non divulgation entre parties contractuelles. Cet accord engage les sociétés et fournisseurs prestataires ainsi que leurs employés respectifs individuellement. L’engagement peut dépasser la durée d’exécution du contrat si le niveau de confidentialité l’exige.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC026_EFFACEMENT', 'À la fin du contrat, les données du client sont effacées de façon irréversible et documentée. Les obligations légales liées à la protection des données à caractère personnel sont tout particulièrement considérées dans ce contexte.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC027_ACTIFS', 'Les actif nécessaires à l''exécution du contrat et les droits de propriété associés sont gérés durant les différentes étapes de l''exécution.', 'fr', 'R');

-- EN
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC001_RH', 'Un screening d''un collabateur externe est réalisé avant l''embauche. Lors du départ du collaborateur externe, une procédure assure que ce dernier rend tous les biens prêtés par l''organisation du client (matériel, laptop, clés, badges, smartphone, etc.)', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC002_CHARTER', 'Le prestataire adhère aux pratiques de sécurité de l''organisation du client et communique toute situation où cette adhésion n''est pas possible, pour contribuer à prévenir des lacunes ou des conflits en matière de sécurité qui pourraient nuire aux performances de sécurité. Il convient de formaliser les pratiques de sécurité dans une charte de bonne conduite en matière de sécurité des systèmes d''informations. ', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC003_TELEWORKING', 'Les modalités d''un travail ou d''une maintenance à distance sont formalisées. Le dispositif et les mesures de sécurité techniques et organisationnelles mises en place par le prestataire sont validés par le client.', 'en', 'R');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC004_EQUIPMAINT', 'Les modalités et la fréquence de maintenance de l''infrastructure et les modalités d''intervention pour maintenance et dépannage sont gérés par des procédures établies.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC041_EQUIPREBUT', 'Lors d''une réutilisation ou mise au rebut de matériel, les données du client et les logiciels sous licence sont effacés ou leur support de stockage est détruit de façon irréversible et documentée.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC005_AUTHFCT', 'Lors d''une réutilisation ou mise au rebut de matériel, les données du client et les logiciels sous licence sont effacés ou leur support de stockage est détruit de façon irréversible et documentée.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC0051_IDENTIFY', 'Les utilisateurs ou processus accédant à un système d''information ou logiciel sous-traité sont identifiés.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC006_LOGICAL', 'L''authentification et l''autorisation pour l''accès de l''utilisateur ou du processus au système d''information ou logiciel sous-traité sont gérés suivant une procédure établie.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC007_SECPHY', 'L''accès physique du prestataire à un bâtiment, local ou une infrastructure est géré suivant une procédure établie. Les moyens d''accès remis au prestataires sont inventoriés et récupérés au terme de l''exécution du contrat.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC008_SOFTWMAINT', 'Les modalités et la fréquence de maintenance ou de mise à jour du logiciel ou du système d''exploitation sont gérés suivant une procédure établie.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC009_LOGDEV', 'Le contrat prend en compte les spécificités liées aux développements logiciels comme les licences.  Le contrat définit également les référentiels de bonnes pratiques (p.ex. OWASP) à suivre lors du développement.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC010_BACKUP', 'Lors de la sous-traitance d''un service de sauvegarde (backup), les éléments suivants sont gérés :
- les mécanismes de mise en redondance et de récupération des sauvegardes ;
- l''externalisation des infrastructures de sauvegarde ;
- le chiffrement de la sauvegarde et la gestion des clés de chiffrement ;
Les procédures de sauvegarde et de récupération sont testées périodiquement.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC011_INCIDENT', 'Le prestataire informe l''organisation du client en temps utile de tout incident technique ou violation de la sécurité susceptible d''avoir un impact sur les activités de l''organisation. Les obligation légales liées à  la notification de violations de la protection des données à caractère personnel doivent être considérées dans ce contexte. Il est recommandé de définir un point de contact unique pour la communication entre parties contractuelles.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC012_CONFORM', 'Le prestataire fournit des preuves d''institutions ou d''organisations de contrôle indépendantes que ses opérations et contrôles sont conformes aux exigences légales et contractuelles.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC013_ANTIVIRUS', 'Si la prestation de service comprend la mise en oeuvre de logiciels système ou applicatifs gérés par le prestataire, ces derniers sont protégés contre les codes malveillants par un moyen approprié et une procédure de mise à jour régulière de cette protection est établie.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC014_NETWORK', 'Les bonnes pratiques de conception de réseau, tel le cloisement en sous-réseaux, sont respectées.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC016_AUDIT', 'Le contrat prévoit le droit d''auditer les contrôles de sécurité périodiquement, ou lors de changements importants dans la relation de sous-traitance', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC017_CAPACITY', 'Les capacitiés techniques et financières du prestataire sont vérifiées en vue d''une bonne exécution du contrat', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC018_CASCADE', 'Le prestataire garantit, au sein de sa propre chaîne d''approvisionnement ou en cas d''une sous-traitance en cascade, le respect des exigences de sécurité exigées par le client', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC021_PORT', 'Le contrat définit les modalités pour la récupération des données. Ces données sont notamment récupérables dans un format commun (p.ex. texte, json, XML, etc.), ou défini en avance pour être réimporté dans un autre système.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC022_VULNRESP', 'Le prestataire fournit en temps utile un traitement approprié pour les vulnérabilités connues qui peuvent avoir un impact sur les activités du client.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC023_CHANGE', 'Le prestataire informe l''organisation du client en temps utile des changements dans son environnement qui peuvent avoir un impact sur les activités de l''organisation du client. En fonction de leur impact, le prestataire planifie ces changements de manière concertée avec le client.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC024_SLA', 'Le prestataire garantit les niveaux de service minimal définis dans le contrat. Le prestataire informe l''organisation du client de ses plans pour assurer les niveaux de service dans des conditions normales et lors d''événements perturbateurs, que ces événements surgissent dans les locaux ou sur les infrastructures de l''organisation du client ou du prestataire de service.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC025_NDA', 'Le prestataire et ses sous-traitants ou fournisseurs en cascade éventuels respectent la confidentialité des informations dont ils prennent connaissance lors de l’exécution du contrat. A cette fin, il convient de définir un accord de confidentialité et de non divulgation entre parties contractuelles. Cet accord engage les sociétés et fournisseurs prestataires ainsi que leurs employés respectifs individuellement. L’engagement peut dépasser la durée d’exécution du contrat si le niveau de confidentialité l’exige.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC026_EFFACEMENT', 'À la fin du contrat, les données du client sont effacées de façon irréversible et documentée. Les obligations légales liées à la protection des données à caractère personnel sont tout particulièrement considérées dans ce contexte.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC027_ACTIFS', 'Les actif nécessaires à l''exécution du contrat et les droits de propriété associés sont gérés durant les différentes étapes de l''exécution.', 'en', 'R');

-- DE
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC001_RH', 'Un screening d''un collabateur externe est réalisé avant l''embauche. Lors du départ du collaborateur externe, une procédure assure que ce dernier rend tous les biens prêtés par l''organisation du client (matériel, laptop, clés, badges, smartphone, etc.)', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC002_CHARTER', 'Le prestataire adhère aux pratiques de sécurité de l''organisation du client et communique toute situation où cette adhésion n''est pas possible, pour contribuer à prévenir des lacunes ou des conflits en matière de sécurité qui pourraient nuire aux performances de sécurité. Il convient de formaliser les pratiques de sécurité dans une charte de bonne conduite en matière de sécurité des systèmes d''informations. ', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC003_TELEWORKING', 'Les modalités d''un travail ou d''une maintenance à distance sont formalisées. Le dispositif et les mesures de sécurité techniques et organisationnelles mises en place par le prestataire sont validés par le client.', 'de', 'R');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC004_EQUIPMAINT', 'Les modalités et la fréquence de maintenance de l''infrastructure et les modalités d''intervention pour maintenance et dépannage sont gérés par des procédures établies.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC041_EQUIPREBUT', 'Lors d''une réutilisation ou mise au rebut de matériel, les données du client et les logiciels sous licence sont effacés ou leur support de stockage est détruit de façon irréversible et documentée.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC005_AUTHFCT', 'Lors d''une réutilisation ou mise au rebut de matériel, les données du client et les logiciels sous licence sont effacés ou leur support de stockage est détruit de façon irréversible et documentée.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC0051_IDENTIFY', 'Les utilisateurs ou processus accédant à un système d''information ou logiciel sous-traité sont identifiés.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC006_LOGICAL', 'L''authentification et l''autorisation pour l''accès de l''utilisateur ou du processus au système d''information ou logiciel sous-traité sont gérés suivant une procédure établie.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC007_SECPHY', 'L''accès physique du prestataire à un bâtiment, local ou une infrastructure est géré suivant une procédure établie. Les moyens d''accès remis au prestataires sont inventoriés et récupérés au terme de l''exécution du contrat.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC008_SOFTWMAINT', 'Les modalités et la fréquence de maintenance ou de mise à jour du logiciel ou du système d''exploitation sont gérés suivant une procédure établie.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC009_LOGDEV', 'Le contrat prend en compte les spécificités liées aux développements logiciels comme les licences.  Le contrat définit également les référentiels de bonnes pratiques (p.ex. OWASP) à suivre lors du développement.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC010_BACKUP', 'Lors de la sous-traitance d''un service de sauvegarde (backup), les éléments suivants sont gérés :
- les mécanismes de mise en redondance et de récupération des sauvegardes ;
- l''externalisation des infrastructures de sauvegarde ;
- le chiffrement de la sauvegarde et la gestion des clés de chiffrement ;
Les procédures de sauvegarde et de récupération sont testées périodiquement.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC011_INCIDENT', 'Le prestataire informe l''organisation du client en temps utile de tout incident technique ou violation de la sécurité susceptible d''avoir un impact sur les activités de l''organisation. Les obligation légales liées à  la notification de violations de la protection des données à caractère personnel doivent être considérées dans ce contexte. Il est recommandé de définir un point de contact unique pour la communication entre parties contractuelles.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC012_CONFORM', 'Le prestataire fournit des preuves d''institutions ou d''organisations de contrôle indépendantes que ses opérations et contrôles sont conformes aux exigences légales et contractuelles.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC013_ANTIVIRUS', 'Si la prestation de service comprend la mise en oeuvre de logiciels système ou applicatifs gérés par le prestataire, ces derniers sont protégés contre les codes malveillants par un moyen approprié et une procédure de mise à jour régulière de cette protection est établie.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC014_NETWORK', 'Les bonnes pratiques de conception de réseau, tel le cloisement en sous-réseaux, sont respectées.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC016_AUDIT', 'Le contrat prévoit le droit d''auditer les contrôles de sécurité périodiquement, ou lors de changements importants dans la relation de sous-traitance', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC017_CAPACITY', 'Les capacitiés techniques et financières du prestataire sont vérifiées en vue d''une bonne exécution du contrat', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC018_CASCADE', 'Le prestataire garantit, au sein de sa propre chaîne d''approvisionnement ou en cas d''une sous-traitance en cascade, le respect des exigences de sécurité exigées par le client', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC021_PORT', 'Le contrat définit les modalités pour la récupération des données. Ces données sont notamment récupérables dans un format commun (p.ex. texte, json, XML, etc.), ou défini en avance pour être réimporté dans un autre système.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC022_VULNRESP', 'Le prestataire fournit en temps utile un traitement approprié pour les vulnérabilités connues qui peuvent avoir un impact sur les activités du client.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC023_CHANGE', 'Le prestataire informe l''organisation du client en temps utile des changements dans son environnement qui peuvent avoir un impact sur les activités de l''organisation du client. En fonction de leur impact, le prestataire planifie ces changements de manière concertée avec le client.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC024_SLA', 'Le prestataire garantit les niveaux de service minimal définis dans le contrat. Le prestataire informe l''organisation du client de ses plans pour assurer les niveaux de service dans des conditions normales et lors d''événements perturbateurs, que ces événements surgissent dans les locaux ou sur les infrastructures de l''organisation du client ou du prestataire de service.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC025_NDA', 'Le prestataire et ses sous-traitants ou fournisseurs en cascade éventuels respectent la confidentialité des informations dont ils prennent connaissance lors de l’exécution du contrat. A cette fin, il convient de définir un accord de confidentialité et de non divulgation entre parties contractuelles. Cet accord engage les sociétés et fournisseurs prestataires ainsi que leurs employés respectifs individuellement. L’engagement peut dépasser la durée d’exécution du contrat si le niveau de confidentialité l’exige.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC026_EFFACEMENT', 'À la fin du contrat, les données du client sont effacées de façon irréversible et documentée. Les obligations légales liées à la protection des données à caractère personnel sont tout particulièrement considérées dans ce contexte.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC027_ACTIFS', 'Les actif nécessaires à l''exécution du contrat et les droits de propriété associés sont gérés durant les différentes étapes de l''exécution.', 'de', 'R');

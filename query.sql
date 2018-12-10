DELETE FROM agent_installers;
INSERT INTO agent_installers (name, version, comment, os, file_token, created_at)
VALUES ('Installer1', '1.00.00', 'comment1', 'windows', 'token1', '2017-04-13T12:01Z');
INSERT INTO agent_installers (name, version, comment, os, file_token, created_at) VALUES
('Installer2', '2.00.00', 'comment2', 'windows', 'token2', '2017-04-13T12:02Z');
INSERT INTO agent_installers (name, version, comment, os, file_token, created_at)
VALUES ('Installer3', '3.00.00', 'comment3', 'windows', 'token3', '2017-04-13T12:03Z');
INSERT INTO agent_installers (name, version, comment, os, file_token, created_at)
VALUES ('Installer4', '4.00.00', 'comment4', 'windows', 'token4', '2017-04-13T12:04Z');

DELETE FROM ct_units;
INSERT INTO ct_units (id, name, machine_key, etp_version, rootkit_version, hiss_version, boot_time, reported_agent_version)
VALUES (1, '0123456789abcdef0123456789abcdef', '0123456789abcdef0123456789abcdef', '', '', '', '1970-01-01T01:00Z', '0.00.00');
INSERT INTO ct_units (id, name, machine_key, etp_version, rootkit_version, hiss_version, boot_time, reported_agent_version)
VALUES (2, '0123456789abcdef0123456789abcdex', '0123456789abcdef0123456789abcdex', '', '', '', '1970-01-01T01:00Z', '0.00.00');

DELETE FROM service_instances;
INSERT INTO service_instances (id, status, status_updated_at, decoy_id, template_id, template_json, parameters_json, created_at, created_by, name, comment, rule_modification_key) VALUES ('id',  'STARTED', '1970-01-01T01:00:00Z', 1, 'templateID',  'templateJson',  'parameters',  '1970-01-01T01:00:00Z', 'Ultron',  'name',  'comment', 1);
INSERT INTO service_instances (id, status, status_updated_at, decoy_id, template_id, template_json, parameters_json, created_at, created_by, name, comment, rule_modification_key) VALUES ('id2', 'PURGING', '1970-01-01T01:00:00Z', 1, 'templateID2', 'templateJson2', 'parameters2', '1970-01-01T01:00:00Z', 'Ultron2', 'name2', 'comment2', 0);
INSERT INTO service_instances (id, status, status_updated_at, decoy_id, template_id, template_json, parameters_json, created_at, created_by, name, comment, rule_modification_key) VALUES ('id3', 'STOPPED', '1970-01-10T01:00:00Z', 1, 'templateID3', 'templateJson3', 'parameters3', '1970-01-10T01:00:00Z', 'Ultron3', 'name3', 'comment3', 0);
INSERT INTO service_instances (id, status, status_updated_at, decoy_id, template_id, template_json, parameters_json, created_at, created_by, name, comment, rule_modification_key) VALUES ('id4', 'PURGED',  '1970-01-01T01:00:00Z', 1, 'templateID4', 'templateJson4', 'parameters4', '1970-01-01T01:00:00Z', 'Ultron4', 'name4', 'comment4', 1);
INSERT INTO sys_configurationprinterstype (Oid,Ord,Code,designation,token) VALUES ('e5e20cd0-d9d2-443d-9d3f-3478949db30f',60,60,'Exportação para PDF','REPORT_EXPORT_PDF');
UPDATE sys_configurationprinterstype SET UpdatedBy='0777be77-bd66-40e2-82a6-c7f42767e026', CreatedAt='2014-07-30 14:02:28', UpdatedAt='2014-07-30 14:02:28';

INSERT INTO sys_configurationprinters (Oid,Ord,Code,Designation,PrinterType,NetworkName) VALUES ('4be24552-4e08-4916-a964-65fdacb523ac',20,20,'Exportação para PDF','e5e20cd0-d9d2-443d-9d3f-3478949db30f',NULL);
UPDATE sys_configurationprinters SET UpdatedBy='0777be77-bd66-40e2-82a6-c7f42767e026', CreatedAt='2014-07-30 14:02:28', UpdatedAt='2014-07-30 14:02:28';

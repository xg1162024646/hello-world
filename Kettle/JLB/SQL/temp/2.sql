SELECT * FROM F_KMS_INVOICES_DETAIL;

CREATE TABLE F_KMS_INVOICES_DETAIL_BAK AS SELECT * FROM F_KMS_INVOICES_DETAIL;

SELECT * FROM F_KMS_INVOICES_DETAIL_BAK;

INSERT INTO F_KMS_INVOICES_DETAIL SELECT * FROM F_KMS_INVOICES_DETAIL_BAK WHERE ID=2;
INSERT INTO F_KMS_INVOICES_DETAIL(ID,ORG_CODE,ORG_NAME) VALUES (3,'11111','SDF');

SELECT * FROM F_KMS_INVOICES_DETAIL;

SELECT * FROM V$VERSION;


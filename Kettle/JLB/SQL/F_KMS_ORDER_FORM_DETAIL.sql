DECLARE V_NUM NUMBER;
BEGIN
  SELECT COUNT(1) INTO V_NUM
  FROM ALL_TABLES
  WHERE TABLE_NAME = 'F_KMS_ORDER_FORM_DETAIL';
  
  IF V_NUM = 1 THEN
    EXECUTE IMMEDIATE 'DROP TABLE F_KMS_ORDER_FORM_DETAIL';
  END IF;
END;
/
CREATE TABLE F_KMS_ORDER_FORM_DETAIL
(
  ID NUMBER PRIMARY KEY
, INVOICES_ID NUMBER
, KA_CODE VARCHAR2(100)
, KA_NAME VARCHAR2(200)
, INVOICES_TYPE VARCHAR2(20)
, ORDER_NUMBER VARCHAR2(100)
, CUSTOMER_CODE VARCHAR2(100)
, CUSTOMER_NAME VARCHAR2(200)
, VENDER_CODE VARCHAR2(100)
, VENDER_NAME VARCHAR2(200)
, RESPONSIBLE_PERSON VARCHAR2(100)
, ORDER_FORM_AMOUNT NUMBER
, ORDER_DATE VARCHAR2(100)
, ESTIMATE_ARRIVE_DATE VARCHAR2(100)
, VALID_DATE VARCHAR2(100)
, STORE_NAME VARCHAR2(100)
, SUPPLIER_CODE VARCHAR2(200)
, ORDER_PROPERTY VARCHAR2(100)
, IS_ONTIME VARCHAR2(100)
, ORDER_DEPARTMENT VARCHAR2(100)
, TO_STORE VARCHAR2(200)
, DEPT_NAME VARCHAR2(200)
, ARRIVE_FEEDBACK_MESSAGE VARCHAR2(2000)
, GOODS_IS_RIGHT VARCHAR2(100)
, FEEDBACK_ARRIVE_DATE VARCHAR2(100)
, SUPPLIER_NAME VARCHAR2(200)
, NOTE VARCHAR2(2000)
, ORDER_FORM_TYPE VARCHAR2(100)
, ARRIVE_AMOUNT_IN_TAX_FORM NUMBER
, RECORDER VARCHAR2(100)
, CHECKER VARCHAR2(100)
, ACCEPT_DATE VARCHAR2(100)
, BUYER_NAME VARCHAR2(100)
, ACCEPTOR VARCHAR2(100)
, INSERT_DATE TIMESTAMP DEFAULT SYSTIMESTAMP
, UPDATE_DATE TIMESTAMP DEFAULT SYSTIMESTAMP
) 

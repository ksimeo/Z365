DROP TABLE IF EXISTS CUSTOMER;

CREATE TABLE CUSTOMER (
  PHONE_NUMBER VARCHAR (13) NOT NULL
  , NAME VARCHAR (60)
  , SURNAME VARCHAR (40)
  , EMAIL VARCHAR (60)
  , REG_DATE DATE
  , VERSION INT NOT NULL DEFAULT 0
  , PRIMARY KEY (PHONE_NUMBER)
);

DROP TABLE IF EXISTS PRODUCT;

CREATE TABLE PRODUCT (
  ID INT NOT NULL AUTO_INCREMENT
  , NAME VARCHAR(60) NOT NULL
--   , MEASURE_UNITS ENUM('LITER', 'CUBIC_METER', 'GALLON', 'CANISTER', 'BARREL', 'PIECE')
--   , CURRENCY_TYPE ENUM('UAH', 'USD', 'EUR')
  , VERSION INT NOT NULL DEFAULT 0
--   , price FLOAT
  , PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS ORDERS;

CREATE TABLE ORDERS (
ID INT NOT NULL AUTO_INCREMENT
  , AMOUNT INT NOT NULL
  , PRODUCT_ID VARCHAR(13) NOT NULL
  , CUSTOMER_ID INT NOT NULL
  , CREATE_DATE DATE
  , VERSION INT NOT NULL DEFAULT 0
  , PRIMARY KEY (ID)
  , CONSTRAINT FK_ORDERS_1 FOREIGN KEY (CUSTOMER_ID)
      REFERENCES PRODUCT (ID)
  , CONSTRAINT FK_ORDERS_2 FOREIGN KEY (PRODUCT_ID)
      REFERENCES CUSTOMER (PHONE_NUMBER)
);

-- CREATE TABLE  orders_product_detail {
--   id INT NOT NOT NULL AUTO_INCREMENT
--   ,
-- }
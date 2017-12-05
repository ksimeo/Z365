  DROP TABLE IF EXISTS USER;

  CREATE TABLE USER (
    ID INT NOT NULL AUTO_INCREMENT
  , LOGIN VARCHAR(40) NOT NULL
  , NAME VARCHAR(40)
  , SURNAME VARCHAR(40)
  , PASSWORD VARCHAR(40) NOT NULL
  , ROLE ENUM('USER', 'ADMIN')
  , REG_DATE DATE NOT NULL
  , VERSION INT NOT NULL DEFAULT 0
  , UNIQUE UQ_USER_1 (LOGIN)
  , PRIMARY KEY (ID)
  );

DROP TABLE IF EXISTS CUSTOMER;

CREATE TABLE CUSTOMER (
  PHONE_NUMBER VARCHAR (13) NOT NULL
--   , ORDERS_ID INT
  , NAME VARCHAR (60)
  , SURNAME VARCHAR (40)
  , EMAIL VARCHAR (60)
  , REG_DATE DATE NOT NULL
  , VERSION INT NOT NULL DEFAULT 0
  , PRIMARY KEY (PHONE_NUMBER)
);

DROP TABLE IF EXISTS PRODUCT;

CREATE TABLE PRODUCT (
  ID INT NOT NULL AUTO_INCREMENT
  , ORDERS_ID INT
  , NAME VARCHAR(60) NOT NULL
  , MEASURE_UNITS ENUM('LITER', 'CUBIC_METER', 'GALLON', 'CANISTER', 'BARREL', 'PIECE')
  , CURRENCY_TYPE ENUM('UAH', 'USD', 'EUR', 'GBP', 'CHF', 'JPY', 'RUR')
  , PRICE FLOAT
  , COEFF FLOAT
  , IS_ACTUAL TINYINT
  , VERSION INT NOT NULL DEFAULT 0
  , UNIQUE UQ_PRODUCT_1 (NAME)
  , PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS ORDERS;

CREATE TABLE ORDERS (
  ID INT NOT NULL AUTO_INCREMENT
  , AMOUNT INT NOT NULL
  , PRODUCT_ID INT NOT NULL
  , CUSTOMER_ID VARCHAR(13) NOT NULL
  , CREATE_DATE TIMESTAMP
  , REVIEW_DATE TIMESTAMP
  , VERSION INT NOT NULL DEFAULT 0
  , PRIMARY KEY (ID)
  , CONSTRAINT FK_ORDERS_1 FOREIGN KEY (CUSTOMER_ID)
      REFERENCES CUSTOMER (PHONE_NUMBER)
  , CONSTRAINT FK_ORDERS_2 FOREIGN KEY (PRODUCT_ID)
      REFERENCES  PRODUCT (ID)
);

DROP TABLE IF EXISTS CULTURE;

CREATE TABLE CULTURE (
  ID INT NOT NULL AUTO_INCREMENT
  , NAME VARCHAR(60) NOT NULL
  , COEFFICIENT FLOAT NOT NULL
  , VERSION INT NOT NULL DEFAULT 0
  , PRIMARY KEY (ID)
  );

DROP TABLE IF EXISTS QUESTION;

CREATE TABLE QUESTION (
  ID INT NOT NULL AUTO_INCREMENT
  , NAME VARCHAR(60)
  , PHONE_NUMBER VARCHAR(13)
  , E_MAIL VARCHAR(50)
  , MESSAGE VARCHAR(1000)
  , VERSION INT NOT NULL DEFAULT 0
  , CUSTOMER_ID VARCHAR(13)
  , CREATE_DATE DATETIME
  , REVIEW_DATE DATETIME
  , PRIMARY KEY (ID)
  , CONSTRAINT FK_QUESTION_1 FOREIGN KEY (CUSTOMER_ID)
  REFERENCES CUSTOMER (PHONE_NUMBER)
);

CREATE TABLE IRRIGATION (
  ID INT NOT NULL AUTO_INCREMENT
  , NAME VARCHAR(60)
  , COEFFICIENT FLOAT NOT NULL
  , VERSION INT NOT NULL DEFAULT 0
  , PRIMARY KEY (ID)
);

-- CREATE TABLE  orders_product_detail {
--   id INT NOT NOT NULL AUTO_INCREMENT
--   ,
--  }
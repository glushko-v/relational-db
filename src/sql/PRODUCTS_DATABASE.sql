CREATE TABLE SUPPLIERS (
ID NUMBER,
CONSTRAINT SUPPLIER_ID PRIMARY KEY (ID),
COMPANY_NAME NVARCHAR2(50),
CONTACT_NAME NVARCHAR2(50),
CONTACT_TITLE NVARCHAR2(50),
ADRESS NVARCHAR2(50),
CITY NVARCHAR2(50),
REGION NVARCHAR2(50),
POSTAL_CODE NUMBER,
COUNTRY NVARCHAR2(50),
PHONE NUMBER(13),
FAX NUMBER(13),
HOMEPAGE NVARCHAR2(50)
);

CREATE TABLE CATEGORIES(
ID NUMBER,
CONSTRAINT CATEGORY_ID PRIMARY KEY (ID),
DESCRIPTION NVARCHAR2(140),
PICTURE BFILE
);

CREATE TABLE PRODUCTS (
ID NUMBER,
CONSTRAINT PRODUCT_ID PRIMARY KEY (ID),
PRODUCT_NAME NVARCHAR2(50),
SUPPLIER_ID NUMBER,
CONSTRAINT SUPPLIERS_FK FOREIGN KEY (SUPPLIER_ID) REFERENCES SUPPLIERS(ID),
CATEGORY_ID NUMBER,
CONSTRAINT CATEGORIES_FK FOREIGN KEY (CATEGORY_ID) REFERENCES CATEGORIES(ID),
QUANTITY_PER_UNIT NUMBER,
UNIT_PRICE NUMBER,
UNITS_IN_STOCK NUMBER,
UNITS_ON_ORDER NUMBER,
REORDER_LEVEL NUMBER,
DISCONTINUED TIMESTAMP
);

CREATE TABLE CUSTOMERS(
ID NUMBER,
CONSTRAINT CUSTOMER_ID PRIMARY KEY (ID),
COMPANY_NAME NVARCHAR2(50),
CONTACT_NAME NVARCHAR2(50),
CONTACT_TITLE NVARCHAR2(50),
ADDRESS NVARCHAR2(50),
CITY NVARCHAR2(50),
REGION NVARCHAR2(50),
POSTAL_CODE NUMBER,
COUNTRY NVARCHAR2(50),
PHONE NUMBER(13),
FAX NUMBER(13)
);

CREATE TABLE SHIPPERS(
ID NUMBER,
CONSTRAINT SHIPPER_ID PRIMARY KEY (ID),
COMPANY_NAME NVARCHAR2(50),
PHONE NUMBER(13)
);

CREATE TABLE EMPLOYEES (
ID NUMBER,
CONSTRAINT EMPLOYEE_ID PRIMARY KEY (ID),
LAST_NAME NVARCHAR2(50),
FIRST_NAME NVARCHAR2(50),
TITLE NVARCHAR2(50),
TITLE_OF_COURTESY NVARCHAR2(50),
BIRTH_DATE TIMESTAMP,
HIRE_DATE TIMESTAMP,
ADDRESS NVARCHAR2(50),
CITY NVARCHAR2(50),
REGION NVARCHAR2(50),
POSTAL_CODE NUMBER,
COUNTRY NVARCHAR2(50),
HOME_PHONE NUMBER(13),
EXTENSION NUMBER(5),
PHOTO BFILE,
NOTES CLOB,
REPORTS_TO NVARCHAR2(50)
);

CREATE TABLE ORDERS (
ID NUMBER,
CONSTRAINT ORDER_ID PRIMARY KEY(ID),
CUSTOMER_ID NUMBER,
EMPLOYEE_ID NUMBER,
CONSTRAINT CUSTOMERS_FK FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(ID),
CONSTRAINT EMPLOYEES_FK FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEES(ID),
ORDER_DATE TIMESTAMP,
REQUIRED_DATE TIMESTAMP,
SHIPPED_DATE TIMESTAMP,
SHIP_VIA nvarchar2(50),
FREIGHT NUMBER,
SHIP_NAME NVARCHAR2(50),
SHIP_ADDRESS NVARCHAR2(50),
SHIP_CITY NVARCHAR2(50),
SHIP_REGION NVARCHAR2(50),
SHIP_POSTAL_CODE NUMBER,
SHIP_COUNTRY NVARCHAR2(50)
);

CREATE TABLE ORDER_DETAILS(
ORDER_ID NUMBER,
PRODUCT_ID NUMBER,
UNIT_PRICE NUMBER,
QUANTITY NUMBER,
DISCOUNT NUMBER,
CONSTRAINT ORDERS_FK FOREIGN KEY (ORDER_ID) REFERENCES ORDERS(ID),
CONSTRAINT PRODUCTS_FK FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCTS(ID)
);

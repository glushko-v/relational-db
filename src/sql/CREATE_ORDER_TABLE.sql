CREATE TABLE ORDER1 (
ID NUMBER CHECK(ID <= 10000),
CONSTRAINT ORDER_PK PRIMARY KEY(ID),
USER_ID NUMBER UNIQUE,
ROOM_ID NUMBER UNIQUE,
DATE_FROM TIMESTAMP,
DATE_TO TIMESTAMP,
MONEY_PAID DECIMAL(38,2)
);
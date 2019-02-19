CREATE TABLE HOTEL(
ID NUMBER,
CONSTRAINT HOTEL_PK PRIMARY KEY (ID),
COUNTRY NVARCHAR2(50) DEFAULT 'N/A' CHECK (COUNTRY != 'ROMANIA' OR COUNTRY !='BELGIUM' OR COUNTRY != 'CHINA' OR COUNTRY != 'UKRAINE'),
CITY NVARCHAR2(50) CHECK (CITY IS NOT NULL),
STREET NVARCHAR2(50)

);
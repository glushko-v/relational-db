CREATE TABLE SALESMAN (
ID NUMBER PRIMARY KEY,
NAME NVARCHAR2(50) NOT NULL,
CITY NVARCHAR2(50) NOT NULL,
COMMISSION NUMBER(*,2) DEFAULT '0,1'
);

CREATE TABLE CUSTOMER (
CUSTOMER_ID NUMBER PRIMARY KEY,
CUSTNAME NVARCHAR2(50) NOT NULL,
CITY NVARCHAR2(50) NOT NULL,
SALESMAN_ID NUMBER,
CONSTRAINT SALESMAN_FK FOREIGN KEY (SALESMAN_ID) REFERENCES SALESMAN(ID)
);

SELECT SALESMAN.NAME, CUSTOMER.CUSTNAME
FROM SALESMAN
JOIN CUSTOMER ON SALESMAN.ID = CUSTOMER.SALESMAN_ID;


SELECT SALESMAN.NAME, CUSTOMER.CUSTNAME, SALESMAN.CITY
FROM SALESMAN
JOIN CUSTOMER ON SALESMAN.CITY = CUSTOMER.CITY;

CREATE TABLE DEAL (
CUSTOMER_ID NUMBER,
CONSTRAINT CUSTOMER_FK FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID),
AMOUNT NUMBER NOT NULL,
DEAL_DATE TIMESTAMP
);

select salesman.name, customer.custname
from salesman
join customer on salesman.id = customer.salesman_id;

select salesman.name, salesman.city, customer.custname, customer.city
from salesman
join customer on salesman.city = customer.city;

select salesman.name, salesman.city, customer.custname, customer.city from salesman, customer
where (salesman.id = customer.salesman_id and salesman.city = customer.city);

select customer.custname, deal.amount, salesman.name
from customer
join salesman on salesman.id = customer.salesman_id
join deal on deal.customer_id = customer.customer_id where deal.amount > 10000;


select customer.custname, extract (year from deal_date)
from customer
join deal on deal.customer_id = customer.customer_id
where deal.deal_date > to_date('2016-12-31 23:59:59', 'yyyy-mm-dd HH24:MI:SS') and
deal.deal_date < to_date ('2019-01-01 00:00:00', 'yyyy-mm-dd HH24:MI:SS');

select salesman.name, sum (deal.amount) from salesman
join customer on customer.salesman_id = salesman.id
join deal on deal.customer_id = customer.customer_id
where deal.deal_date > to_date('2017-08-01 00:00:00', 'yyyy-mm-dd HH24:MI:SS') and
deal.deal_date < to_date('2017-08-31 23:59:59', 'yyyy-mm-dd HH24:MI:SS')
group by salesman.name
order by sum (deal.amount) desc;
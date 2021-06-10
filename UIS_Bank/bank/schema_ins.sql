DELETE FROM certificates_of_deposit;
--
DELETE FROM InvestmentAccounts;
DELETE FROM CheckingAccounts;
DELETE FROM manages;
DELETE FROM transfers;
--
DELETE FROM accounts;
DELETE FROM employees;
DELETE FROM customers;
DELETE FROM matches;
DELETE FROM Euro;
DELETE FROM Stadiums

INSERT INTO public.customers(cpr_number, risk_type, password, name, address) VALUES (5000, TRUE, '$2b$12$KFkp1IEMGT4QrWwjPGhE3ejOv6Z3pYhx/S4qOoFbanR2sMiZqgeJO', 'UIS-DB3-C-Lasse', 'aud Auditorium A, bygning 1, 1. sal Universitetsparken 15 (Zoo)');
INSERT INTO public.customers(cpr_number, risk_type, password, name, address) VALUES (5001, TRUE, '$2b$12$KFkp1IEMGT4QrWwjPGhE3ejOv6Z3pYhx/S4qOoFbanR2sMiZqgeJO', 'UIS-PD3-C-Anders', 'øv* Kursussal 1, bygning 3, 1.sal Universitetsparken 15 (Zoo)');
INSERT INTO public.customers(cpr_number, risk_type, password, name, address) VALUES (5002, TRUE, '$2b$12$KFkp1IEMGT4QrWwjPGhE3ejOv6Z3pYhx/S4qOoFbanR2sMiZqgeJO', 'UIS-DB2-C-Ziming', 'øv 4032, Ole Maaløes Vej 5 (Biocenter)');
INSERT INTO public.customers(cpr_number, risk_type, password, name, address) VALUES (5003, TRUE, '$2b$12$KFkp1IEMGT4QrWwjPGhE3ejOv6Z3pYhx/S4qOoFbanR2sMiZqgeJO', 'UIS-PD2-C-Hubert', 'øv Auditorium Syd, Nørre Alle 51');
INSERT INTO public.customers(cpr_number, risk_type, password, name, address) VALUES (5004, TRUE, '$2b$12$KFkp1IEMGT4QrWwjPGhE3ejOv6Z3pYhx/S4qOoFbanR2sMiZqgeJO', 'UIS-DB1-C-Jan', 'øv A112, Universitetsparken 5, HCØ');
INSERT INTO public.customers(cpr_number, risk_type, password, name, address) VALUES (5005, TRUE, '$2b$12$KFkp1IEMGT4QrWwjPGhE3ejOv6Z3pYhx/S4qOoFbanR2sMiZqgeJO', 'UIS-PD1-C-Marco', 'Aud 07, Universitetsparken 5, HCØ');
INSERT INTO public.customers(cpr_number, risk_type, password, name, address) VALUES (5006, TRUE, '$2b$12$KFkp1IEMGT4QrWwjPGhE3ejOv6Z3pYhx/S4qOoFbanR2sMiZqgeJO', 'UIS-LE1-C-Marcos', 'AUD 02 in the HCØ building (HCØ, Universitetsparken 5)');
INSERT INTO public.customers(cpr_number, risk_type, password, name, address) VALUES (5007, TRUE, '$2b$12$KFkp1IEMGT4QrWwjPGhE3ejOv6Z3pYhx/S4qOoFbanR2sMiZqgeJO', 'UIS-LE2-C-Finn', 'AUD 02 in the HCØ building (HCØ, Universitetsparken 5)');

INSERT INTO public.Matches(Nr, Teams, time_, dates) VALUES 
(1,'Turkey - Italy', '21:00', '11/06'), (2, ' Wales    -   Switzerland', '15:00', '12/06'),
(13,'Turkey   -   Wales ', '18:00', '16/06'), (14,'Italy    -   Switzerland', '21:00', '16/06'), 
(25, 'Switzerland  - Turkey', '18:00', '20/06'), (26, 'Italy  -  Wales', '18:00', '20/06'), 
(3, 'Denmark    -   Finland', '18:00', '12/06'), (4, 'Belgium    -   Russia', '18:00', '12/06'),
(15, 'Finland    -   Russia', '15:00', '16/06'), (16, 'Denmark    -   Belgium', '18:00', '17/06'), 
(27, 'Russia     -   Denmark', '21:00', '21/06'), (28, 'Finland    -   Belgium', '21:00', '21/06'), 
(6, 'Austria      -   North Macedonia', '18:00', '13/06'), 
(5, 'Netherlands  -   Ukraine', '21:00', '13/06'), (18, 'Ukraine      -   North Macedonia', '15:00', '17/06'),
(17, 'Netherlands  -   Austria', '21:00', '17/06'), (29, 'North Macedonia  -   Netherlands', '18:00', '21/06'),
(30, 'Ukraine          -   Austria', '18:00', '21/06'), (7, 'England     -  Croatia ', '15:00', '13/06'),
(8, 'Scotland        -  Czech Republic', '15:00', '14/06'), (19, 'Croatia    -  Czech Republic', '18:00', '18/06'),
(20, 'England     -  Scotland ', '21:00', '18/06'), (31, 'Croatia         -  Scotland', '21:00', '22/06'),
(32, 'Czech Republic  -  England', '21:00', '22/06'), (10, 'Poland   -  Slovakia', '18:00', '14/06'),
(9, 'Spain     -  Sweden', '21:00', '14/06'), (21, 'Sweden          -  Slovakia', '15:00', '18/06'),
(22, 'Spain           -  Poland', '21:00', '19/06'), (33, 'Slovakia    -  Spain', '18:00', '23/06'),
(34, 'Sweden      -  Poland', '18:00', '23/06'), (11, 'Hungary    -  Portugal', '18:00', '15/06'),
(12, 'France          -  Germany ', '21:00', '15/06'), (23, 'Hungary         -  France', '15:00', '19/06'),
(24, 'Portugal        -  Germany', '18:00', '19/06'), (35, 'Portugal        -  France', '21:00', '23/06'),
(36, 'Germany         -  Hungary', '21:00', '23/06')
;

INSERT INTO public.Euro(start_date, end_date, year, host) VALUES ('11/06', '11/07', 2021, 'Europe'), ('11/06', '11/07', 2016, 'France')
, ('11/06', '11/07', 2012, 'Poland-Ukraine'), ('11/06', '11/07', 2008, 'Austria-Switzerland'), ('11/06', '11/07', 2004, 'Portugal'), ('11/06', '11/07', 2000, 'Belgium-Nederlands');

INSERT INTO public.Stadiums(Stadium_Name, Cities) VALUES('Parken Stadium','Copenhagen'),
('Krestovsky Stadium','Saint Petersburg'),('Arena Națională', 'Bucharest'),('Johan Cruyff Arena', 'Amsterdam'),
('Wembley Stadium', 'London'),('Hampden Park', 'Glasgow'),('La Cartuja', 'Seville'),('Puskás Aréna', 'Budapest'),
('Allianz Arena', 'Munich');


INSERT INTO public.Employees(id, name, password)
VALUES (6000, 'UIS-DB3-E-Lasse',  '$2b$12$KFkp1IEMGT4QrWwjPGhE3ejOv6Z3pYhx')
, (6001, 'UIS-PD3-E-Anders',  '$2b$12$KFkp1IEMGT4QrWwjPGhE3ejOv6Z3pYhx/S4qOoFbanR2sMiZqgeJO')
, (6002, 'UIS-DB2-E-Ziming',  '$2b$12$KFkp1IEMGT4QrWwjPGhE3ejOv6Z3pYhx/S4qOoFbanR2sMiZqgeJO')
, (6003, 'UIS-PD2-E-Hubert',  '$2b$12$KFkp1IEMGT4QrWwjPGhE3ejOv6Z3pYhx/S4qOoFbanR2sMiZqgeJO')
, (6004, 'UIS-DB1-E-Jan'   ,  '$2b$12$KFkp1IEMGT4QrWwjPGhE3ejOv6Z3pYhx/S4qOoFbanR2sMiZqgeJO')
, (6005, 'UIS-PD1-E-Marco' ,  '$2b$12$KFkp1IEMGT4QrWwjPGhE3ejOv6Z3pYhx/S4qOoFbanR2sMiZqgeJO')
, (6006, 'UIS-LE1-E-Marcos',  '$2b$12$KFkp1IEMGT4QrWwjPGhE3ejOv6Z3pYhx/S4qOoFbanR2sMiZqgeJO')
, (6007, 'UIS-LE2-E-Finn' ,  '$2b$12$KFkp1IEMGT4QrWwjPGhE3ejOv6Z3pYhx/S4qOoFbanR2sMiZqgeJO')
;

INSERT INTO public.accounts(account_number, created_date, cpr_number) VALUES (8000, '2018-06-01',5000);
INSERT INTO public.accounts(account_number, created_date, cpr_number) VALUES (8001, '2018-07-01',5000);
INSERT INTO public.accounts(account_number, created_date, cpr_number) VALUES (8002, '2018-08-01',5001);
INSERT INTO public.accounts(account_number, created_date, cpr_number) VALUES (8003, '2018-09-01',5001);
INSERT INTO public.accounts(account_number, created_date, cpr_number) VALUES (8004, '2018-10-01',5002);
INSERT INTO public.accounts(account_number, created_date, cpr_number) VALUES (8005, '2018-11-01',5002);
INSERT INTO public.accounts(account_number, created_date, cpr_number) VALUES (8006, '2018-12-01',5003);
INSERT INTO public.accounts(account_number, created_date, cpr_number) VALUES (8007, '2018-02-01',5003);
INSERT INTO public.accounts(account_number, created_date, cpr_number) VALUES (8008, '2018-03-01',5004);
INSERT INTO public.accounts(account_number, created_date, cpr_number) VALUES (8009, '2018-04-01',5004);
INSERT INTO public.accounts(account_number, created_date, cpr_number) VALUES (8010, '2018-05-01',5005);
INSERT INTO public.accounts(account_number, created_date, cpr_number) VALUES (8011, '2018-06-01',5005);
INSERT INTO public.accounts(account_number, created_date, cpr_number) VALUES (8012, '2018-07-01',5006);
INSERT INTO public.accounts(account_number, created_date, cpr_number) VALUES (8013, '2018-08-01',5006);
INSERT INTO public.accounts(account_number, created_date, cpr_number) VALUES (8014, '2018-09-01',5007);
INSERT INTO public.accounts(account_number, created_date, cpr_number) VALUES (8015, '2018-10-01',5007);

INSERT INTO public.manages(emp_cpr_number, account_number) VALUES (6000, 8000);
INSERT INTO public.manages(emp_cpr_number, account_number) VALUES (6000, 8001);
INSERT INTO public.manages(emp_cpr_number, account_number) VALUES (6001, 8002);
INSERT INTO public.manages(emp_cpr_number, account_number) VALUES (6001, 8003);
INSERT INTO public.manages(emp_cpr_number, account_number) VALUES (6002, 8004);
INSERT INTO public.manages(emp_cpr_number, account_number) VALUES (6002, 8005);
INSERT INTO public.manages(emp_cpr_number, account_number) VALUES (6003, 8006);
INSERT INTO public.manages(emp_cpr_number, account_number) VALUES (6003, 8007);
INSERT INTO public.manages(emp_cpr_number, account_number) VALUES (6004, 8008);
INSERT INTO public.manages(emp_cpr_number, account_number) VALUES (6004, 8009);
INSERT INTO public.manages(emp_cpr_number, account_number) VALUES (6005, 8010);
INSERT INTO public.manages(emp_cpr_number, account_number) VALUES (6005, 8011);
INSERT INTO public.manages(emp_cpr_number, account_number) VALUES (6006, 8012);
INSERT INTO public.manages(emp_cpr_number, account_number) VALUES (6006, 8013);
INSERT INTO public.manages(emp_cpr_number, account_number) VALUES (6007, 8014);
INSERT INTO public.manages(emp_cpr_number, account_number) VALUES (6007, 8015);



INSERT INTO checkingaccounts(account_number) 
VALUES (8000),(8001),(8002),(8003),(8004),(8005),(8006),(8007);

INSERT INTO InvestmentAccounts(account_number) 
VALUES (8008),(8009),(8010),(8011),(8012),(8013),(8014),(8015);

-- contraints missing on transfers

INSERT INTO transfers (transfer_date, amount, from_account, to_account) VALUES (now(), 10, 8000, 8001);
INSERT INTO transfers (transfer_date, amount, from_account, to_account) VALUES (now(), 20, 8009, 8008);
INSERT INTO transfers (transfer_date, amount, from_account, to_account) VALUES (now(), 40, 8005, 8006);
INSERT INTO transfers (transfer_date, amount, from_account, to_account) VALUES (now(), 80, 8003, 8011);
INSERT INTO transfers (transfer_date, amount, from_account, to_account) VALUES (now(), 160, 8002, 8003);
INSERT INTO transfers (transfer_date, amount, from_account, to_account) VALUES (now(), 320, 8004, 8012);

-- contraints missing on withdraws

INSERT INTO withdraws ( amount, withdraw_date) VALUES (20480, now())
, (10240, now()), (5120, now()), (2560, now()), (1280, now()), (640, now());

-- contraints missing on deposits
INSERT INTO deposits ( amount, deposit_date) VALUES (40960, now())
, (81920, now()), (163840, now()), (327696, now()), (655392, now()), (1310784, now());





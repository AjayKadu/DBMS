W3_87373_Ajay>select * from P;
+------+----------+-----------+---------+------------+
| Pid  | Pname    | Color     | Weight  | City       |
+------+----------+-----------+---------+------------+
| P1   | Tank     | White     | 500kg   | Delhi      |
| P2   | Pipe     | Off-White | 1kg     | Delhi      |
| P3   | Cement   | Greay     | 50kg    | Ahemdabad  |
| P4   | Machine  | Orange    | 10000kg | Ahemdabad  |
| P5   | Steel    | Silver    | 790kg   | Jamshedpur |
| P6   | Chemical | Green     | 5kg     | Hydrabad   |
+------+----------+-----------+---------+------------+
6 rows in set (0.00 sec)

W3_87373_Ajay>Create table J(Jid varchar(10), Jname varchar(20), City varchar(20));
Query OK, 0 rows affected (0.04 sec)

W3_87373_Ajay>insert into J(Jid, Jname, City) values('J1','Samrudhi Road', 'Mumbai'),
    -> ('J2','Atal-Setu', 'Delhi'),
    -> ('J3','Solar-Park', 'Surat'),
    -> ('J4','Tower', 'Hydrabad'),
    -> ('J5','IT-Park', 'Pune');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

W3_87373_Ajay>select * from J;
+------+---------------+----------+
| Jid  | Jname         | City     |
+------+---------------+----------+
| J1   | Samrudhi Road | Mumbai   |
| J2   | Atal-Setu     | Delhi    |
| J3   | Solar-Park    | Surat    |
| J4   | Tower         | Hydrabad |
| J5   | IT-Park       | Pune     |
+------+---------------+----------+
5 rows in set (0.00 sec)

W3_87373_Ajay>create table SPJ(Sid varchar(10), Pid varchar(10), Jid varchar(10), Qty int(20));
Query OK, 0 rows affected, 1 warning (0.05 sec)

W3_87373_Ajay>select * from S;
+------+---------+--------+------------+
| Sid  | Sname   | Status | City       |
+------+---------+--------+------------+
| S1   | Finolex |     10 | Delhi      |
| S2   | Ambuja  |     20 | Surat      |
| S3   | Bosch   |     30 | Pune       |
| S4   | Tata    |     40 | Jamshedpur |
+------+---------+--------+------------+
4 rows in set (0.00 sec)

W3_87373_Ajay>insert into spj(sid, pid, jid, qty) values
    -> ('S1','P1','J1',10),
    -> ('S2','P2','J2',7),
    -> ('S3','P3','J3',15),
    -> ('S4','P4','J4',3),
    -> ('S5','P5','J5',24),
    -> ('S6','P6','J6',12);
Query OK, 6 rows affected (0.01 sec)
Records: 6  Duplicates: 0  Warnings: 0

W3_87373_Ajay>select * from spj;
+------+------+------+------+
| Sid  | Pid  | Jid  | Qty  |
+------+------+------+------+
| S1   | P1   | J1   |   10 |
| S2   | P2   | J2   |    7 |
| S3   | P3   | J3   |   15 |
| S4   | P4   | J4   |    3 |
| S5   | P5   | J5   |   24 |
| S6   | P6   | J6   |   12 |
+------+------+------+------+
6 rows in set (0.00 sec)

W3_87373_Ajay>select sid, sname from s;
+------+---------+
| sid  | sname   |
+------+---------+
| S1   | Finolex |
| S2   | Ambuja  |
| S3   | Bosch   |
| S4   | Tata    |
+------+---------+
4 rows in set (0.00 sec)

W3_87373_Ajay>select pname, color from p where city='surat';
Empty set (0.00 sec)

W3_87373_Ajay>select pname, color from p where city='Ahemdabad';
+---------+--------+
| pname   | color  |
+---------+--------+
| Cement  | Greay  |
| Machine | Orange |
+---------+--------+
2 rows in set (0.00 sec)

W3_87373_Ajay>select * from S where city = 'delhi';
+------+---------+--------+-------+
| Sid  | Sname   | Status | City  |
+------+---------+--------+-------+
| S1   | Finolex |     10 | Delhi |
+------+---------+--------+-------+
1 row in set (0.00 sec)

W3_87373_Ajay>select * from p where city = 'delhi' or city = 'Ahemdabad';
+------+---------+-----------+---------+-----------+
| Pid  | Pname   | Color     | Weight  | City      |
+------+---------+-----------+---------+-----------+
| P1   | Tank    | White     | 500kg   | Delhi     |
| P2   | Pipe    | Off-White | 1kg     | Delhi     |
| P3   | Cement  | Greay     | 50kg    | Ahemdabad |
| P4   | Machine | Orange    | 10000kg | Ahemdabad |
+------+---------+-----------+---------+-----------+
4 rows in set (0.00 sec)

W3_87373_Ajay>
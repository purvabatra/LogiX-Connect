mysql> select*from department_club;
+------------+----------------------+-------------------+--------------------+--------------+
| Department | Faculty_Advisor      | Club_name         | Club_email         | Club_POC     |
+------------+----------------------+-------------------+--------------------+--------------+
| Chemistry  | Mr.Santosh Singh     | Chemistry Society | chemsoc@snu.edu.in | Tanuj Jain   |
| Physics    | Mr. Subhra Sen Gupta | Physoc            | physoc@snu.edu.in  | Arpana Dixit |
+------------+----------------------+-------------------+--------------------+--------------+
2 rows in set (0.00 sec)

mysql> insert into department_club values("Computer science","Mr. Rajeev Kumar","ACM","acm@snu.edu.in","Arham Jain");
Query OK, 1 row affected (0.01 sec)

mysql> insert into department_club values("Computer science","Mrs. Sonia Khetarpaul","ACM-W","acmw@snu.edu.in","Purva Batra");
ERROR 1062 (23000): Duplicate entry 'Computer science' for key 'department_club.PRIMARY'
mysql> insert into department_club values("Computer science w","Mrs. Sonia Khetarpaul","ACM-W","acmw@snu.edu.in","Purva
Batra");
Query OK, 1 row affected (0.01 sec)

mysql> select*from department_club;
+--------------------+-----------------------+-------------------+--------------------+--------------+
| Department         | Faculty_Advisor       | Club_name         | Club_email         | Club_POC     |
+--------------------+-----------------------+-------------------+--------------------+--------------+
| Chemistry          | Mr.Santosh Singh      | Chemistry Society | chemsoc@snu.edu.in | Tanuj Jain   |
| Computer science   | Mr. Rajeev Kumar      | ACM               | acm@snu.edu.in     | Arham Jain   |
| Compu   | Purva Batra  s. Sonia Khetarpaul | ACM-W             | acmw@snu.edu.in    | Purva Batra  |
| Physics            | Mr. Subhra Sen Gupta  | Physoc            | physoc@snu.edu.in  | Arpana Dixit |
+--------------------+-----------------------+-------------------+--------------------+--------------+
4 rows in set (0.00 sec)

mysql> insert into department_club values("Mathematics","Mr. Ajit Singh","Mathsoc","mathsoc@snu.edu.in","Khushi Bahuguna
");
Query Oinsert into department_club values("Mathematics","Mr. Ajit Singh","Mathsoc","mathsoc@snu.edu.in","Khushi Bahuguna");
ERROR 1062 (23000): Duplicate entry 'Mathematics' for key 'department_club.PRIMARY'
mysql> create table club(club_name varchar(20) primary key, club_email varchar(30), Faculty_advisor varchar(30), Poc_name varchar(20),Club_Type varchar(10));
Query OK, 0 rows affected (0.04 sec)

mysql> insert into club values("Imprints","imprints@snu.edu.in","Mr. Anirbaan Ghosh","Vasu Madan","Cultural");
Query OK, 1 row affected (0.01 sec)

mysql> insert into club values("INferno","inferno@snu.edu.in","Mrs. Ankita","Shreyah Swaminathan","Cultural");
Query OK, 1 row affected (0.01 sec)

mysql> insert into club values("E-cell","ecell@snu.edu.in","Mr. Ankit Mishra","Prabhav Pandey","Technical");
Query OK, 1 row affected (0.00 sec)

mysql> insert into club values("GDSC","dsc@snu.edu.in","Mr. Sunil chauhan","Chaitanya Tandon","Technical");
Query OK, 1 row affected (0.01 sec)

mysql> insert into club values("Genesis","genesis@snu.edu.in","Mr. Prasun Roy","Sonakshi Singh","Technical");
Query OK, 1 row affected (0.01 sec)

mysql> insert into club values("Sigree","culturalclub@snu.edu.in","Mrs. Anita Ganjoo","Jenis Jain","Cultural");
Query OK, 1 row affected (0.01 sec)

mysql> select
    -> ->;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '->' at line 2
mysql> select*from club;
+-----------+-------------------------+--------------------+---------------------+-----------+
| club_name | club_email              | Faculty_advisor    | Poc_name            | Club_Type |
+-----------+-------------------------+--------------------+---------------------+-----------+
| E-cell    | ecell@snu.edu.in        | Mr. Ankit Mishra   | Prabhav Pandey      | Technical |
| GDSC      | dsc@snu.edu.in          | Mr. Sunil chauhan  | Chaitanya Tandon    | Technical |
| Genesis   | genesis@snu.edu.in      | Mr. Prasun Roy     | Sonakshi Singh      | Technical |
| Imprints  | imprints@snu.edu.in     | Mr. Anirbaan Ghosh | Vasu Madan          | Cultural  |
| INferno   | inferno@snu.edu.in      | Mrs. Ankita        | Shreyah Swaminathan | Cultural  |
| Sigree    | culturalclub@snu.edu.in | Mrs. Anita Ganjoo  | Jenis Jain          | Cultural  |
+-----------+-------------------------+--------------------+---------------------+-----------+
6 rows in set (0.00 sec)

mysql> create table office_bearers(Net_id varchar(5), Name varchar(30), position varchar(20), Major varchar(15), year int, Phone_no int);
Query OK, 0 rows affected (0.03 sec)

mysql> insert into office_bearers values("ak901","Aneesh Kandrakota","President","Mechanical",2025,998876675);
Query OK, 1 row affected (0.01 sec)

mysql> insert into office_bearers values("ph375","Harsha Pulle","Vice-President","Mechanical",2025,5637283935);
ERROR 1264 (22003): Out of range value for column 'Phone_no' at row 1
mysql> insert into office_bearers values("ph375","Harsha Pulle","Vice-President","Mechanical",2025,563728393);
Query OK, 1 row affected (0.01 sec)

mysql> insert into office_bearers values("da570","Devansh Asthana","Cultural Secretary","BMS",2025,887655667);
Query OK, 1 row affected (0.01 sec)

mysql> insert into office_bearers values("kb453","Karan Bellak","Sports Secretary","BMS",2025,897766677);
Query OK, 1 row affected (0.00 sec)

mysql> select*from office_bearers;
+--------+-------------------+--------------------+------------+------+-----------+
| Net_id | Name              | position           | Major      | year | Phone_no  |
+--------+-------------------+--------------------+------------+------+-----------+
| ak901  | Aneesh Kandrakota | President          | Mechanical | 2025 | 998876675 |
| ph375  | Harsha Pulle      | Vice-President     | Mechanical | 2025 | 563728393 |
| da570  | Devansh Asthana   | Cultural Secretary | BMS        | 2025 | 887655667 |
| kb453  | Karan Bellak      | Sports Secretary   | BMS        | 2025 | 897766677 |
+--------+-------------------+--------------------+------------+------+-----------+
4 rows in set (0.00 sec)

mysql> create table executive_cabinet(Net_id varchar(5), Name varchar(30), position varchar(20), Major varchar(15), year int, Phone_no int);
Query OK, 0 rows affected (0.03 sec)

mysql> insert into executive_cabinet values("ar765","Adhithyanarayan Ramkumar","Secretary of Senate","Mechanical",2025,924567677);
Query OK, 1 row affected (0.01 sec)

mysql> insert into executive_cabinet values("aj919","Arham Jain","Secretary of IT","Computer Science",2026,987656789);
ERROR 1406 (22001): Data too long for column 'Major' at row 1
mysql> insert into executive_cabinet values("aj919","Arham Jain","Secretary of IT","CSE",2026,987656789);
Query OK, 1 row affected (0.01 sec)

mysql> insert into executive_cabinet values("aj919","Arham Jain","Secretary of Food Affairs","Biotech",2026,879656789);
ERROR 1406 (22001): Data too long for column 'position' at row 1
mysql> drop table executive_cabinet;
Query OK, 0 rows affected (0.02 sec)

mysql> create table executive_cabinet(Net_id varchar(5), Name varchar(30), position varchar(40), Major varchar(30), year int, Phone_no int);
Query OK, 0 rows affected (0.02 sec)

mysql> insert into executive_cabinet values("ar765","Adhithyanarayan Ramkumar","Secretary of Senate","Mechanical",2025,924567677);
Query OK, 1 row affected (0.01 sec)

mysql> insert into executive_cabinet values("aj919","Arham Jain","Secretary of IT","Computer Science",2026,987656789);
Query OK, 1 row affected (0.01 sec)

mysql> insert into executive_cabinet values("kl933","Kharishni Lakshman","Secretary of Food Affairs","Biotechnology",2026,895656789);
Query OK, 1 row affected (0.01 sec)

mysql> insert into executive_cabinet values("mv901","Manasvi Vedanta","Secretary of Technical Affairs","Computer Science",2026,998656789);
Query OK, 1 row affected (0.01 sec)

mysql> insert into executive_cabinet values("ss585","Saksham Shukla","Secretary of External Affairs","Electrical and Computer",2026,998656789);
Query OK, 1 row affected (0.01 sec)

mysql> insert into executive_cabinet values("vr767","Venkat Ravi","Secretary of Press","Computer Science",2026,998656789);
Query OK, 1 row affected (0.01 sec)

mysql> insert into executive_cabinet values("ag105","Arumugan G","Secretary of Treasury","Biotechnology",2026,875756789);
Query OK, 1 row affected (0.01 sec)

mysql> insert into executive_cabinet values("as234","Ashwin SRV","Secretary of Treasury","Electrical and Computer",2026,965456789);
Query OK, 1 row affected (0.01 sec)

mysql> insert into executive_cabinet values("mm153","MGM Manjunath","Secretary of Academic Affairs","Electrical and Computer",2026,788956789);
Query OK, 1 row affected (0.01 sec)

mysql> insert into executive_cabinet values("nc651","Navika Chadha","Secretary of Academic Affairs","BMS",2026,986956789);
Query OK, 1 row affected (0.00 sec)

mysql> insert into executive_cabinet values("sr298","SR Suryaa","Secretary of Campus Affairs","BMS",2026,786956789);
Query OK, 1 row affected (0.01 sec)

mysql> insert into executive_cabinet values("gr627","Pavan Karthikeya Reddy","Secretary of Campus Affairs","Electrical and Computer",2026,689956789);
Query OK, 1 row affected (0.01 sec)

mysql> select*from executive_cabinet;
+--------+--------------------------+--------------------------------+-------------------------+------+-----------+
| Net_id | Name                     | position                       | Major                   | year | Phone_no  |
+--------+--------------------------+--------------------------------+-------------------------+------+-----------+
| ar765  | Adhithyanarayan Ramkumar | Secretary of Senate            | Mechanical              | 2025 | 924567677 |
| aj919  | Arham Jain               | Secretary of IT                | Computer Science        | 2026 | 987656789 |
| kl933  | Kharishni Lakshman       | Secretary of Food Affairs      | Biotechnology           | 2026 | 895656789 |
| mv901  | Manasvi Vedanta          | Secretary of Technical Affairs | Computer Science        | 2026 | 998656789 |
| ss585  | Saksham Shukla           | Secretary of External Affairs  | Electrical and Computer | 2026 | 998656789 |
| vr767  | Venkat Ravi              | Secretary of Press             | Computer Science        | 2026 | 998656789 |
| ag105  | Arumugan G               | Secretary of Treasury          | Biotechnology           | 2026 | 875756789 |
| as234  | Ashwin SRV               | Secretary of Treasury          | Electrical and Computer | 2026 | 965456789 |
| mm153  | MGM Manjunath            | Secretary of Academic Affairs  | Electrical and Computer | 2026 | 788956789 |
| nc651  | Navika Chadha            | Secretary of Academic Affairs  | BMS                     | 2026 | 986956789 |
| sr298  | SR Suryaa                | Secretary of Campus Affairs    | BMS                     | 2026 | 786956789 |
| gr627  | Pavan Karthikeya Reddy   | Secretary of Campus Affairs    | Electrical and Computer | 2026 | 689956789 |
+--------+--------------------------+--------------------------------+-------------------------+------+-----------+
12 rows in set (0.00 sec)

mysql> alter executive_cabinet add Email_id varchar(60);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'executive_cabinet add Email_id varchar(60)' at line 1
mysql> alter table executive_cabinet add Email_id varchar(60);
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table office_bearers add Email_id varchar(60);
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> update office_bearers set email_id="po.sc@snu.edu.in" where position="President";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update office_bearers set email_id="vp.sc@snu.edu.in" where position="Vice-President";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update office_bearers set email_id="cs.sc@snu.edu.in" where position="Cultural President";
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> update office_bearers set email_id="ss.sc@snu.edu.in" where position="Sports President";
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> update Executive_cabinet set email_id="ass.sc@snu.edu.in" where position="Secretary of Academic Affairs";
Query OK, 2 rows affected (0.01 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> update Executive_cabinet set email_id="ca.sc@snu.edu.in" where position="Secretary of Campus Affairs";
Query OK, 2 rows affected (0.01 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> update Executive_cabinet set email_id="sofa.sc@snu.edu.in" where position="Secretary of Food Affairs";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update Executive_cabinet set email_id="its.sc@snu.edu.in" where position="Secretary of IT";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update Executive_cabinet set email_id="ts.sc@snu.edu.in" where position="Secretary of Technical Affairs";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update Executive_cabinet set email_id="ts.sc@snu.edu.in" where position="Secretary of Treasury";
Query OK, 2 rows affected (0.01 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> update Executive_cabinet set email_id="tec.sc@snu.edu.in" where position="Secretary of Technical Affairs";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update Executive_cabinet set email_id="er.sc@snu.edu.in" where position="Secretary of External Affairs";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update Executive_cabinet set email_id="ps.sc@snu.edu.in" where position="Secretary of Press";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select*from executive_cabinet;
+--------+--------------------------+--------------------------------+-------------------------+------+-----------+--------------------+
| Net_id | Name                     | position                       | Major                   | year | Phone_no  | Email_id           |
+--------+--------------------------+--------------------------------+-------------------------+------+-----------+--------------------+
| ar765  | Adhithyanarayan Ramkumar | Secretary of Senate            | Mechanical              | 2025 | 924567677 | NULL               |
| aj919  | Arham Jain               | Secretary of IT                | Computer Science        | 2026 | 987656789 | its.sc@snu.edu.in  |
| kl933  | Kharishni Lakshman       | Secretary of Food Affairs      | Biotechnology           | 2026 | 895656789 | sofa.sc@snu.edu.in |
| mv901  | Manasvi Vedanta          | Secretary of Technical Affairs | Computer Science        | 2026 | 998656789 | tec.sc@snu.edu.in  |
| ss585  | Saksham Shukla           | Secretary of External Affairs  | Electrical and Computer | 2026 | 998656789 | er.sc@snu.edu.in   |
| vr767  | Venkat Ravi              | Secretary of Press             | Computer Science        | 2026 | 998656789 | ps.sc@snu.edu.in   |
| ag105  | Arumugan G               | Secretary of Treasury          | Biotechnology           | 2026 | 875756789 | ts.sc@snu.edu.in   |
| as234  | Ashwin SRV               | Secretary of Treasury          | Electrical and Computer | 2026 | 965456789 | ts.sc@snu.edu.in   |
| mm153  | MGM Manjunath            | Secretary of Academic Affairs  | Electrical and Computer | 2026 | 788956789 | ass.sc@snu.edu.in  |
| nc651  | Navika Chadha            | Secretary of Academic Affairs  | BMS                     | 2026 | 986956789 | ass.sc@snu.edu.in  |
| sr298  | SR Suryaa                | Secretary of Campus Affairs    | BMS                     | 2026 | 786956789 | ca.sc@snu.edu.in   |
| gr627  | Pavan Karthikeya Reddy   | Secretary of Campus Affairs    | Electrical and Computer | 2026 | 689956789 | ca.sc@snu.edu.in   |
+--------+--------------------------+--------------------------------+-------------------------+------+-----------+--------------------+
12 rows in set (0.00 sec)

mysql> update Executive_cabinet set email_id="sos.sc@snu.edu.in" where position="Secretary of Senate";
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select*from executive_cabinet;
+--------+--------------------------+--------------------------------+-------------------------+------+-----------+--------------------+
| Net_id | Name                     | position                       | Major                   | year | Phone_no  | Email_id           |
+--------+--------------------------+--------------------------------+-------------------------+------+-----------+--------------------+
| ar765  | Adhithyanarayan Ramkumar | Secretary of Senate            | Mechanical              | 2025 | 924567677 | sos.sc@snu.edu.in  |
| aj919  | Arham Jain               | Secretary of IT                | Computer Science        | 2026 | 987656789 | its.sc@snu.edu.in  |
| kl933  | Kharishni Lakshman       | Secretary of Food Affairs      | Biotechnology           | 2026 | 895656789 | sofa.sc@snu.edu.in |
| mv901  | Manasvi Vedanta          | Secretary of Technical Affairs | Computer Science        | 2026 | 998656789 | tec.sc@snu.edu.in  |
| ss585  | Saksham Shukla           | Secretary of External Affairs  | Electrical and Computer | 2026 | 998656789 | er.sc@snu.edu.in   |
| vr767  | Venkat Ravi              | Secretary of Press             | Computer Science        | 2026 | 998656789 | ps.sc@snu.edu.in   |
| ag105  | Arumugan G               | Secretary of Treasury          | Biotechnology           | 2026 | 875756789 | ts.sc@snu.edu.in   |
| as234  | Ashwin SRV               | Secretary of Treasury          | Electrical and Computer | 2026 | 965456789 | ts.sc@snu.edu.in   |
| mm153  | MGM Manjunath            | Secretary of Academic Affairs  | Electrical and Computer | 2026 | 788956789 | ass.sc@snu.edu.in  |
| nc651  | Navika Chadha            | Secretary of Academic Affairs  | BMS                     | 2026 | 986956789 | ass.sc@snu.edu.in  |
| sr298  | SR Suryaa                | Secretary of Campus Affairs    | BMS                     | 2026 | 786956789 | ca.sc@snu.edu.in   |
| gr627  | Pavan Karthikeya Reddy   | Secretary of Campus Affairs    | Electrical and Computer | 2026 | 689956789 | ca.sc@snu.edu.in   |
+--------+--------------------------+--------------------------------+-------------------------+------+-----------+--------------------+
12 rows in set (0.00 sec)

mysql> select*from office_bearers;
+--------+-------------------+--------------------+------------+------+-----------+------------------+
| Net_id | Name              | position           | Major      | year | Phone_no  | Email_id         |
+--------+-------------------+--------------------+------------+------+-----------+------------------+
| ak901  | Aneesh Kandrakota | President          | Mechanical | 2025 | 998876675 | po.sc@snu.edu.in |
| ph375  | Harsha Pulle      | Vice-President     | Mechanical | 2025 | 563728393 | vp.sc@snu.edu.in |
| da570  | Devansh Asthana   | Cultural Secretary | BMS        | 2025 | 887655667 | NULL             |
| kb453  | Karan Bellak      | Sports Secretary   | BMS        | 2025 | 897766677 | NULL             |
+--------+-------------------+--------------------+------------+------+-----------+------------------+
4 rows in set (0.00 sec)

mysql> update office_bearers set email_id="cs.sc@snu.edu.in" where position="Cultural Secretary";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update office_bearers set email_id="ss.sc@snu.edu.in" where position="Sports Secretary";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select*from office_bearers;
+--------+-------------------+--------------------+------------+------+-----------+------------------+
| Net_id | Name              | position           | Major      | year | Phone_no  | Email_id         |
+--------+-------------------+--------------------+------------+------+-----------+------------------+
| ak901  | Aneesh Kandrakota | President          | Mechanical | 2025 | 998876675 | po.sc@snu.edu.in |
| ph375  | Harsha Pulle      | Vice-President     | Mechanical | 2025 | 563728393 | vp.sc@snu.edu.in |
| da570  | Devansh Asthana   | Cultural Secretary | BMS        | 2025 | 887655667 | cs.sc@snu.edu.in |
| kb453  | Karan Bellak      | Sports Secretary   | BMS        | 2025 | 897766677 | ss.sc@snu.edu.in |
+--------+-------------------+--------------------+------------+------+-----------+------------------+
4 rows in set (0.00 sec)

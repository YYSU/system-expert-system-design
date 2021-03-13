CREATE TABLE payments (
    customer_name varchar(120),
    processed_at date,
    amount int
);

CREATE TABLE balances (
    username varchar(120),
    balance int
);

CREATE TABLE large_table (
    random_int int
);

INSERT INTO payments VALUES ('Hason', '2019-12-05', 20);
INSERT INTO payments VALUES ('Hames', '2019-12-05', 200);
INSERT INTO payments VALUES ('Alice', '2019-12-05', 40);
INSERT INTO payments VALUES ('Bob', '2019-12-05', 70);
INSERT INTO payments VALUES ('Clark', '2019-12-05', 0);
INSERT INTO payments VALUES ('David', '2019-12-05', 50);
INSERT INTO payments VALUES ('Eric', '2019-12-05', 70);
INSERT INTO payments VALUES ('Fregon', '2019-12-05', 20);
INSERT INTO payments VALUES ('Garry', '2019-12-05', 200);
INSERT INTO payments VALUES ('Harry', '2019-12-05', 10);
INSERT INTO payments VALUES ('Ian', '2019-12-05', 80);
INSERT INTO payments VALUES ('Jack', '2019-12-05', 880);
INSERT INTO payments VALUES ('Leo', '2019-12-05', 45);
INSERT INTO payments VALUES ('Mike', '2019-12-05', 80);
INSERT INTO payments VALUES ('Neo', '2019-12-05', 20);
INSERT INTO payments VALUES ('Oks', '2019-12-05', 230);
INSERT INTO payments VALUES ('Press', '2019-12-05', 2220);
INSERT INTO payments VALUES ('Quard', '2019-12-05', 560);

INSERT INTO balances VALUES ('Bob' , 0);
INSERT INTO balances VALUES ('Hason', 1000);

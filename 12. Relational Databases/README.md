# How to run this ?
1. Run MYSQL server
```
$ docker run -itd --name mysql-test -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 mysql
```

2. Open another terminal to use as mysql Client
```
$ mysql -h 127.0.0.1 -u root -p
```

3. SQL  
```
CREATE DATABASE `my_db`;
use my_db
    .
    .
    .
    .
    .
```
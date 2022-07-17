# Optic-Lens
This is an html project of Front end development lab.

```sql 
SELECT SYS_CONTEXT('USERENV','SERVER_HOST') FROM dual /* 👉 System Name */;
```

```sql 
SELECT SYS_CONTEXT('USERENV','INSTANCE_NAME') FROM dual /* 👉 Service Name */;
```

Registration form table

```sql
create table registration(
username varchar(50) not null,
email varchar(255) primary key not null,
password varchar(20) not null,
cpass varchar(20) not null,
user_type varchar(5) not null
);
```

Subscribe table

```sql
create table subscribe(
email varchar(255) not null
);
```

Contact us table

```sql
create table contact(
name varchar(20) not null,
email varchar(255) not null,
mobile number(10) not null,
message varchar(200) not null
);
```

Payment form table

```sql
create table payment(
name varchar(50) not null,
email varchar(255) not null,
name_on_card varchar(50) not null,
address varchar(150) not null,
credit_card_number number(16) not null,
city varchar(50) not null,
expiry_month varchar(10) not null,
state varchar(30) not null,
zip_code number(6) not null,
expiry_year number(4) not null,
cvv number(3) not null
);
```

create table signup1(
    formno varchar(20) primary key, 
    name varchar(15),
    fname varchar(15),
    date varchar(5),
    month varchar(10),
    year varchar(5),
    gender varchar(7),
    email varchar(20),
    marital varchar(10),
    address varchar(20),
    city varchar(20),
    pincode varchar(10),
    state varchar(15)
);

create table signup2(
    formno varchar(20) primary key,
    religion varchar(15),
    category varchar(15),
    income varchar(20),
    education varchar(15),
    occupation varchar(15),
    pan varchar(15),
    aadhar varchar(20),
    senior varchar(5),
    existing varchar(5)
);

create table signup3(
    formno varchar(20) primary key,
    account varchar(30),
    accno varchar(50),
    pin varchar(50),
    service_required varchar(100)
);

create table login(
    accno varchar(50) primary key references signup3(accno),
    pin varchar(50)
);

create table bank(
    pin varchar(50),
    deposit varchar(15),
    withdraw varchar(15),
    balance varchar(15),
    accno varchar(50) references login(accno)
    );

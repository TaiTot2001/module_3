create database quanlybanhang;
use quanlybanhang;

CREATE TABLE Customer (
    cID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(25) NOT NULL,
    cAge TINYINT NOT NULL
);

CREATE TABLE Orders (
    oID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    cID INT NOT NULL,
    oDate DATETIME NOT NULL,
    oTotalPrice INT
);
alter table orders add foreign key(cID) references customer (cID);


CREATE TABLE Product (
    pID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    pName VARCHAR(25) NOT NULL,
    pPrice INT NOT NULL
);

CREATE TABLE OrderDetail (
    oID INT NOT NULL,
    pID INT NOT NULL,
    odQTY INT NOT NULL,
    PRIMARY KEY (oID , pID),
    FOREIGN KEY (oID)
        REFERENCES orders (oID),
    FOREIGN KEY (pID)
        REFERENCES product (pID)
);

create database QuanLyDiemThi;
use QuanLyDiemThi;

CREATE TABLE HocSinh (
    MaHS VARCHAR(20) NOT NULL PRIMARY KEY UNIQUE,
    TenHS VARCHAR(50),
    NgaySinh DATETIME,
    Lop VARCHAR(20),
    GT VARCHAR(20)
);

CREATE TABLE MonHoc (
    MaMH VARCHAR(20) PRIMARY KEY,
    TenMH VARCHAR(50),
    MaGV VARCHAR(20)
);

CREATE TABLE BangDiem (
    MaHS VARCHAR(20),
    MaMH VARCHAR(50),
    DiemThi INT,
    NgayKT DATETIME,
    PRIMARY KEY (MaHS , MaMH),
    FOREIGN KEY (MaHS)
        REFERENCES HocSinh (MaHS),
    FOREIGN KEY (MaMH)
        REFERENCES MonHoc (MaMH)
);

CREATE TABLE GiaoVien (
    MaGV VARCHAR(20),
    TenGV VARCHAR(50),
    SDT VARCHAR(10) UNIQUE,
    CHECK (LENGTH(SDT) = 10),
    PRIMARY KEY (MaGV)
);
alter table MonHoc add constraint pk_MaGV foreign key (MaGV) references GiaoVien (MaGV);

SHOW INDEX FROM HocSinh;

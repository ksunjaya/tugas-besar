INSERT INTO Harga_Tiket
VALUES ('2021-07-01', 40000);

INSERT INTO Harga_Tiket
VALUES ('2021-07-02', 40000);

INSERT INTO Harga_Tiket
VALUES ('2021-07-03', 60000);

INSERT INTO Harga_Tiket
VALUES ('2021-07-04', 60000);

INSERT INTO Harga_Tiket
VALUES ('2021-07-05', 60000);



INSERT INTO Limit_Tiket
VALUES ('2021-07-01', 400, 5, 211);

INSERT INTO Limit_Tiket
VALUES ('2021-07-02', 400, 5, 213);

INSERT INTO Limit_Tiket
VALUES ('2021-07-03', 500, 6, 122);

INSERT INTO Limit_Tiket
VALUES ('2021-07-04', 500, 6, 98);

INSERT INTO Limit_Tiket
VALUES ('2021-07-05', 500, 6, 80);



INSERT INTO Pemilik 
VALUES ('1384281900120541', 'Willy Wonka', 'user_willy', 'thewilwon123');



INSERT INTO Karyawan
VALUES ('1384281923761014', 'Wombat Wonderland', 'woland', 'wombwonder01');

INSERT INTO Karyawan
VALUES ('1384281923761034', 'Dodo Digidigi Bang', 'bangdodo', 'dordor2021');

INSERT INTO Karyawan
VALUES ('1384281923761001', 'Bambang Budiman', 'Bambankxs', 'bambu1020');



INSERT INTO Pengunjung
VALUES ('2233114112100123', 'Lala Lilili', '081902193103');

INSERT INTO Reservasi
VALUES (210701211, 3, '2233114112100123', '2021-07-01', 0);

INSERT INTO Transaksi
VALUES (20210001, 210701211, '2021-07-01', 120000);



INSERT INTO Pengunjung
VALUES ('2233114112112003', 'Si Wombomz', '081681901002');

INSERT INTO Reservasi
VALUES (21070498, 3, '2233114112112003', '2021-07-04', 0);

INSERT INTO Transaksi
VALUES (20210002, 21070498, '2021-07-04', 180000);

UPDATE Pemilik SET pemilik.password = PASSWORD(password);
UPDATE Karyawan SET karyawan.password = PASSWORD(password);
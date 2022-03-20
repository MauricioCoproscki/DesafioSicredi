truncate table `sicooperative`.`associado`;

INSERT INTO `sicooperative`.`associado`
(
`nome`,
`sobrenome`,
`idade`,
`email`)
VALUES
 ('usuario 1','usuario 1',33,'usuario1@usr.com')
,('usuario 2','usuario 2',18,'usuario2@usr.com')
,('usuario 3','usuario 3',90,'usuario3@usr.com')
,('usuario 4','usuario 4',30,'usuario4@usr.com')
,('usuario 5','usuario 5',20,'usuario5@usr.com')
,('usuario 6','usuario 6',50,'usuario6@usr.com')
,('usuario 7','usuario 7',41,'usuario7@usr.com')
,('usuario 8','usuario 8',64,'usuario8@usr.com')
,('usuario 9','usuario 9',27,'usuario9@usr.com')
,('usuario 10','usuario 10',40,'usuario10@usr.com')
;


truncate `sicooperative`.`conta`;
INSERT INTO `sicooperative`.`conta`
(
`tipo_conta`,
`data_criacao`,
`id_associado`)
VALUES
('corrente', now(),1)
,('poupança',now(),2)
,('corrente',now(),3)
,('corrente',now(),4)
,('corrente',now(),5)
,('corrente',now(),5)
,('poupança',now(),5)
,('corrente',now(),6)
,('poupança',now(),7)
,('corrente',now(),8)
,('poupança',now(),9)
,('corrente',now(),10)
,('poupança',now(),10);

truncate table `sicooperative`.`cartao`; 

INSERT INTO `sicooperative`.`cartao`
(
`num_cartao`,
`nome_impresso`,
`id_conta`,
`id_associado`)
VALUES
 (111111,'Usuario 1',1,1)
,(222222,'Usuario 1',2,2)
,(333333,'Usuario 1',3,3)
,(444444,'Usuario 1',4,4)
,(555555,'Usuario 1',5,5)
,(555556,'Usuario 1',6,5)
,(565556,'Usuario 1',6,5)
,(555557,'Usuario 1',7,5)
,(577757,'Usuario 1',7,5)
,(666666,'Usuario 1',8,6)
,(777777,'Usuario 1',9,7)
,(888888,'Usuario 1',10,8)
,(999999,'Usuario 1',11,9)
,(101012,'Usuario 1',12,10)
,(101013,'Usuario 1',13,10)
;

TRUNCATE TABLE `sicooperative`.`movimento`;

INSERT INTO `sicooperative`.`movimento`
(
`vlr_transacao`,
`des_transacao`,
`data_movimento`,
`id_cartao`)
VALUES

('10000','compra',now(),1)
,('9000','compra',DATE_ADD("2017-06-15", INTERVAL 10 DAY),2)
,('5000','compra',DATE_ADD(NOW(), INTERVAL 10 DAY),3)
,('2000','compra',DATE_ADD(NOW(), INTERVAL -5 DAY),4)
,('399','compra',DATE_ADD(NOW(), INTERVAL -6 DAY),5)
,('500','compra',DATE_ADD(NOW(), INTERVAL -8 DAY),6)
,('1000','compra',DATE_ADD(NOW(), INTERVAL 5 DAY),7)
,('1500','compra',now(),8)
,('1050','compra',now(),9)
,('700','compra',now(),10)
,('1023','saque',DATE_ADD(NOW(), INTERVAL 7 DAY),11)
,('23000','compra',now(),12)
,('8500','compra',now(),13)
,('3000','compra',DATE_ADD(NOW(), INTERVAL -5 DAY),14)
,('3500','paeclamento',now(),15)
,('9000','compra',DATE_ADD(NOW(), INTERVAL 9 DAY),14)
,('8500','compra',DATE_ADD(NOW(), INTERVAL 12 DAY),14)
,('12000','compra',DATE_ADD(NOW(), INTERVAL 15 DAY),14)
,('999','compra',DATE_ADD(NOW(), INTERVAL -7 DAY),14)
,('30','compra',DATE_ADD(NOW(), INTERVAL -9 DAY),14)
;
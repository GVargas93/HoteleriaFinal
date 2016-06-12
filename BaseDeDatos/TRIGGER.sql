create table tblpagos
(lpago_id number(3),
lmonto number(6,2),
dffecha date ,
sglosa VARCHAR2(50)
);

alter table tblpagos
add primary key (lpago_id);

create table backpagos(
sUsuario VARCHAR2(30),
dtfecha date,
lmonto number(6,0),
lpago_id number(3)
;
alter table backpagos
add CONSTRAINTS  fk_pago_id  FOREIGN key(lpago_id) REFERENCES tblpagos(lpago_id);

ejemolos 
secuencia
paquete insert(20,fecha,1);
create or replace procedure insertarpagos(lmontos number,dtfechas date,sglosas VARCHAR2)
is
valor number(3);
begin
select max(lpago_id) into valor from tblpagos;
insert into tblpagos(lpago_id,lmonto,dffecha,SGLOSA) values(valor,lmontos,dtfechas,sglosas);
commit;
exception when others then rollback;
end insertarpagos;


create or replace procedure actulizarpagos(lmontos number,dtfechas date,sglosas VARCHAR2)
is
valor number(3);
begin
select max(lpago_id) into valor from tblpagos;
insert into tblpagos(lpago_id,lmonto,dffecha,SGLOSA) values(valor,lmontos,dtfechas,sglosas);
commit;
exception when others then rollback;
end insertarpagos;


trigger
 BEFORE =>alter
on delete or update => DELETING , UPDATING
 
create or replace  TRIGGER tr_pagos
BEFORE insert on tblpagos
for EACH row
VL_VALOR VARCHAR2(50);
begin
insert into bakpagos
values(USER,SYSDATE:new.lmonto,:new.lpago_id);
end;
ELSE IF === PUEDE UTILIZAR LOS 3 
ELSE IF DELETING
/




create or replace  TRIGGER tr_pagos
AFTER insert on tblpagos 
for EACH row
begin
insert into backpagos
values(USERS,SYSDATE,:new.lmonto,:new.lpago_id);
end;
/

INSERTING

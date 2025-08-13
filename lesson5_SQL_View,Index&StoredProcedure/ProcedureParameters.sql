delimiter //
create procedure getCusById
(in cusNum int (11))
begin 
select * from customers where customerNumber = cusNum;
end //
delimiter ;

call getCusById(175);

delimiter //
create procedure GetCustomerCountByCity(
in in_city varchar(50),
out total int
)
begin
select count(customerNumber)
into total
from customers
where city = in_city;
end //
delimiter ;

CALL GetCustomerCountByCity('Lyon', @total);
SELECT @total;

delimiter //
create procedure Setcounter (
inout counter int,
in inc int
)
begin
set counter = counter + inc;
end //
delimiter ;

set @counter =1;
call Setcounter(@counter,1);
call Setcounter(@counter,1);
call Setcounter(@counter,5);

select @counter;






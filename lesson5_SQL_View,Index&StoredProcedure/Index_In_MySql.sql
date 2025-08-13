use classicmodels;

select * from customers where customername ='Land of Toys Inc.';
explain select * from customers where customername ='Land of Toys Inc.';

alter table customers add index inx_customername(customername);
explain select * from customers where customername ='Land of Toys Inc.';

alter table customers add index idx_full_name (contactfirstname,contactlastname);
explain select * from customers where contactlastname='king' and contactfirstname ='jean';

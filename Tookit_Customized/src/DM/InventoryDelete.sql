
--DF_I: 
--I=Inventory Date1 as generated by dsdgen Date2 as generated by dsdgen
--Delete rows from Inventory where d_date between Date1 and Date2

delete from Inventory where inv_date_sk in (select d_date_sk from date_dim where d_date between ${date1} and ${date2})

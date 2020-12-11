delete from Inventory where inv_date_sk in (select d_date_sk from date_dim where d_date between '${date1}' and '${date2}')

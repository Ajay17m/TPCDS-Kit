USE ${TPCDS_DBNAME};
--DF_SS: 
--S=store_sales R=store_returns Date1 as generated by dsdgen Date2 as generated by dsdgen
--Delete rows from store_returns with corresponding rows in store_sales where d_date between Date1 and Date2
delete from store_returns where sr_returned_date_sk in (select d_date_sk from date_dim where d_date between '${date1}' and '${date2}')
delete from store_sales where ss_sold_date_sk in (select d_date_sk from date_dim where d_date between '${date1}' and '${date2}')


--DF_CS: 
--S=catalog_sales R=catalog_returns Date1 as generated by dsdgen Date2 as generated by dsdgen
--Delete rows from catalog_returns with corresponding rows in catalog_sales where d_date between Date1 and Date2
delete from catalog_returns where cr_returned_date_sk in(select d_date_sk from date_dim where d_date between '${date1}' and '${date2}')
delete from catalog_sales where cs_sold_date_sk in (select d_date_sk from date_dim where d_date between '${date1}' and '${date2}')


--DF_WS: 
--S=web_sales R=web_returns Date1 as generated by dsdgen Date2 as generated by dsdgen
--Delete rows from web_returns with corresponding rows in web_sales where d_date between Date1 and Date2
delete from web_returns where wr_returned_date_sk in (select d_date_sk from date_dim where d_date between '${date1}' and '${date2}')
delete from catalog_sales where ws_sold_date_sk in (select d_date_sk from date_dim where d_date between '${date1}' and '${date2}')

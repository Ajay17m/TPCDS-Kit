USE ${TPCDS_DBNAME};

LOAD DATA LOCAL INPATH "${TPCDS_GENDATA_DIR}/call_center*.dat" INTO TABLE call_center_text;
LOAD DATA LOCAL INPATH "${TPCDS_GENDATA_DIR}/catalog_page*.dat" INTO TABLE catalog_page_text;
LOAD DATA LOCAL INPATH "${TPCDS_GENDATA_DIR}/catalog_returns*.dat" INTO TABLE catalog_returns_text;
LOAD DATA LOCAL INPATH "${TPCDS_GENDATA_DIR}/catalog_sales*.dat" INTO TABLE catalog_sales_text;
LOAD DATA LOCAL INPATH "${TPCDS_GENDATA_DIR}/customer*.dat" INTO TABLE customer_text;
LOAD DATA LOCAL INPATH "${TPCDS_GENDATA_DIR}/customer_address*.dat" INTO TABLE customer_address_text;
LOAD DATA LOCAL INPATH "${TPCDS_GENDATA_DIR}/customer_demographics*.dat" INTO TABLE customer_demographics_text;
LOAD DATA LOCAL INPATH "${TPCDS_GENDATA_DIR}/date_dim*.dat" INTO TABLE date_dim_text;
LOAD DATA LOCAL INPATH "${TPCDS_GENDATA_DIR}/household_demographics*.dat" INTO TABLE household_demographics_text;
LOAD DATA LOCAL INPATH "${TPCDS_GENDATA_DIR}/income_band*.dat" INTO TABLE income_band_text;
LOAD DATA LOCAL INPATH "${TPCDS_GENDATA_DIR}/inventory*.dat" INTO TABLE inventory_text;
LOAD DATA LOCAL INPATH "${TPCDS_GENDATA_DIR}/item*.dat" INTO TABLE item_text;
LOAD DATA LOCAL INPATH "${TPCDS_GENDATA_DIR}/promotion*.dat" INTO TABLE promotion_text;
LOAD DATA LOCAL INPATH "${TPCDS_GENDATA_DIR}/ship_mode*.dat" INTO TABLE ship_mode_text;
LOAD DATA LOCAL INPATH "${TPCDS_GENDATA_DIR}/store*.dat" INTO TABLE store_text;
LOAD DATA LOCAL INPATH "${TPCDS_GENDATA_DIR}/store_returns*.dat" INTO TABLE store_returns_text;
LOAD DATA LOCAL INPATH "${TPCDS_GENDATA_DIR}/store_sales*.dat" INTO TABLE store_sales_text;
LOAD DATA LOCAL INPATH "${TPCDS_GENDATA_DIR}/time_dim*.dat" INTO TABLE time_dim_text;
LOAD DATA LOCAL INPATH "${TPCDS_GENDATA_DIR}/warehouse*.dat" INTO TABLE warehouse_text;
LOAD DATA LOCAL INPATH "${TPCDS_GENDATA_DIR}/web_page*.dat" INTO TABLE web_page_text;
LOAD DATA LOCAL INPATH "${TPCDS_GENDATA_DIR}/web_returns*.dat" INTO TABLE web_returns_text;
LOAD DATA LOCAL INPATH "${TPCDS_GENDATA_DIR}/web_sales*.dat" INTO TABLE web_sales_text;
LOAD DATA LOCAL INPATH "${TPCDS_GENDATA_DIR}/web_site*.dat" INTO TABLE web_site_text;

insert into call_center select * from call_center_text;
insert into catalog_page select * from catalog_page_text;
insert into catalog_returns select * from catalog_returns_text;
insert into catalog_sales select * from catalog_sales_text;
insert into customer select * from customer_text;
insert into customer_address select * from customer_address_text;
insert into customer_demographics select * from customer_demographics_text;
insert into date_dim select * from date_dim_text;
insert into household_demographics select * from household_demographics_text;
insert into income_band select * from income_band_text;
insert into inventory select * from inventory_text;
insert into item select * from item_text;
insert into promotion select * from promotion_text;
insert into reason select * from reason_text;
insert into ship_mode select * from ship_mode_text;
insert into store select * from store_text;
insert into store_returns select * from store_returns_text;
insert into store_sales select * from store_sales_text;
insert into time_dim select * from time_dim_text;
insert into warehouse select * from warehouse_text;
insert into web_page select * from web_page_text;
insert into web_returns select * from web_returns_text;
insert into web_sales select * from web_sales_text;
insert into web_site select * from web_site_text;

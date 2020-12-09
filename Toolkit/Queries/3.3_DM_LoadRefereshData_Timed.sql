USE ${TPCDS_DBNAME};

LOAD DATA LOCAL INPATH "${TPCDS_REFERESHDATA_DIR}/s_purchase_lineitem* " OVERWRITE INTO TABLE s_purchase_lineitem_text;
LOAD DATA LOCAL INPATH "${TPCDS_REFERESHDATA_DIR}/s_purchase* " OVERWRITE INTO TABLE s_purchase_text;
LOAD DATA LOCAL INPATH "${TPCDS_REFERESHDATA_DIR}/s_catalog_order* " OVERWRITE INTO TABLE s_catalog_order_text;
LOAD DATA LOCAL INPATH "${TPCDS_REFERESHDATA_DIR}/s_web_order* " OVERWRITE INTO TABLE s_web_order_text;
LOAD DATA LOCAL INPATH "${TPCDS_REFERESHDATA_DIR}/s_catalog_order_lineitem* " OVERWRITE INTO TABLE s_catalog_order_lineitem_text;
LOAD DATA LOCAL INPATH "${TPCDS_REFERESHDATA_DIR}/s_web_order_lineitem* " OVERWRITE INTO TABLE s_web_order_lineitem_text;
LOAD DATA LOCAL INPATH "${TPCDS_REFERESHDATA_DIR}/s_store_returns* " OVERWRITE INTO TABLE s_store_returns_text;
LOAD DATA LOCAL INPATH "${TPCDS_REFERESHDATA_DIR}/s_catalog_returns* " OVERWRITE INTO TABLE s_catalog_returns_text;
LOAD DATA LOCAL INPATH "${TPCDS_REFERESHDATA_DIR}/s_web_returns* " OVERWRITE INTO TABLE s_web_returns_text;
LOAD DATA LOCAL INPATH "${TPCDS_REFERESHDATA_DIR}/s_inventory* " OVERWRITE INTO TABLE s_inventory_text;

insert into s_purchase_lineitem select * from s_purchase_lineitem_text;
insert into s_purchase select * from s_purchase_text;
insert into s_catalog_order select * from s_catalog_order_text;
insert into s_web_order select * from s_web_order_text;
insert into s_catalog_order_lineitem select * from s_catalog_order_lineitem_text;
insert into s_web_order_lineitem select * from s_web_order_lineitem_text;
insert into s_store_returns select * from s_store_returns_text;
insert into s_catalog_returns select * from s_catalog_returns_text;
insert into s_web_returns select * from s_web_returns_text;
insert into s_inventory select * from s_inventory_text;

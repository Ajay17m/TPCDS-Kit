USE ${TPCDS_DBNAME};

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

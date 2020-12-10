USE ${TPCDS_DBNAME};

INSERT INTO store_sales SELECT * FROM ssv;
INSERT INTO store_returns SELECT * FROM srv;
INSERT INTO web_sales SELECT * FROM wsv;
INSERT INTO web_returns SELECT * FROM wrv;
INSERT INTO catalog_sales SELECT * FROM csv;
INSERT INTO catalog_returns SELECT * FROM crv;
INSERT INTO inventory SELECT * FROM iv;

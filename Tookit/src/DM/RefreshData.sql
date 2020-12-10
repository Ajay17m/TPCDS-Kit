USE ${TPCDS_DBNAME};

LOAD DATA LOCAL INPATH "${TPCDS_REFRESHDATA_DIR}/s_purchase_lineitem_${UPDATE}}.dat" OVERWRITE INTO TABLE s_purchase_lineitem_text;
LOAD DATA LOCAL INPATH "${TPCDS_REFRESHDATA_DIR}/s_purchase_${UPDATE}}.dat" OVERWRITE INTO TABLE s_purchase_text;
LOAD DATA LOCAL INPATH "${TPCDS_REFRESHDATA_DIR}/s_catalog_order_${UPDATE}}.dat" OVERWRITE INTO TABLE s_catalog_order_text;
LOAD DATA LOCAL INPATH "${TPCDS_REFRESHDATA_DIR}/s_web_order_${UPDATE}}.dat" OVERWRITE INTO TABLE s_web_order_text;
LOAD DATA LOCAL INPATH "${TPCDS_REFRESHDATA_DIR}/s_catalog_order_lineitem_${UPDATE}}.dat" OVERWRITE INTO TABLE s_catalog_order_lineitem_text;
LOAD DATA LOCAL INPATH "${TPCDS_REFRESHDATA_DIR}/s_web_order_lineitem_${UPDATE}}.dat" OVERWRITE INTO TABLE s_web_order_lineitem_text;
LOAD DATA LOCAL INPATH "${TPCDS_REFRESHDATA_DIR}/s_store_returns_${UPDATE}}.dat" OVERWRITE INTO TABLE s_store_returns_text;
LOAD DATA LOCAL INPATH "${TPCDS_REFRESHDATA_DIR}/s_catalog_returns_${UPDATE}}.dat" OVERWRITE INTO TABLE s_catalog_returns_text;
LOAD DATA LOCAL INPATH "${TPCDS_REFRESHDATA_DIR}/s_web_returns_${UPDATE}}.dat" OVERWRITE INTO TABLE s_web_returns_text;
LOAD DATA LOCAL INPATH "${TPCDS_REFRESHDATA_DIR}/s_inventory_${UPDATE}.dat" OVERWRITE INTO TABLE s_inventory_text;

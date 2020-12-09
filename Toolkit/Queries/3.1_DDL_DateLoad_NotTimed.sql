USE ${TPCDS_DBNAME};

drop table if exists data_delete;
create table data_delete (
              date1 date,
			  date2 date
             ) 
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';
LOAD DATA LOCAL INPATH "${TPCDS_REFERESHDATA_DIR}/delete* " OVERWRITE INTO TABLE data_delete;

drop table if exists inventory_delete;
create table data_delete (
              date1 date,
			  date2 date
             )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';
LOAD DATA LOCAL INPATH "${TPCDS_REFERESHDATA_DIR}/inventory_delete* " OVERWRITE INTO TABLE inventory_delete;

CREATE DATABASE IF NOT EXISTS ${TPCDS_DBNAME}
  COMMENT 'For TPCDS at 1GB scale factor';

USE ${TPCDS_DBNAME};
drop table if exists call_center_text;
create table call_center_text
(
    cc_call_center_sk         int,
    cc_call_center_id         string,
    cc_rec_start_date         string,
    cc_rec_end_date           string,
    cc_closed_date_sk         int,
    cc_open_date_sk           int,
    cc_name                   string,
    cc_class                  string,
    cc_employees              int,
    cc_sq_ft                  int,
    cc_hours                  string,
    cc_manager                string,
    cc_mkt_id                 int,
    cc_mkt_class              string,
    cc_mkt_desc               string,
    cc_market_manager         string,
    cc_division               int,
    cc_division_name          string,
    cc_company                int,
    cc_company_name           string,
    cc_street_number          string,
    cc_street_name            string,
    cc_street_type            string,
    cc_suite_number           string,
    cc_city                   string,
    cc_county                 string,
    cc_state                  string,
    cc_zip                    string,
    cc_country                string,
    cc_gmt_offset             double,
    cc_tax_percentage         double
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists catalog_page_text;
create table catalog_page_text
(
    cp_catalog_page_sk        int,
    cp_catalog_page_id        string,
    cp_start_date_sk          int,
    cp_end_date_sk            int,
    cp_department             string,
    cp_catalog_number         int,
    cp_catalog_page_number    int,
    cp_description            string,
    cp_type                   string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists catalog_returns_text;
create table catalog_returns_text
(
    cr_returned_date_sk       int,
    cr_returned_time_sk       int,
    cr_item_sk                int,
    cr_refunded_customer_sk   int,
    cr_refunded_cdemo_sk      int,
    cr_refunded_hdemo_sk      int,
    cr_refunded_addr_sk       int,
    cr_returning_customer_sk  int,
    cr_returning_cdemo_sk     int,
    cr_returning_hdemo_sk     int,
    cr_returning_addr_sk      int,
    cr_call_center_sk         int,
    cr_catalog_page_sk        int,
    cr_ship_mode_sk           int,
    cr_warehouse_sk           int,
    cr_reason_sk              int,
    cr_order_number           int,
    cr_return_quantity        int,
    cr_return_amount          double,
    cr_return_tax             double,
    cr_return_amt_inc_tax     double,
    cr_fee                    double,
    cr_return_ship_cost       double,
    cr_refunded_cash          double,
    cr_reversed_charge        double,
    cr_store_credit           double,
    cr_net_loss               double
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists catalog_sales_text;
create table catalog_sales_text
(
    cs_sold_date_sk           int,
    cs_sold_time_sk           int,
    cs_ship_date_sk           int,
    cs_bill_customer_sk       int,
    cs_bill_cdemo_sk          int,
    cs_bill_hdemo_sk          int,
    cs_bill_addr_sk           int,
    cs_ship_customer_sk       int,
    cs_ship_cdemo_sk          int,
    cs_ship_hdemo_sk          int,
    cs_ship_addr_sk           int,
    cs_call_center_sk         int,
    cs_catalog_page_sk        int,
    cs_ship_mode_sk           int,
    cs_warehouse_sk           int,
    cs_item_sk                int,
    cs_promo_sk               int,
    cs_order_number           int,
    cs_quantity               int,
    cs_wholesale_cost         double,
    cs_list_price             double,
    cs_sales_price            double,
    cs_ext_discount_amt       double,
    cs_ext_sales_price        double,
    cs_ext_wholesale_cost     double,
    cs_ext_list_price         double,
    cs_ext_tax                double,
    cs_coupon_amt             double,
    cs_ext_ship_cost          double,
    cs_net_paid               double,
    cs_net_paid_inc_tax       double,
    cs_net_paid_inc_ship      double,
    cs_net_paid_inc_ship_tax  double,
    cs_net_profit             double
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists customer_text;
create table customer_text
(
    c_customer_sk             int,
    c_customer_id             string,
    c_current_cdemo_sk        int,
    c_current_hdemo_sk        int,
    c_current_addr_sk         int,
    c_first_shipto_date_sk    int,
    c_first_sales_date_sk     int,
    c_salutation              string,
    c_first_name              string,
    c_last_name               string,
    c_preferred_cust_flag     string,
    c_birth_day               int,
    c_birth_month             int,
    c_birth_year              int,
    c_birth_country           string,
    c_login                   string,
    c_email_address           string,
    c_last_review_date        string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists customer_address_text;
create table customer_address_text
(
    ca_address_sk             int,
    ca_address_id             string,
    ca_street_number          string,
    ca_street_name            string,
    ca_street_type            string,
    ca_suite_number           string,
    ca_city                   string,
    ca_county                 string,
    ca_state                  string,
    ca_zip                    string,
    ca_country                string,
    ca_gmt_offset             double,
    ca_location_type          string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists customer_demographics_text;
create table customer_demographics_text
(
    cd_demo_sk                int,
    cd_gender                 string,
    cd_marital_status         string,
    cd_education_status       string,
    cd_purchase_estimate      int,
    cd_credit_rating          string,
    cd_dep_count              int,
    cd_dep_employed_count     int,
    cd_dep_college_count      int
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists date_dim_text;
create table date_dim_text
(
    d_date_sk                 int,
    d_date_id                 string,
    d_date                    string,
    d_month_seq               int,
    d_week_seq                int,
    d_quarter_seq             int,
    d_year                    int,
    d_dow                     int,
    d_moy                     int,
    d_dom                     int,
    d_qoy                     int,
    d_fy_year                 int,
    d_fy_quarter_seq          int,
    d_fy_week_seq             int,
    d_day_name                string,
    d_quarter_name            string,
    d_holiday                 string,
    d_weekend                 string,
    d_following_holiday       string,
    d_first_dom               int,
    d_last_dom                int,
    d_same_day_ly             int,
    d_same_day_lq             int,
    d_current_day             string,
    d_current_week            string,
    d_current_month           string,
    d_current_quarter         string,
    d_current_year            string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists household_demographics_text;
create table household_demographics_text
(
    hd_demo_sk                int,
    hd_income_band_sk         int,
    hd_buy_potential          string,
    hd_dep_count              int,
    hd_vehicle_count          int
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists income_band_text;
create table income_band_text
(
    ib_income_band_sk         int,
    ib_lower_bound            int,
    ib_upper_bound            int
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists inventory_text;
create table inventory_text
(
    inv_date_sk               int,
    inv_item_sk               int,
    inv_warehouse_sk          int,
    inv_quantity_on_hand      bigint
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists item_text;
create table item_text
(
    i_item_sk                 int,
    i_item_id                 string,
    i_rec_start_date          string,
    i_rec_end_date            string,
    i_item_desc               string,
    i_current_price           double,
    i_wholesale_cost          double,
    i_brand_id                int,
    i_brand                   string,
    i_class_id                int,
    i_class                   string,
    i_category_id             int,
    i_category                string,
    i_manufact_id             int,
    i_manufact                string,
    i_size                    string,
    i_formulation             string,
    i_color                   string,
    i_units                   string,
    i_container               string,
    i_manager_id              int,
    i_product_name            string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists promotion_text;
create table promotion_text
(
    p_promo_sk                int,
    p_promo_id                string,
    p_start_date_sk           int,
    p_end_date_sk             int,
    p_item_sk                 int,
    p_cost                    double,
    p_response_target         int,
    p_promo_name              string,
    p_channel_dmail           string,
    p_channel_email           string,
    p_channel_catalog         string,
    p_channel_tv              string,
    p_channel_radio           string,
    p_channel_press           string,
    p_channel_event           string,
    p_channel_demo            string,
    p_channel_details         string,
    p_purpose                 string,
    p_discount_active         string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists reason_text;
create table reason_text
(
    r_reason_sk               int,
    r_reason_id               string,
    r_reason_desc             string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists ship_mode_text;
create table ship_mode_text
(
    sm_ship_mode_sk           int,
    sm_ship_mode_id           string,
    sm_type                   string,
    sm_code                   string,
    sm_carrier                string,
    sm_contract               string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists store_text;
create table store_text
(
    s_store_sk                int,
    s_store_id                string,
    s_rec_start_date          string,
    s_rec_end_date            string,
    s_closed_date_sk          int,
    s_store_name              string,
    s_number_employees        int,
    s_floor_space             int,
    s_hours                   string,
    s_manager                 string,
    s_market_id               int,
    s_geography_class         string,
    s_market_desc             string,
    s_market_manager          string,
    s_division_id             int,
    s_division_name           string,
    s_company_id              int,
    s_company_name            string,
    s_street_number           string,
    s_street_name             string,
    s_street_type             string,
    s_suite_number            string,
    s_city                    string,
    s_county                  string,
    s_state                   string,
    s_zip                     string,
    s_country                 string,
    s_gmt_offset              double,
    s_tax_precentage          double
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists store_returns_text;
create table store_returns_text
(
    sr_returned_date_sk       int,
    sr_return_time_sk         int,
    sr_item_sk                int,
    sr_customer_sk            int,
    sr_cdemo_sk               int,
    sr_hdemo_sk               int,
    sr_addr_sk                int,
    sr_store_sk               int,
    sr_reason_sk              int,
    sr_ticket_number          int,
    sr_return_quantity        int,
    sr_return_amt             double,
    sr_return_tax             double,
    sr_return_amt_inc_tax     double,
    sr_fee                    double,
    sr_return_ship_cost       double,
    sr_refunded_cash          double,
    sr_reversed_charge        double,
    sr_store_credit           double,
    sr_net_loss               double
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists store_sales_text;
create table store_sales_text
(
    ss_sold_date_sk           int,
    ss_sold_time_sk           int,
    ss_item_sk                int,
    ss_customer_sk            int,
    ss_cdemo_sk               int,
    ss_hdemo_sk               int,
    ss_addr_sk                int,
    ss_store_sk               int,
    ss_promo_sk               int,
    ss_ticket_number          int,
    ss_quantity               int,
    ss_wholesale_cost         double,
    ss_list_price             double,
    ss_sales_price            double,
    ss_ext_discount_amt       double,
    ss_ext_sales_price        double,
    ss_ext_wholesale_cost     double,
    ss_ext_list_price         double,
    ss_ext_tax                double,
    ss_coupon_amt             double,
    ss_net_paid               double,
    ss_net_paid_inc_tax       double,
    ss_net_profit             double
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists time_dim_text;
create table time_dim_text
(
    t_time_sk                 int,
    t_time_id                 string,
    t_time                    int,
    t_hour                    int,
    t_minute                  int,
    t_second                  int,
    t_am_pm                   string,
    t_shift                   string,
    t_sub_shift               string,
    t_meal_time               string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists warehouse_text;
create table warehouse_text
(
    w_warehouse_sk            int,
    w_warehouse_id            string,
    w_warehouse_name          string,
    w_warehouse_sq_ft         int,
    w_street_number           string,
    w_street_name             string,
    w_street_type             string,
    w_suite_number            string,
    w_city                    string,
    w_county                  string,
    w_state                   string,
    w_zip                     string,
    w_country                 string,
    w_gmt_offset              double
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists web_page_text;
create table web_page_text
(
    wp_web_page_sk            int,
    wp_web_page_id            string,
    wp_rec_start_date         string,
    wp_rec_end_date           string,
    wp_creation_date_sk       int,
    wp_access_date_sk         int,
    wp_autogen_flag           string,
    wp_customer_sk            int,
    wp_url                    string,
    wp_type                   string,
    wp_char_count             int,
    wp_link_count             int,
    wp_image_count            int,
    wp_max_ad_count           int
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists web_returns_text;
create table web_returns_text
(
    wr_returned_date_sk       int,
    wr_returned_time_sk       int,
    wr_item_sk                int,
    wr_refunded_customer_sk   int,
    wr_refunded_cdemo_sk      int,
    wr_refunded_hdemo_sk      int,
    wr_refunded_addr_sk       int,
    wr_returning_customer_sk  int,
    wr_returning_cdemo_sk     int,
    wr_returning_hdemo_sk     int,
    wr_returning_addr_sk      int,
    wr_web_page_sk            int,
    wr_reason_sk              int,
    wr_order_number           int,
    wr_return_quantity        int,
    wr_return_amt             double,
    wr_return_tax             double,
    wr_return_amt_inc_tax     double,
    wr_fee                    double,
    wr_return_ship_cost       double,
    wr_refunded_cash          double,
    wr_reversed_charge        double,
    wr_account_credit         double,
    wr_net_loss               double
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists web_sales_text;
create table web_sales_text
(
    ws_sold_date_sk           int,
    ws_sold_time_sk           int,
    ws_ship_date_sk           int,
    ws_item_sk                int,
    ws_bill_customer_sk       int,
    ws_bill_cdemo_sk          int,
    ws_bill_hdemo_sk          int,
    ws_bill_addr_sk           int,
    ws_ship_customer_sk       int,
    ws_ship_cdemo_sk          int,
    ws_ship_hdemo_sk          int,
    ws_ship_addr_sk           int,
    ws_web_page_sk            int,
    ws_web_site_sk            int,
    ws_ship_mode_sk           int,
    ws_warehouse_sk           int,
    ws_promo_sk               int,
    ws_order_number           int,
    ws_quantity               int,
    ws_wholesale_cost         double,
    ws_list_price             double,
    ws_sales_price            double,
    ws_ext_discount_amt       double,
    ws_ext_sales_price        double,
    ws_ext_wholesale_cost     double,
    ws_ext_list_price         double,
    ws_ext_tax                double,
    ws_coupon_amt             double,
    ws_ext_ship_cost          double,
    ws_net_paid               double,
    ws_net_paid_inc_tax       double,
    ws_net_paid_inc_ship      double,
    ws_net_paid_inc_ship_tax  double,
    ws_net_profit             double
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists web_site_text;
create table web_site_text
(
    web_site_sk               int,
    web_site_id               string,
    web_rec_start_date        string,
    web_rec_end_date          string,
    web_name                  string,
    web_open_date_sk          int,
    web_close_date_sk         int,
    web_class                 string,
    web_manager               string,
    web_mkt_id                int,
    web_mkt_class             string,
    web_mkt_desc              string,
    web_market_manager        string,
    web_company_id            int,
    web_company_name          string,
    web_street_number         string,
    web_street_name           string,
    web_street_type           string,
    web_suite_number          string,
    web_city                  string,
    web_county                string,
    web_state                 string,
    web_zip                   string,
    web_country               string,
    web_gmt_offset            double,
    web_tax_percentage        double
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists call_center;
create table call_center
(
    cc_call_center_sk         int,
    cc_call_center_id         string,
    cc_rec_start_date         string,
    cc_rec_end_date           string,
    cc_closed_date_sk         int,
    cc_open_date_sk           int,
    cc_name                   string,
    cc_class                  string,
    cc_employees              int,
    cc_sq_ft                  int,
    cc_hours                  string,
    cc_manager                string,
    cc_mkt_id                 int,
    cc_mkt_class              string,
    cc_mkt_desc               string,
    cc_market_manager         string,
    cc_division               int,
    cc_division_name          string,
    cc_company                int,
    cc_company_name           string,
    cc_street_number          string,
    cc_street_name            string,
    cc_street_type            string,
    cc_suite_number           string,
    cc_city                   string,
    cc_county                 string,
    cc_state                  string,
    cc_zip                    string,
    cc_country                string,
    cc_gmt_offset             double,
    cc_tax_percentage         double
)
clustered by (cc_division) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists catalog_page;
create table catalog_page
(
    cp_catalog_page_sk        int,
    cp_catalog_page_id        string,
    cp_start_date_sk          int,
    cp_end_date_sk            int,
    cp_department             string,
    cp_catalog_number         int,
    cp_catalog_page_number    int,
    cp_description            string,
    cp_type                   string
)
clustered by (cp_department) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists catalog_returns;
create table catalog_returns
(
    cr_returned_date_sk       int,
    cr_returned_time_sk       int,
    cr_item_sk                int,
    cr_refunded_customer_sk   int,
    cr_refunded_cdemo_sk      int,
    cr_refunded_hdemo_sk      int,
    cr_refunded_addr_sk       int,
    cr_returning_customer_sk  int,
    cr_returning_cdemo_sk     int,
    cr_returning_hdemo_sk     int,
    cr_returning_addr_sk      int,
    cr_call_center_sk         int,
    cr_catalog_page_sk        int,
    cr_ship_mode_sk           int,
    cr_warehouse_sk           int,
    cr_reason_sk              int,
    cr_order_number           int,
    cr_return_quantity        int,
    cr_return_amount          double,
    cr_return_tax             double,
    cr_return_amt_inc_tax     double,
    cr_fee                    double,
    cr_return_ship_cost       double,
    cr_refunded_cash          double,
    cr_reversed_charge        double,
    cr_store_credit           double,
    cr_net_loss               double
)
clustered by (cr_warehouse_sk) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists catalog_sales;
create table catalog_sales
(
    cs_sold_date_sk           int,
    cs_sold_time_sk           int,
    cs_ship_date_sk           int,
    cs_bill_customer_sk       int,
    cs_bill_cdemo_sk          int,
    cs_bill_hdemo_sk          int,
    cs_bill_addr_sk           int,
    cs_ship_customer_sk       int,
    cs_ship_cdemo_sk          int,
    cs_ship_hdemo_sk          int,
    cs_ship_addr_sk           int,
    cs_call_center_sk         int,
    cs_catalog_page_sk        int,
    cs_ship_mode_sk           int,
    cs_warehouse_sk           int,
    cs_item_sk                int,
    cs_promo_sk               int,
    cs_order_number           int,
    cs_quantity               int,
    cs_wholesale_cost         double,
    cs_list_price             double,
    cs_sales_price            double,
    cs_ext_discount_amt       double,
    cs_ext_sales_price        double,
    cs_ext_wholesale_cost     double,
    cs_ext_list_price         double,
    cs_ext_tax                double,
    cs_coupon_amt             double,
    cs_ext_ship_cost          double,
    cs_net_paid               double,
    cs_net_paid_inc_tax       double,
    cs_net_paid_inc_ship      double,
    cs_net_paid_inc_ship_tax  double,
    cs_net_profit             double
)
clustered by (cs_warehouse_sk) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists customer;
create table customer
(
    c_customer_sk             int,
    c_customer_id             string,
    c_current_cdemo_sk        int,
    c_current_hdemo_sk        int,
    c_current_addr_sk         int,
    c_first_shipto_date_sk    int,
    c_first_sales_date_sk     int,
    c_salutation              string,
    c_first_name              string,
    c_last_name               string,
    c_preferred_cust_flag     string,
    c_birth_day               int,
    c_birth_month             int,
    c_birth_year              int,
    c_birth_country           string,
    c_login                   string,
    c_email_address           string,
    c_last_review_date        string
)
clustered by (c_preferred_cust_flag) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists customer_address;
create table customer_address
(
    ca_address_sk             int,
    ca_address_id             string,
    ca_street_number          string,
    ca_street_name            string,
    ca_street_type            string,
    ca_suite_number           string,
    ca_city                   string,
    ca_county                 string,
    ca_state                  string,
    ca_zip                    string,
    ca_country                string,
    ca_gmt_offset             double,
    ca_location_type          string
)
clustered by (ca_country) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists customer_demographics;
create table customer_demographics
(
    cd_demo_sk                int,
    cd_gender                 string,
    cd_marital_status         string,
    cd_education_status       string,
    cd_purchase_estimate      int,
    cd_credit_rating          string,
    cd_dep_count              int,
    cd_dep_employed_count     int,
    cd_dep_college_count      int
)
clustered by (cd_marital_status) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists date_dim;
create table date_dim
(
    d_date_sk                 int,
    d_date_id                 string,
    d_date                    string,
    d_month_seq               int,
    d_week_seq                int,
    d_quarter_seq             int,
    d_year                    int,
    d_dow                     int,
    d_moy                     int,
    d_dom                     int,
    d_qoy                     int,
    d_fy_year                 int,
    d_fy_quarter_seq          int,
    d_fy_week_seq             int,
    d_day_name                string,
    d_quarter_name            string,
    d_holiday                 string,
    d_weekend                 string,
    d_following_holiday       string,
    d_first_dom               int,
    d_last_dom                int,
    d_same_day_ly             int,
    d_same_day_lq             int,
    d_current_day             string,
    d_current_week            string,
    d_current_month           string,
    d_current_quarter         string,
    d_current_year            string
)
clustered by (d_year) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists household_demographics;
create table household_demographics
(
    hd_demo_sk                int,
    hd_income_band_sk         int,
    hd_buy_potential          string,
    hd_dep_count              int,
    hd_vehicle_count          int
)
clustered by (hd_income_band_sk) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists income_band;
create table income_band
(
    ib_income_band_sk         int,
    ib_lower_bound            int,
    ib_upper_bound            int
)
clustered by (ib_income_band_sk) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists inventory;
create table inventory
(
    inv_date_sk               int,
    inv_item_sk               int,
    inv_warehouse_sk          int,
    inv_quantity_on_hand      bigint
)
clustered by (inv_warehouse_sk) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists item;
create table item
(
    i_item_sk                 int,
    i_item_id                 string,
    i_rec_start_date          string,
    i_rec_end_date            string,
    i_item_desc               string,
    i_current_price           double,
    i_wholesale_cost          double,
    i_brand_id                int,
    i_brand                   string,
    i_class_id                int,
    i_class                   string,
    i_category_id             int,
    i_category                string,
    i_manufact_id             int,
    i_manufact                string,
    i_size                    string,
    i_formulation             string,
    i_color                   string,
    i_units                   string,
    i_container               string,
    i_manager_id              int,
    i_product_name            string
)
clustered by (i_category_id) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists promotion;
create table promotion
(
    p_promo_sk                int,
    p_promo_id                string,
    p_start_date_sk           int,
    p_end_date_sk             int,
    p_item_sk                 int,
    p_cost                    double,
    p_response_target         int,
    p_promo_name              string,
    p_channel_dmail           string,
    p_channel_email           string,
    p_channel_catalog         string,
    p_channel_tv              string,
    p_channel_radio           string,
    p_channel_press           string,
    p_channel_event           string,
    p_channel_demo            string,
    p_channel_details         string,
    p_purpose                 string,
    p_discount_active         string
)
clustered by (p_item_sk) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists reason;
create table reason
(
    r_reason_sk               int,
    r_reason_id               string,
    r_reason_desc             string
)
clustered by (r_reason_id) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists ship_mode;
create table ship_mode
(
    sm_ship_mode_sk           int,
    sm_ship_mode_id           string,
    sm_type                   string,
    sm_code                   string,
    sm_carrier                string,
    sm_contract               string
)
clustered by (sm_type) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists store;
create table store
(
    s_store_sk                int,
    s_store_id                string,
    s_rec_start_date          string,
    s_rec_end_date            string,
    s_closed_date_sk          int,
    s_store_name              string,
    s_number_employees        int,
    s_floor_space             int,
    s_hours                   string,
    s_manager                 string,
    s_market_id               int,
    s_geography_class         string,
    s_market_desc             string,
    s_market_manager          string,
    s_division_id             int,
    s_division_name           string,
    s_company_id              int,
    s_company_name            string,
    s_street_number           string,
    s_street_name             string,
    s_street_type             string,
    s_suite_number            string,
    s_city                    string,
    s_county                  string,
    s_state                   string,
    s_zip                     string,
    s_country                 string,
    s_gmt_offset              double,
    s_tax_precentage          double
)
clustered by (s_division_id) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists store_returns;
create table store_returns
(
    sr_returned_date_sk       int,
    sr_return_time_sk         int,
    sr_item_sk                int,
    sr_customer_sk            int,
    sr_cdemo_sk               int,
    sr_hdemo_sk               int,
    sr_addr_sk                int,
    sr_store_sk               int,
    sr_reason_sk              int,
    sr_ticket_number          int,
    sr_return_quantity        int,
    sr_return_amt             double,
    sr_return_tax             double,
    sr_return_amt_inc_tax     double,
    sr_fee                    double,
    sr_return_ship_cost       double,
    sr_refunded_cash          double,
    sr_reversed_charge        double,
    sr_store_credit           double,
    sr_net_loss               double
)
clustered by (sr_store_sk) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists store_sales;
create table store_sales
(
    ss_sold_date_sk           int,
    ss_sold_time_sk           int,
    ss_item_sk                int,
    ss_customer_sk            int,
    ss_cdemo_sk               int,
    ss_hdemo_sk               int,
    ss_addr_sk                int,
    ss_store_sk               int,
    ss_promo_sk               int,
    ss_ticket_number          int,
    ss_quantity               int,
    ss_wholesale_cost         double,
    ss_list_price             double,
    ss_sales_price            double,
    ss_ext_discount_amt       double,
    ss_ext_sales_price        double,
    ss_ext_wholesale_cost     double,
    ss_ext_list_price         double,
    ss_ext_tax                double,
    ss_coupon_amt             double,
    ss_net_paid               double,
    ss_net_paid_inc_tax       double,
    ss_net_profit             double
)
clustered by (ss_store_sk) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists time_dim;
create table time_dim
(
    t_time_sk                 int,
    t_time_id                 string,
    t_time                    int,
    t_hour                    int,
    t_minute                  int,
    t_second                  int,
    t_am_pm                   string,
    t_shift                   string,
    t_sub_shift               string,
    t_meal_time               string
)
clustered by (t_hour) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists warehouse;
create table warehouse
(
    w_warehouse_sk            int,
    w_warehouse_id            string,
    w_warehouse_name          string,
    w_warehouse_sq_ft         int,
    w_street_number           string,
    w_street_name             string,
    w_street_type             string,
    w_suite_number            string,
    w_city                    string,
    w_county                  string,
    w_state                   string,
    w_zip                     string,
    w_country                 string,
    w_gmt_offset              double
)
clustered by (w_country) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists web_page;
create table web_page
(
    wp_web_page_sk            int,
    wp_web_page_id            string,
    wp_rec_start_date         string,
    wp_rec_end_date           string,
    wp_creation_date_sk       int,
    wp_access_date_sk         int,
    wp_autogen_flag           string,
    wp_customer_sk            int,
    wp_url                    string,
    wp_type                   string,
    wp_char_count             int,
    wp_link_count             int,
    wp_image_count            int,
    wp_max_ad_count           int
)
clustered by (wp_type) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists web_returns;
create table web_returns
(
    wr_returned_date_sk       int,
    wr_returned_time_sk       int,
    wr_item_sk                int,
    wr_refunded_customer_sk   int,
    wr_refunded_cdemo_sk      int,
    wr_refunded_hdemo_sk      int,
    wr_refunded_addr_sk       int,
    wr_returning_customer_sk  int,
    wr_returning_cdemo_sk     int,
    wr_returning_hdemo_sk     int,
    wr_returning_addr_sk      int,
    wr_web_page_sk            int,
    wr_reason_sk              int,
    wr_order_number           int,
    wr_return_quantity        int,
    wr_return_amt             double,
    wr_return_tax             double,
    wr_return_amt_inc_tax     double,
    wr_fee                    double,
    wr_return_ship_cost       double,
    wr_refunded_cash          double,
    wr_reversed_charge        double,
    wr_account_credit         double,
    wr_net_loss               double
)
clustered by (wr_web_page_sk) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists web_sales;
create table web_sales
(
    ws_sold_date_sk           int,
    ws_sold_time_sk           int,
    ws_ship_date_sk           int,
    ws_item_sk                int,
    ws_bill_customer_sk       int,
    ws_bill_cdemo_sk          int,
    ws_bill_hdemo_sk          int,
    ws_bill_addr_sk           int,
    ws_ship_customer_sk       int,
    ws_ship_cdemo_sk          int,
    ws_ship_hdemo_sk          int,
    ws_ship_addr_sk           int,
    ws_web_page_sk            int,
    ws_web_site_sk            int,
    ws_ship_mode_sk           int,
    ws_warehouse_sk           int,
    ws_promo_sk               int,
    ws_order_number           int,
    ws_quantity               int,
    ws_wholesale_cost         double,
    ws_list_price             double,
    ws_sales_price            double,
    ws_ext_discount_amt       double,
    ws_ext_sales_price        double,
    ws_ext_wholesale_cost     double,
    ws_ext_list_price         double,
    ws_ext_tax                double,
    ws_coupon_amt             double,
    ws_ext_ship_cost          double,
    ws_net_paid               double,
    ws_net_paid_inc_tax       double,
    ws_net_paid_inc_ship      double,
    ws_net_paid_inc_ship_tax  double,
    ws_net_profit             double
)
clustered by (ws_web_page_sk) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists web_site;
create table web_site
(
    web_site_sk               int,
    web_site_id               string,
    web_rec_start_date        string,
    web_rec_end_date          string,
    web_name                  string,
    web_open_date_sk          int,
    web_close_date_sk         int,
    web_class                 string,
    web_manager               string,
    web_mkt_id                int,
    web_mkt_class             string,
    web_mkt_desc              string,
    web_market_manager        string,
    web_company_id            int,
    web_company_name          string,
    web_street_number         string,
    web_street_name           string,
    web_street_type           string,
    web_suite_number          string,
    web_city                  string,
    web_county                string,
    web_state                 string,
    web_zip                   string,
    web_country               string,
    web_gmt_offset            double,
    web_tax_percentage        double
)
clustered by (web_name) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists s_purchase_lineitem_text;
create table s_purchase_lineitem_text (
              plin_purchase_id           int,
              plin_line_number           int,
              plin_item_id            string,
              plin_promotion_id       string,
              plin_quantity              int,
              plin_sale_price         double,
              plin_coupon_amt         double,
              plin_comment            string
             ) 
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists s_purchase_text;
create table s_purchase_text (
              purc_purchase_id           int,
              purc_store_id           string,
              purc_customer_id        string,
              purc_purchase_date      string,
              purc_purchase_time         int,
              purc_register_id           int,
              purc_clerk_id              int,
              purc_comment            string
              )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists s_catalog_order_text;
create table s_catalog_order_text (
              cord_order_id              int,
              cord_bill_customer_id   string,
              cord_ship_customer_id   string,
              cord_order_date         string,
              cord_order_time            int,
              cord_ship_mode_id       string,
              cord_call_center_id     string,
              cord_order_comments     string
              )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists s_web_order_text;
create table s_web_order_text (
              word_order_id              int,
              word_bill_customer_id   string,
              word_ship_customer_id   string,
              word_order_date         string,
              word_order_time            int,
              word_ship_mode_id       string,
              word_web_site_id        string,
              word_order_comments     string,
              )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists s_catalog_order_lineitem_text;
create table s_catalog_order_lineitem_text (
              clin_order_id              int,
              clin_line_number           int,
              clin_item_id            string,
              clin_promotion_id       string,
              clin_quantity              int,
              clin_sales_price        double,
              clin_coupon_amt         double,
              clin_warehouse_id       string,
              clin_ship_date          string,
              clin_catalog_number        int,
              clin_catalog_page_number   int,
              clin_ship_cost          double
              )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists s_web_order_lineitem_text;
create table s_web_order_lineitem_text (
              wlin_order_id              int,
              wlin_line_number           int,
              wlin_item_id            string,
              wlin_promotion_id       string,
              wlin_quantity              int,
              wlin_sales_price        double,
              wlin_coupon_amt         double,
              wlin_warehouse_id       string,
              wlin_ship_date          string,
              wlin_ship_cost          double,
              wlin_web_page_id        string
              )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists s_store_returns_text;
create table s_store_returns_text (
              sret_store_id           string,
              sret_purchase_id        string,
              sret_line_number           int,
              sret_item_id            string,
              sret_customer_id        string,
              sret_return_date        string,
              sret_return_time        string,
              sret_ticket_number      string,
              sret_return_qty            int,
              sret_return_amount      double,
              sret_return_tax         double,
              sret_return_fee         double,
              sret_return_ship_cost   double,
              sret_refunded_cash      double,
              sret_reversed_charge    double,
              sret_store_credit       double,
              sret_reason_id          string
              )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists s_catalog_returns_text;
create table s_catalog_returns_text (
              cret_call_center_id     string,
              cret_order_id              int,
              cret_line_number           int,
              cret_item_id            string,
              cret_return_customer_id string,
              cret_refund_customer_id string,
              cret_return_date        string,
              cret_return_time        string,
              cret_return_qty            int,
              cret_return_amt         double,
              cret_return_tax         double,
              cret_return_fee         double,
              cret_return_ship_cost   double,
              cret_refunded_cash      double,
              cret_reversed_charge    double,
              cret_merchant_credit    double,
              cret_reason_id          string,
              cret_shipmode_id        string,
              cret_catalog_page_id    string,
              cret_warehouse_id       string
              )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists s_web_returns_text;
create table s_web_returns_text (
              wret_web_page_id        string,
              wret_order_id              int,
              wret_line_number           int,
              wret_item_id            string,
              wret_return_customer_id string,
              wret_refund_customer_id string,
              wret_return_date        string,
              wret_return_time        string,
              wret_return_qty            int,
              wret_return_amt         double,
              wret_return_tax         double,
              wret_return_fee         double,
              wret_return_ship_cost   double,
              wret_refunded_cash      double,
              wret_reversed_charge    double,
              wret_account_credit     double,
              wret_reason_id          string
              )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

drop table if exists s_inventory_text;
create table s_inventory_text (
              invn_warehouse_id       string,
              invn_item_id            string,
              invn_date               string,
              invn_qty_on_hand        int
              )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';


drop table if exists s_purchase_lineitem;
create table s_purchase_lineitem (  
              plin_purchase_id           int,
              plin_line_number           int,
              plin_item_id            string,
              plin_promotion_id       string,
              plin_quantity              int,
              plin_sale_price         double,
              plin_coupon_amt         double,
              plin_comment            string
             ) 
clustered by (plin_promotion_id) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists s_purchase;
create table s_purchase (  
              purc_purchase_id           int,
              purc_store_id           string,
              purc_customer_id        string,
              purc_purchase_date      string,
              purc_purchase_time         int,
              purc_register_id           int,
              purc_clerk_id              int,
              purc_comment            string
              )
clustered by (purc_store_id) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists s_catalog_order;
create table s_catalog_order (  
              cord_order_id              int,
              cord_bill_customer_id   string,
              cord_ship_customer_id   string,
              cord_order_date         string,
              cord_order_time            int,
              cord_ship_mode_id       string,
              cord_call_center_id     string,
              cord_order_comments     string
              )
clustered by (cord_ship_mode_id) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists s_web_order;
create table s_web_order (  
              word_order_id              int,
              word_bill_customer_id   string,
              word_ship_customer_id   string,
              word_order_date         string,
              word_order_time            int,
              word_ship_mode_id       string,
              word_web_site_id        string,
              word_order_comments     string,
              )
clustered by (word_web_site_id) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists s_catalog_order_lineitem;
create table s_catalog_order_lineitem (  
              clin_order_id              int,
              clin_line_number           int,
              clin_item_id            string,
              clin_promotion_id       string,
              clin_quantity              int,
              clin_sales_price        double,
              clin_coupon_amt         double,
              clin_warehouse_id       string,
              clin_ship_date          string,
              clin_catalog_number        int,
              clin_catalog_page_number   int,
              clin_ship_cost          double
              )
clustered by (clin_warehouse_id) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists s_web_order_lineitem;
create table s_web_order_lineitem (  
              wlin_order_id              int,
              wlin_line_number           int,
              wlin_item_id            string,
              wlin_promotion_id       string,
              wlin_quantity              int,
              wlin_sales_price        double,
              wlin_coupon_amt         double,
              wlin_warehouse_id       string,
              wlin_ship_date          string,
              wlin_ship_cost          double,
              wlin_web_page_id        string
              )
clustered by (wlin_warehouse_id) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists s_store_returns;
create table s_store_returns (  
              sret_store_id           string,
              sret_purchase_id        string,
              sret_line_number           int,
              sret_item_id            string,
              sret_customer_id        string,
              sret_return_date        string,
              sret_return_time        string,
              sret_ticket_number      string,
              sret_return_qty            int,
              sret_return_amount      double,
              sret_return_tax         double,
              sret_return_fee         double,
              sret_return_ship_cost   double,
              sret_refunded_cash      double,
              sret_reversed_charge    double,
              sret_store_credit       double,
              sret_reason_id          string
              )
clustered by (sret_store_id) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists s_catalog_returns;
create table s_catalog_returns (  
              cret_call_center_id     string,
              cret_order_id              int,
              cret_line_number           int,
              cret_item_id            string,
              cret_return_customer_id string,
              cret_refund_customer_id string,
              cret_return_date        string,
              cret_return_time        string,
              cret_return_qty            int,
              cret_return_amt         double,
              cret_return_tax         double,
              cret_return_fee         double,
              cret_return_ship_cost   double,
              cret_refunded_cash      double,
              cret_reversed_charge    double,
              cret_merchant_credit    double,
              cret_reason_id          string,
              cret_shipmode_id        string,
              cret_catalog_page_id    string,
              cret_warehouse_id       string
              )
clustered by (cret_warehouse_id) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists s_web_returns;
create table s_web_returns (  
              wret_web_page_id        string,
              wret_order_id              int,
              wret_line_number           int,
              wret_item_id            string,
              wret_return_customer_id string,
              wret_refund_customer_id string,
              wret_return_date        string,
              wret_return_time        string,
              wret_return_qty            int,
              wret_return_amt         double,
              wret_return_tax         double,
              wret_return_fee         double,
              wret_return_ship_cost   double,
              wret_refunded_cash      double,
              wret_reversed_charge    double,
              wret_account_credit     double,
              wret_reason_id          string
              )
clustered by (wret_web_page_id) into 3 buckets 
store as orc
tblproperties('transactiona'='true');

drop table if exists s_inventory;
create table s_inventory (  
              invn_warehouse_id       string,
              invn_item_id            string,
              invn_date               string,
              invn_qty_on_hand        int
              )
clustered by (invn_warehouse_id) into 3 buckets 
store as orc
tblproperties('transactiona'='true');


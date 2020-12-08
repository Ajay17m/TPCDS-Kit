drop table if exists  s_purchase_lineitem;
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
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';  
drop table if exists  s_purchase;
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
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';  
drop table if exists  s_catalog_order;
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
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';  
drop table if exists  s_web_order;
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
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';  
drop table if exists  s_catalog_order_lineitem;
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
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';  
drop table if exists  s_web_order_lineitem;
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
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';  
drop table if exists  s_store_returns;
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
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';  
drop table if exists  s_catalog_returns;
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
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';  
drop table if exists  s_web_returns;
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
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';
drop table if exists  s_inventory;
create table s_inventory (  
              invn_warehouse_id       string,
              invn_item_id            string,
              invn_date               string,
              invn_qty_on_hand        int
              )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';

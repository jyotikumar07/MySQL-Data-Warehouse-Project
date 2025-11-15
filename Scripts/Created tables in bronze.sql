use bronze;
drop table if exists bronze_crm_cust_info;
drop table if exists bronze_crm_prd_info;
drop table if exists bronze_crm_sales_details;

-- ==============================================
-- Table: Customer table from CRM in bronze layer 
-- ==============================================

Create table bronze_crm_cust_info(

cst_id INT,
cst_key varchar(20) primary key,
cst_firstname VARCHAR(20),
cst_lastname varchar(20),
cst_maritalstatus VARCHAR(10),
cst_gndr VARCHAR(10),
cst_create_date DATE
);

-- =============================================
-- Table: Product table from CRM in bronze layer 
-- =============================================

Create table bronze_crm_prd_info(

prd_id INT,
prd_key VARCHAR(50) primary key,
prd_nm VARCHAR(50),
prd_cost INT,
prd_line CHAR(10),
prd_start_dt DATETIME,
prd_end_dt DATETIME
);

-- ===================================================
-- Table: Sales details table from CRM in bronze layer 
-- ===================================================

Create table bronze_crm_sales_details(

sls_ord_num VARCHAR(50),
sls_prd_key VARCHAR(20) primary key,
sls_cst_id INT,
sls_order_dt DATE,
sls_ship_dt DATE,
sls_due_dt DATE,
sls_sales INT,
sls_quantity INT,
sls_price DECIMAL
);

-- ===================================================
-- Table: CUST_AZ12 table from ERP in bronze layer 
-- ===================================================

Create table bronze_erp_cust_az12(

 cid 		VARCHAR(50),
 bdate 		DATE,
 gen 		VARCHAR(10)

);


-- ===================================================
-- Table: LOC_A101 table from ERP in bronze layer 
-- ===================================================

Create table bronze_erp_loc_a101(

cid 		VARCHAR(50),
cntry 		VARCHAR(50)

);


-- ===================================================
-- Table: PX_CAT_G1V2 table from ERP in bronze layer 
-- ===================================================

Create table bronze_erp_px_cat_g1v2(

id 				INT,
cat 			VARCHAR(50),
subcat 			VARCHAR(50),
maintenance 	VARCHAR(10)

);







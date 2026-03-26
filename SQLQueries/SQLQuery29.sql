

select * from sales

---to find ordinal position

select * from INFORMATION_SCHEMA.columns where TABLE_NAME like 'sales'

-- to copy table 

select * into new_table from sales

select * from new_table

-- to copy in existing table

select top 0 * into new_tab from sales

select * from new_tab

-- to insert the data to existing table

insert into new_tab select * from sales

select * from new_tab

-- to insert only some columns

select * into new_t from sales where 1=0

select * from new_t

insert into new_t(productid,saledate ) select productid,saledate from sales

select * from new_t


select top 0 * into new from sales

select * from new

insert into new (quantity,CustomerID) select quantity,CustomerID from sales
	-- Step : 01
	/*************************************************************
	-- Gool : Create a new database called Accountancy.
	-- ***********************************************************
	-- Version    Date           Author      Description
	-- ******     **********     *******     **************
	-- 01         01-11-2022     JamilM       New 
	-- ***********************************************************/ 
	
	-- Check whether the database exists.
	DROP DATABASE IF EXISTS Accountancy;

	-- Create a new database.
	CREATE DATABASE IF NOT EXISTS Accountancy;
	
	-- Use Accountancy database.
	USE  Accountancy;
		
	-- Step : 02
	/**************************************************************
	-- Gool : Create a new table called Invoice.
	-- ************************************************************
	-- Version    Date           Author      Description
	-- ******     **********     *******     **************
	-- 01         01-11-2022     JamilM       New 
	-- ************************************************************/ 
	
	-- Check whether the table Invoice exists.
	DROP TABLE IF EXISTS Invoice;
	
	-- Create a table Invoice whether not exists
	CREATE TABLE IF NOT EXISTS Invoice
	(
		 Id 				INT 			UNSIGNED	NOT NULL	AUTO_INCREMENT
		,InvoiceNumber		MEDIUMINT		UNSIGNED 	NOT NULL	UNIQUE
		,InvoiceDate		DATE						NOT NULL
		,ProductName		VARCHAR(100) 				NOT NULL	UNIQUE
		,Amount				DECIMAL(5,2)				NOT NULL
		,IsActive			BIT							NOT NULL	DEFAULT 1                      
		,Note    			VARCHAR(200)      				NULL	DEFAULT NULL
		,DateCreated   		DATETIME(6)					NOT NULL
		,DateModified		DATETIME(6)					NOT NULL	
		
		,CONSTRAINT PK_Invoice_Id PRIMARY KEY CLUSTERED(Id)
		
	)ENGINE=InnoDB;

	-- Step : 03
	/**************************************************************
	-- Gool : Fill table Invoice with data.
	-- ************************************************************
	-- Version    Date           Author      Description
	-- ******     **********     *******     **************
	-- 01         01-11-2022     JamilM       New 
	-- ************************************************************/ 
	
	INSERT INTO Invoice
	(
		 InvoiceNumber 		
		,InvoiceDate 	
		,ProductName  
		,Amount 		  
		,IsActive    
		,Note 
		,DateCreated 
		,DateModified   
	)
	VALUES 
	 (123456, '2022-10-01', 'Cheese', 1.21,  1, NULL, SYSDATE(), SYSDATE())
	,(123457, '2022-10-02', 'Banana', 4.65,  1, NULL, SYSDATE(), SYSDATE())
	,(123458, '2022-10-03', 'Bread',  3.35,  1, NULL, SYSDATE(), SYSDATE())
	,(123459, '2022-10-04', 'Tomato', 4.53,  1, NULL, SYSDATE(), SYSDATE())
	,(123451, '2022-10-05', 'Coffee', 1.63,  1, NULL, SYSDATE(), SYSDATE())
CREATE DATABASE IF NOT EXISTS db_wbapp;
USE db_wbapp;
DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE `tbl_users` (
  `user_id` int(8) unsigned NOT NULL auto_increment, 
  `user_lastname` varchar(180) NOT NULL default '',
  `user_firstname` varchar(180) NOT NULL default '',
  `user_email` varchar(180) NOT NULL default '',
  `user_password` varchar(180) NOT NULL default '',
  `user_access` varchar(180) NOT NULL default '',
  PRIMARY KEY  (`user_id`)
);

DROP TABLE IF EXISTS `tbl_productinv`;
CREATE TABLE `tbl_productinv` (
  `product_id` int(180) unsigned NOT NULL auto_increment, 
  `product_qty` varchar(180) NOT NULL, 
  `batch_date` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`product_id`) 
);

DROP TABLE IF EXISTS `tbl_products`;
CREATE TABLE `tbl_products` (
  `order_id` int(8) unsigned NOT NULL auto_increment, 
  `product_id` int(8) NOT NULL, 
  `order_qty` varchar(180) NOT NULL default '',
  `order_amt` varchar(180) NOT NULL default '',
  KEY (`product_id`),
  PRIMARY KEY  (`order_id`)
);

DROP TABLE IF EXISTS `tbl_orders`;
CREATE TABLE `tbl_orders` (
  `order_id` int(8) unsigned NOT NULL auto_increment, 
  `order_date` date NOT NULL default '0000-00-00',
  `total_orderamt` varchar(180) NOT NULL default '',
  `total_orderqty` varchar(180) NOT NULL default '',
  KEY (`order_id`)
);

DROP TABLE IF EXISTS `tbl_sales`;
CREATE TABLE `tbl_sales` (
  `sales_id` int(8) unsigned NOT NULL auto_increment, 
  `order_id` int(8) NOT NULL, 
  `order_date` date NOT NULL default '0000-00-00',
  `sales_amt` varchar(180) NOT NULL default '',
  `sales_qty` varchar(180) NOT NULL default '',
  PRIMARY KEY (`sales_id`),
  KEY (`order_id`)
);

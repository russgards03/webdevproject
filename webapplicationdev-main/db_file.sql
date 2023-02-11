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

DROP TABLE IF EXISTS `tbl_products`;
CREATE TABLE `tbl_products` (
  `product_id` int(8) unsigned NOT NULL auto_increment, 
  `product_name` varchar(180) NOT NULL default '',
  `product_price` varchar(180) NOT NULL default '',
  PRIMARY KEY  (`product_id`)
);

DROP TABLE IF EXISTS `tbl_orders`;
CREATE TABLE `tbl_orders` (
  `order_id` int(8) unsigned NOT NULL auto_increment, 
  `product_id` int(8) NOT NULL,
  `product_name` varchar(180) NOT NULL default '',
  `order_date` date NOT NULL default '0000-00-00',
  KEY (`product_id`),
  KEY (`product_name`),
  PRIMARY KEY  (`order_id`)
);

DROP TABLE IF EXISTS `tbl_productamt`;
CREATE TABLE `tbl_productamt` (
  `product_qty` int(180) unsigned NOT NULL auto_increment, 
  `product_id` varchar(180) NOT NULL,
  KEY (`product_id`),
  PRIMARY KEY  (`product_qty`) 
);

DROP TABLE IF EXISTS `tbl_orderamt`;
CREATE TABLE `tbl_orderamt` (
  `order_qty` int(50) unsigned NOT NULL auto_increment, 
  PRIMARY KEY  (`order_qty`)
);

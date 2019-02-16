-- ENABLED TINYINT NOT NULL DEFAULT 1  TO DISABLE USER
-- GET USER CONTACT DETAILS OUT OF USER TABLE
-- refer http://www.mkyong.com/spring-security/spring-security-form-login-using-database/ for db design

--  Create LMS Database 
CREATE DATABASE IF NOT EXISTS lms;
use lms;

--  Create Books Table
CREATE TABLE IF NOT EXISTS `lms`.`book` (
  `id` int(11) NOT NULL,
  `ISBN_NO` varchar(100) DEFAULT NULL,
  `Book_Title` varchar(200) DEFAULT NULL,
  `Author_Name` varchar(100) DEFAULT NULL,
  `Language` varchar(40) DEFAULT NULL,
  `Purchase_Date` date DEFAULT NULL,
  `Edition` varchar(40) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT '0.00',
  `Pages` int(11) DEFAULT NULL,
  `Publisher` varchar(140) DEFAULT NULL,
  PRIMARY KEY ( `id` ) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ENABLED TINYINT NOT NULL DEFAULT 1  TO DISABLE USER
-- GET USER CONTACT DETAILS OUT OF USER TABLE

--  Create Users Table
CREATE TABLE IF NOT EXISTS `lms`.`users` (
`id` int( 11 ) NOT NULL AUTO_INCREMENT ,
`username` varchar( 30 ) NOT NULL ,
`email` varchar( 50 ) NOT NULL ,
`password` varchar( 128 ) NOT NULL ,
`first_name` varchar( 50 ),
`address` varchar( 100 ),
PRIMARY KEY ( `id` ) ,
UNIQUE KEY `username` ( `username` )
) ENGINE = InnoDB DEFAULT CHARSET = utf8;


--  Create User Role Table
CREATE TABLE IF NOT EXISTS `lms`.`user_roles` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar( 30 ) NOT NULL ,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`user_role_id`),
  UNIQUE KEY uni_username_role (`role`,`username`),
  KEY fk_username_idx (`username`),
  CONSTRAINT fk_username FOREIGN KEY (`username`) REFERENCES users(`username`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--  Create Book Copy Table which tells abouts which book issued by whom
CREATE TABLE IF NOT EXISTS `lms`.`book_copy` (
`id` int( 11 ) NOT NULL AUTO_INCREMENT ,
`book_id` int( 11 ) NOT NULL,
`user_id` int( 11 ) NOT NULL,
PRIMARY KEY ( `id` )
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- this table gives when to checkout the issued books
CREATE TABLE IF NOT EXISTS `lms`.`checkout` (
`id` int( 11 ) NOT NULL AUTO_INCREMENT ,
`book_copy_id` int( 11 ) NOT NULL,
`date_checked_out` date DEFAULT NULL,
PRIMARY KEY ( `id` )
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

ALTER TABLE book_copy
ADD CONSTRAINT FK_bookOrder
FOREIGN KEY (book_id) REFERENCES book(id);

ALTER TABLE book_copy
ADD CONSTRAINT FK_usersOrder
FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE checkout
ADD CONSTRAINT FK_BookCopyCheckout
FOREIGN KEY (book_copy_id) REFERENCES book_copy(id);

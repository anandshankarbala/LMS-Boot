-- ENABLED TINYINT NOT NULL DEFAULT 1  TO DISABLE USER
-- GET USER CONTACT DETAILS OUT OF USER TABLE
-- refer http://www.mkyong.com/spring-security/spring-security-form-login-using-database/ for db design


CREATE DATABASE IF NOT EXISTS lms;
use lms;

CREATE TABLE `lms`.`book` (
  `id` int(10) UNSIGNED NOT NULL,
  `ISBN_NO` varchar(100) DEFAULT NULL,
  `Book_Title` varchar(200) DEFAULT NULL,
  `Author_Name` varchar(100) DEFAULT NULL,
  `Language` varchar(40) DEFAULT NULL,
  `Purchase_Date` date DEFAULT NULL,
  `Edition` varchar(40) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT '0.00',
  `Pages` int(11) DEFAULT NULL,
  `Publisher` varchar(140) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `book` (`id`, `ISBN_NO`, `Book_Title`, `Author_Name`, `Language`,`Purchase_Date`, `Edition`, `Price`, `Pages`, `Publisher`) VALUES
(1, '62781733', 'River  Between', 'Ngugi wa Thiongo','English', '2018-02-24', '1', '300.00', 120, 'Longhorn'),
(2, '1234567129391', 'Mayavalai', 'Pa Ragavan','Tamil', '2018-02-24', NULL, '500.00', 432, 'Mathi Nilayam'),
(3, '81-7371-146-1', 'Wings of Fire', '	A P J Abdul Kalam','English', '2018-02-24', NULL, '450.00', 133, 'Scholastic Corporation');

-- ENABLED TINYINT NOT NULL DEFAULT 1  TO DISABLE USER
-- GET USER CONTACT DETAILS OUT OF USER TABLE

CREATE TABLE `lms`.`member` (
`id` int( 11 ) NOT NULL AUTO_INCREMENT ,
`username` varchar( 30 ) NOT NULL ,
`email` varchar( 50 ) NOT NULL ,
`password` varchar( 128 ) NOT NULL ,
`first_name` varchar( 50 ),
`address` varchar( 100 ),
PRIMARY KEY ( `id` ) ,
UNIQUE KEY `username` ( `username` )
) ENGINE = MYISAM DEFAULT CHARSET = utf8;

INSERT INTO `member`(`username`, `email`, `password`,`first_name`,`address`) VALUES ('admin','andshr.2020@gmail.com','root','Anand','Pondy');


CREATE TABLE `lms`.`book_copy` (
`id` int( 11 ) NOT NULL AUTO_INCREMENT ,
`book_id` int( 11 ) NOT NULL,
`member_id` int( 11 ) NOT NULL,
PRIMARY KEY ( `id` )
) ENGINE = MYISAM DEFAULT CHARSET = utf8;

CREATE TABLE `lms`.`checkout` (
`id` int( 11 ) NOT NULL AUTO_INCREMENT ,
`book_copy_id` int( 11 ) NOT NULL,
`date_checked_out` date DEFAULT NULL,
PRIMARY KEY ( `id` )
) ENGINE = MYISAM DEFAULT CHARSET = utf8;

ALTER TABLE book_copy
ADD CONSTRAINT FK_bookOrder
FOREIGN KEY (book_id) REFERENCES book(id);

ALTER TABLE book_copy
ADD CONSTRAINT FK_memberOrder
FOREIGN KEY (member_id) REFERENCES member(id);

ALTER TABLE checkout
ADD CONSTRAINT FK_BookCopyCheckout
FOREIGN KEY (book_copy_id) REFERENCES book_copy(id);


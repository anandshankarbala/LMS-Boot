INSERT INTO `book` (`id`, `ISBN_NO`, `Book_Title`, `Author_Name`, `Language`,`Purchase_Date`, `Edition`, `Price`, `Pages`, `Publisher`) VALUES
(1, '62781733', 'River  Between', 'Ngugi wa Thiongo','English', '2018-02-24', '1', '300.00', 120, 'Longhorn'),
(2, '1234567129391', 'Mayavalai', 'Pa Ragavan','Tamil', '2018-02-24', NULL, '500.00', 432, 'Mathi Nilayam'),
(3, '81-7371-146-1', 'Wings of Fire', '	A P J Abdul Kalam','English', '2018-02-24', NULL, '450.00', 133, 'Scholastic Corporation');

INSERT INTO `users`(`id`,`username`, `email`, `password`,`first_name`,`address`) VALUES ('1000','anands','andshr.2020@gmail.com','root','Anand','Pondy');
INSERT INTO `users`(`id`,`username`, `email`, `password`,`first_name`,`address`) VALUES ('1002','dummy777','dummy7969@gmail.com','root','Anand','Chennai');

INSERT INTO `user_roles`(`user_id`,`role`) VALUES ('1000','ROLE_ADMIN');
INSERT INTO `user_roles`(`user_id`,`role`) VALUES ('1000','ROLE_USER');
INSERT INTO `user_roles`(`user_id`,`role`) VALUES ('1002','ROLE_USER');

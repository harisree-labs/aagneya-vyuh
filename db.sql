create database vyuh;

create user 'vyuh'@'localhost' identified by 'vyuh123';

grant all on vyuh.* to 'vyuh'@'localhost';

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `college` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `semester` int(11) NOT NULL,
  `city` varchar(25) NOT NULL,
  `level` int(11) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lifeline` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `status` enum('ACTIVE','INACTIVE','TERMINATED','SUSPECTED') NOT NULL,
  `profile_picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `serial_number` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` varchar(100) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `type` enum('IMAGE','TEXT','AUDIO','VIDEO') NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


CREATE TABLE `vyuh`.`hint` (
 `id` INT NOT NULL AUTO_INCREMENT,
 `level_id` INT NOT NULL,
 `hint` TEXT NOT NULL ,
 `active` TINYINT NOT NULL ,
 `date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
 PRIMARY KEY (`id`)
) ENGINE = InnoDB;



CREATE TABLE `vyuh`.`history` (
 `id` INT NOT NULL AUTO_INCREMENT ,
 `user_id` INT NOT NULL ,
 `type` INT NOT NULL , 
 `date` TIMESTAMP NOT NULL ,
 `current_level` INT NOT NULL ,
 `ip` VARCHAR(100) NOT NULL ,
 PRIMARY KEY (`id`)
) ENGINE = InnoDB;


CREATE TABLE `vyuh`.`trials` (
 `id` INT NOT NULL AUTO_INCREMENT ,
 `user_id` INT NOT NULL ,
 `level_id` INT NOT NULL ,
 `user_input` VARCHAR(100) NOT NULL ,
 `malicious` TINYINT NOT NULL ,
 `ip` VARCHAR(100) NOT NULL ,
 `date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
 PRIMARY KEY (`id`)
) ENGINE = InnoDB;

ALTER TABLE `history` CHANGE `type` `type` ENUM('LOGIN','LOGOUT','LEVELUP','OTHER') NOT NULL;

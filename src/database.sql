CREATE DATABASE IF NOT EXISTS company;

USE company;

CREATE TABLE `company`.`employee`  (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  PRIMARY KEY (`id`)
);

DESCRIBE employee;

INSERT INTO employee VALUES
    (1,'Ryan Ray', 28000),
    (2,'Joe McMilan', 49000),
    (3,'Jhon Carter', 15900);
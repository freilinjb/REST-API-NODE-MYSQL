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


CREATE PROCEDURE employeeAddEdit(
  IN _id INT,
  IN _name VARCHAR(50),
  IN _salary INT 
)
BEGIN
  IF _id = 0 THEN
    INSERT INTO employee (name, salary)
      VALUES(_name,_salary);
    SET _id = LAST_INSERT_ID();

  ELSE
    UPDATE employee
    SET
      name = _name,
      salary = _salary
      WHERE id = _id;
    END IF;

    SELECT _id AS id;
END
ALTER TABLE employees
  ADD salary INT NULL DEFAULT NULL AFTER jobTitle,
  ADD date_hired DATE NULL DEFAULT NULL AFTER salary,
  ADD date_fired DATE NULL DEFAULT NULL AFTER date_hired;

 UPDATE employees
    SET salary = CASE
        WHEN jobTitle LIKE 'President' THEN employeeNumber * 8
        WHEN jobTitle LIKE '%VP%' THEN employeeNumber * 7
        WHEN jobTitle LIKE '%Manager%' THEN employeeNumber * 6
        ELSE employeeNumber * 3
    END;

UPDATE employees 
   SET date_hired=CAST(CONCAT(2000+officeCode,'-',officeCode, '-',(officeCode*4)) AS DATE);

UPDATE employees
   SET date_fired = CASE
       WHEN extension LIKE '%9%' THEN CAST(CONCAT(2000 + officeCode * 3, '-', officeCode + 2, '-', (officeCode * 4 - 3)) AS DATE)
       ELSE NULL
   END;


CREATE TABLE IF NOT EXISTS employee_archive (
    employeeNumber INT PRIMARY KEY,
    lastName VARCHAR(50) NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    extension VARCHAR(10) NOT NULL,
    email VARCHAR(100) NOT NULL,
    officeCode VARCHAR(10) NOT NULL,
    reportedTo INT,
    jobTitle VARCHAR(50) NOT NULL,
    salary INT,
    date_hired DATE NOT NULL,
    date_fired DATE NOT NULL,
    -- FOREIGN KEY (officeCode) REFERENCES offices (officeCode)
);
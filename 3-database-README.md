1. Create MySQL Container and Database
   
    Created a MySQL container named "mysql-container" and initialized a database named "company".
   
    Entered a password during the setup process.
   

![image](https://github.com/MarinaMihaela/DevOps/assets/103567835/468d59ea-b076-421b-8055-e8ba4e9305ca)

2. Import Data into the 'company' Database
   
    Copied the 'company.sql' file into the container and imported the SQL dump file into the 'company' database.

![image](https://github.com/MarinaMihaela/DevOps/assets/103567835/34b28b2d-6408-4daa-afe9-567fa0840b76)


3. Display Database and Correct Mistakes
   
   Displayed the database and rectified any errors encountered during the import process.

![image](https://github.com/MarinaMihaela/DevOps/assets/103567835/28232b10-92fe-487b-916d-919addf75aa8)


4. Create User and Assign Permissions
   
   Created a user named "marina" and granted all privileges to the 'company' database

CREATE USER 'marina'@'%' IDENTIFIED BY 'mihaela';

GRANT ALL PRIVILEGES ON company.* TO 'marina'@'%';

FLUSH PRIVILEGES;

![image](https://github.com/MarinaMihaela/DevOps/assets/103567835/2dffcaf4-4cb6-49d5-89f8-a5a2a5cb6d48)

5. Calculate Average Salary for Each Department
   
   Calculated the average salary for each department using SQL queries.

SELECT d.department_name, AVG(e.salary) AS average_salary

FROM employees e

INNER JOIN departments d ON e.department = d.department_id

GROUP BY d.department_name;


![image](https://github.com/MarinaMihaela/DevOps/assets/103567835/b9c75496-c0e8-40ad-970d-f29e93ed7c99)





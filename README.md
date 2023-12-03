# PEWLETT HACKARD EMPLOYEE ANALYSIS (1980's and 1990's)

## Engineering/Modeling Overview

This project examines the employees of Pewlett Hackard from the 1980s and 1990's. It takes the company's [CSV files](EmployeeSQL/data) and imports them into a Postgresql database in the following tables:

<ul>
    <li><b>titles:</b> outlines the company's job titles and title ids</li>
    <li><b>departments:</b> outlines the company's department names and ids</li>
    <li><b>employees:</b> outlies the demographic information of employees including employee id numbers, title id, name, birthdate, sex and date of hire</li>
    <li><b>salaries:</b> lists the salaries of all employees by employee id number</li>
    <li><b>dept_employee:</b> links employees by employee id to their respective department(s) by department number</li>
    <li><b>dept_manager:</b> links employees to their respective departments for all employees with a manager title</li>
</ul>

The ERD image for the above tables can be found in the [ERD_Employee_Info file](EmployeeSQL/ERD_Employee_Info)

The table schema SQL file can be found in the [Employee_Info_Table_Shemata file](EmployeeSQL/Employee_Info_Table_Shemata.sql)

## Data Analysis Overview

This database was queried to answer the following questions:

<ol>
   <li>List the employee number, last name, first name, sex, and salary of each employee </li>
   <li>List the first name, last name, and hire date for the employees who were hired in 1986</li>
   <li>List the manager of each department along with their department number, department name, employee number, last name, and first name </li>
   <li>List the department number for each employee along with that employee’s employee number, last name, first name, and department name</li>
   <li>List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B </li>
   <li>List each employee in the Sales department, including their employee number, last name, and first name</li>
   <li>List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name </li>
   <li>List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) </li>
</ol>

The above queries can be found in the [Employee_Info_Queries file](EmployeeSQL/Employee_Info_Queries.sql)




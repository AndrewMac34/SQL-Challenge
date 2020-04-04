Select "Employees".emp_no,last_name,first_name,gender,salary
from "Employees" 
Inner Join "Salaries" on "Employees" .emp_no = "Salaries" .emp_no
Order by last_name;

Select "Employees".emp_no,last_name,first_name,hire_date
from "Employees" 
Where hire_date between '19860101' and '19861231'
Order by hire_date;

Select "Dept_Manager" .emp_no,last_name, first_name,"Dept_Manager" .dept_no , dept_name
,  hire_date, "Dept_Emp" .to_date as end_date
from "Dept_Manager"
Inner Join "Dept_Emp" on "Dept_Manager" .emp_no = "Dept_Emp" .emp_no
Inner Join "Departments" on "Dept_Emp" .dept_no = "Departments" .dept_no
Inner Join "Employees" on "Dept_Manager" .emp_no = "Employees" .emp_no
Order by "Dept_Manager".emp_no;



Select dept_name,last_name
from "Employees" 
Inner Join "Dept_Emp" on "Employees" .emp_no = "Dept_Emp" .emp_no
Inner Join "Departments" on "Dept_Emp" .dept_no = "Departments" .dept_no
Order by last_name;

Select first_name, last_name
from "Employees"
Where first_name='Hercules' and left(last_name,1)='B'
Order by last_name;

Select "Employees".emp_no,last_name,first_name,dept_name
from "Employees" 
Inner Join "Dept_Emp" on "Employees" .emp_no = "Dept_Emp" .emp_no
Inner Join "Departments" on "Dept_Emp" .dept_no = "Departments" .dept_no
Where dept_name='Sales'
Order by last_name;

Select "Employees".emp_no,last_name,first_name,dept_name
from "Employees" 
Inner Join "Dept_Emp" on "Employees" .emp_no = "Dept_Emp" .emp_no
Inner Join "Departments" on "Dept_Emp" .dept_no = "Departments" .dept_no
Where dept_name='Sales' or dept_name='Development'
Order by last_name;

Select last_name,count(last_name) as Tally
from "Employees"
Group by last_name
order by Tally desc;
-- join deptartments and dep_manager tables on dept_no
select departments.dept_name, -- select only columns you want from each table
	dept_managers.emp_no,
	dept_managers.from_date,
	dept_managers.to_date
from departments -- first (left) table to be joined
inner join dept_managers -- second (right) table to be joined
on departments.dept_no = dept_managers.dept_no; -- look for matches 

-- join retirement_info and dept_emp to get to_date and remove employees no longer at the company
select ri.emp_no,
	ri.first_name,
	ri.last_name,
	de.to_date
into current_emp
from retirement_info as ri
left join dept_emp as de
on ri.emp_no = de.emp_no
where de.to_date = ('9999-01-01');
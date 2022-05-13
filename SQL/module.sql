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

-- retiring employee count by dept number and export into new table
select count (ce.emp_no), de.dept_no
into dept_retire
from current_emp as ce
left join dept_emp as de
on ce.emp_no = de.emp_no
group by de.dept_no
order by de.dept_no;

-- begin creating 3 lists: 
-- employee info (emp_no, last, first, gender, salary)
-- management (managers for each dept, dept_no, name, emp_no, last, first, start and end employment dates)
-- dept retirees (updated current_emp list plus employee's dept)
select e.emp_no, 
e.first_name, 
e.last_name,
e.gender,
s.salary,
de.to_date
into emp_info
from employees as e
inner join salaries as s
on (e.emp_no = s.emp_no)
inner join dept_emp as de
on (e.emp_no = de.emp_no)
where (e.birth_date between '1952-01-01' and '1955-12-31')
and (e.hire_date between '1985-01-01' and '1988-12-31')
and (de.to_date = '9999-01-01');

select dm.dept_no,
	d.dept_name,
	dm.emp_no,
	last_name,
	first_name,
	dm.from_date,
	dm.to_date
into manager_info
from dept_managers as dm
inner join departments as d
	on (dm.dept_no = d.dept_no)
	inner join current_emp as ce
	on (dm.emp_no = ce.emp_no);

select ce.emp_no,
	ce.first_name,
	ce.last_name,
	d.dept_name
-- into dept_info
from current_emp as ce
inner join dept_emp as de
on (ce.emp_no = de.emp_no)
inner join departments as d
on (de.dept_no = d.dept_no);

-- Employee count by department number
select count(ce.emp_no), 
de.dept_no
from current_emp as ce
left join dept_emp as de
on ce.emp_no = de.emp_no
group by de.dept_no
order by de.dept_no;

-- Count employees retiring based on dept
select count(ce.emp_no), 
de.dept_no,
d.dept_name
from current_emp as ce
left join dept_emp as de
on ce.emp_no = de.emp_no
left join departments as d
on de.dept_no = d.dept_no
group by de.dept_no, d.dept_name
order by de.dept_no;
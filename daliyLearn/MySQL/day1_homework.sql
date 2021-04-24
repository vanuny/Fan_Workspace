SELECT
	*
FROM
	employees
# 1.  查询工资大于 12000 的员工姓名和工资
SELECT
	CONCAT(last_name ,' ', first_name) AS 姓名,
	salary
FROM
	employees
WHERE
	salary>12000;

 
#2.  查询员工号为 176 的员工的姓名和部门号和年薪 
SELECT
	last_name,
	first_name,
	department_id,
	salary*12*(1+IFNULL(commission_pct,0)) AS 年薪
FROM
	employees
WHERE
	`employee_id` = 176;

#3.  选择工资不在 5000 到 12000 的员工的姓名和工资 
SELECT
	CONCAT(last_name ,' ', first_name) AS 姓名,
	salary
FROM
	employees
WHERE
	salary>12000 OR salary <5000;


#4.  选择在 20 或 50 号部门工作的员工姓名和部门号   
SELECT
	CONCAT(last_name ,' ', first_name) AS 姓名,
	department_id
FROM
	employees
WHERE
	department_id = 20 OR department_id =50;

# 5.  选择公司中没有管理者的员工姓名及 job_id 
SELECT
	CONCAT(last_name ,' ', first_name) AS 姓名,
	job_id,
	manager_id
FROM
	employees
WHERE
	manager_id IS NULL;

# 6.  选择公司中有奖金的员工姓名，工资和奖金级别 
SELECT
	CONCAT(last_name ,' ', first_name) AS 姓名,
	salary,
	commission_pct
FROM
	employees
WHERE
	commission_pct IS NOT NULL;

# 7.  选择员工姓名的第三个字母是 a 的员工姓名 
SELECT
	*
FROM
	employees
WHERE
	last_name LIKE '__a%'


# 8.  选择姓名中有字母 a 和 e 的员工姓名
SELECT
	*
FROM
	employees
WHERE
	last_name LIKE '%a%' OR  last_name LIKE '%e%';

 
# 9.  显示出表 employees 表中  first_name  以  'e'结尾的员工信息 
SELECT
	*
FROM
	employees
WHERE
	first_name LIKE '%e' ;

# 10.  显示出表 employees 部门编号在 80-100 之间  的姓名、职位 
SELECT
	CONCAT(first_name,' ',last_name) AS 姓名,
	job_id
FROM
	employees
WHERE
	department_id BETWEEN 80 AND 100;

# 11.  显示出表 employees 的 manager_id  是  100,101,110  的员工姓名、职位 
SELECT
	CONCAT(first_name,' ',last_name) AS 姓名,
	job_id
FROM
	employees
WHERE
	manager_id =100 OR manager_id =101 OR manager_id =110;

#----------------

SELECT
	CONCAT(first_name,' ',last_name) AS 姓名,
	job_id
FROM
	employees
WHERE
	manager_id IN (100,101,110);



#---------------------------
#查询没有奖金,且工资小于18000的salary,last_name
SELECT
	salary,last_name
FROM
	employees
WHERE
	commission_pct IS NULL 
AND
	salary<18000;

#---------------------------
# 查询employee 表中,job_id不为'IT'或者工资为12000的员工信息
SELECT
	last_name,
	first_name,
	job_id,
	salary
FROM
	employees
WHERE
	job_id NOT LIKE 'IT%'
OR 
	salary = 12000;
	
#---------------------------
# 查询表结构
DESC departments;
#-----------------
#查询departments表中涉及到了哪些位置编号(去重
SELECT 
	DISTINCT location_id
FROM
	departments
	
#--------------------------
#面试题:
#select * from employees
#和 select * from employees where commission_pct like '%%' and last_name like '%%'

不一样!如果判断的字段有null值




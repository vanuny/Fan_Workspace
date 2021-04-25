`customers`#进阶3:排序查询
/*
引入:
	select * from employees;
语法:
	select 查询列表
	from 表
	[where 筛选条件]
	order by 排序列表 [asc|desc]
特点:
	1.asc代表升序,desc代表降序
	如果不写,默认是升序asc
	2.order by 子句一般放在查询语句的最后,limit子句除外
*/
#查询员工信息,要求工资从高到低排序

SELECT
	*
FROM 
	employees
ORDER BY
	salary DESC;
	
#查询员工信息,要求工资从低到高排序

SELECT
	*
FROM 
	employees
ORDER BY
	salary ;


# 查询部门编号>=90的员工信息,按入职时间的先后进行排序
SELECT
	*
FROM
	employees
WHERE
	department_id >=90
ORDER BY
	hiredate  ASC;

# 案例3:[按表达式排序] 
# 按员工的年薪高低显示员工的信息 和 年薪

SELECT
	*,
	salary*12*(1+IFNULL(commission_pct,0)) AS 年薪
FROM 
	employees
ORDER BY
	年薪 DESC;
	
# 案例4:

SELECT
	*,
	salary*12*(1+IFNULL(commission_pct,0)) AS 年薪
FROM 
	employees
ORDER BY
	salary*12*(1+IFNULL(commission_pct,0)) DESC;

# 按姓名的长度显示员工的姓名和工资 [按函数排序]
SELECT
	LENGTH(last_name) 字节长度,
	last_name,
	salary
FROM
	employees
ORDER BY
	字节长度 DESC

# 查询员工信息,要求先按工资排序,再按员工编号排序

SELECT 
	*
FROM 
	employees
ORDER BY
	salary ASC,
	employee_id DESC
	

# 1.  查询员工的姓名和部门号和年薪，按年薪降序  按姓名升序 

SELECT
	last_name,
	first_name,
	department_id,
	salary*12*(1+IFNULL(commission_pct,0))AS 年薪
FROM 
	employees
ORDER BY 
	年薪 DESC,
	last_name ASC


#2.  选择工资不在 8000 到 17000 的员工的姓名和工资，按工资降序

SELECT 
	last_name,
	salary
FROM
	employees
WHERE
	salary >17000 OR salary <8000
ORDER BY
	salary DESC;
 
# 3.  查询邮箱中包含 e 的员工信息，并先按邮箱的字节数降序，再按部门号升序 
SELECT
	*
FROM 
	employees
WHERE
	email LIKE '%e%'
ORDER BY
	LENGTH(email) DESC,
	department_id ;


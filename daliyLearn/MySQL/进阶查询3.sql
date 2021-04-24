#进阶3:排序查询
/*
引入:
	select * from employees;
语法:
	select 查询列表
	from 表
	[where 筛选条件]
	order by 排序列表 [asc|desc]
特点:
	asc代表升序,desc代表降序
	如果不写,默认是升序
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
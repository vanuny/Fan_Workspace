
#1.  下面的语句是否可以执行成功(可以     
SELECT last_name , job_id , salary AS sal 
FROM employees;   
#2.  下面的语句是否可以执行成功（可以     
SELECT    *    FROM employees; 

  
#3.  找出下面语句中的错误   
SELECT employee_id , last_name, 
salary * 12    'ANNUAL    SALARY'
FROM employees; 


4.  显示表 departments 的结构，并查询其中的全部数据
DESC departments;
SELECT * FROM departments;

5.  显示出表 employees 中的全部 job_id（不能重复） 
SELECT DISTINCT job_id FROM employees;

6.  显示出表 employees 的全部列，各个列之间用逗号连接，列头显示成 OUT_PUT 

SELECT IFNULL(`commission_pct`,0) AS 奖金率,
	commission_pct
FROM
	employees;

SELECT
	CONCAT(`first_name`,',',
	`last_name`,',',
	`email`,',',
	`phone_number`,',',
	`job_id`,',',
	`salary`,',',
	IFNULL(`commission_pct`,0),
	IFNULL(`manager_id`,100),
	`department_id`,',',
	`hiredate`) AS out_put
FROM
	employees;

#进阶2:条件查询
/*
select 
	查询列表
from
	表名
where
	筛选条件

分类：
	一、按条件表达式筛选
	条件运算符：> < != <>不等 >= <=
	
	二、逻辑表达式筛选
	&& || ！
	and or not
	
	三、模糊查询
		like
		between and
		in 
		is null
		
	

*/
#工资大于12000的员工信息

SELECT 
	*
FROM
	employees
WHERE
	salary>12000;
	
#查询部门编号不等于90号的员工名和部门编号

SELECT last_name,
	department_id
FROM 
	employees
WHERE
	department_id<>90;
	
#二、按逻辑运算符筛选

SELECT 
	last_name,
	salary,
	commission_pct
FROM
	employees
WHERE
	salary>=10000 AND salary <=20000;

#查询部门编号不是在90到100之间，或者工资高于15000的
	#员工信息
SELECT
	*
FROM
	employees
WHERE
	department_id<=90 OR department_id>=100 OR salary >15000;



#模糊查询
/*
like
一般和通裴谞搭配使用
	通配符
	% 任意多个字符，包含0个字符
	_ 任意单个字符


between and
in
is null  is not null

*/

#查询员工名中包含字符a的员工信息

SELECT
	*
FROM
	employees
WHERE 
	last_name LIKE '%a%';#百分号代表通配符

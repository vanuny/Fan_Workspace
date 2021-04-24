
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
	
/*

between and
注意事项：
1。提高代码简洁度
2。between and 包含临界值
3。临界值不要更换顺序

*/
# 查询员工编号100到120之间的员工信息
SELECT 
	*
FROM
	employees
WHERE
	employee_id >=100 AND employee_id<=120;
	
#---------------------
SELECT 
	*
FROM
	employees
WHERE
	employee_id BETWEEN 100 AND 120;

#3.in关键字
/*
判断某字段的值是否属于In列表中的一项
特点：
	1.提高代码简洁度
	2.in列表的值类型必须一致或者兼容

*/

#案例:查询员工的工种编号是IT_PROG/AG_VP/AD_PRES的一个员工名和工种编号
SELECT
	last_name,
	job_id
FROM
	employees
WHERE 
	job_id = 'IT_PROG' OR job_id ='AD_VP'OR job_id ='AD_PRES'
	
#--------------------------------

SELECT
	last_name,
	job_id
FROM
	employees
WHERE 
	job_id IN ('IT_PROG' ,'AD_VP','AD_PRES');

#4. is null
/*
=或<>不能用于判断null值


*/
#案例：查询没有奖金的员工名和奖金率
SELECT
	last_name,
	commission_pct
FROM 
	employees
WHERE
	commission_pct IS  NULL;

#案例：查询有奖金的员工名和奖金率
SELECT
	last_name,
	commission_pct
FROM 
	employees
WHERE
	commission_pct IS NOT NULL;

#安全等于  <=>
#案例：查询没有奖金的员工名和奖金率
SELECT
	last_name,
	commission_pct
FROM 
	employees
WHERE
	commission_pct  <=>  NULL;

#查询工资为12000的员工信息
SELECT
	last_name,
	commission_pct,
	salary
FROM 
	employees
WHERE
	salary <=> 12000;
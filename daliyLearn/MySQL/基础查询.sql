#进阶1：基础查询
/*

select 查询列表 from 表名;


1、查询列表可以是：表中的字段、常量、表达式、函数
2、查询的结果是一个虚拟的表格

*/

USE myemployees;

#查询单个字段
SELECT last_name FROM employees;

#查询多个字段

SELECT last_name,salary,email FROM employees;

#查询表中的所有字段
SELECT * FROM employees;

SELECT `first_name`,`last_name`,`department_id`,`department_id` FROM employees;


#4.查询常量值
SELECT 100;
SELECT 'K_ing';

#查询表达式
SELECT 100%98;

#查询函数
SELECT VERSION();

#7.起别名
#方式一：as
SELECT 100%98 AS 结果;

SELECT last_name AS 姓, `first_name`AS 名 FROM employees; 

#方式二
SELECT last_name 姓,first_name 名 FROM employees; 

#案例
SELECT salary AS 'out put' FROM employees;

#案例:去重
SELECT department_id FROM employees;
SELECT DISTINCT department_id FROM employees;

#案例：查询员工名和姓,连接成一个字段显示为 姓名
# concat()
SELECT 'last_name + first_name' AS 姓名
FROM employees;

SELECT CONCAT('a','b') AS 结果;

SELECT CONCAT(last_name,' ',first_name) AS 姓名 
	FROM employees;
	
	
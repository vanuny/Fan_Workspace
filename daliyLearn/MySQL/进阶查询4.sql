# 进阶4:常见函数
/*
概念:类似于java的方法,将一组逻辑语句封装在方法体重,对外暴露方法名

好处:
	1.隐藏了实现细节
	2.提高代码的重用性
	
调用:
	select 函数名(实参列表) from 表;
	select 函数名() ;
特点:
	1.叫什么(函数名
	2.干什么(函数功能
	
分类:
	1.单行函数
		如:concat / length / ifnull
		字符函数
		数学函数
		日期函数
		其他函数
		流程控制函数
	2.分组函数
		功能:做统计使用,又称为统计函数/聚合函数/组函数
*/

# 一/字符函数
#length

SHOW VARIABLES LIKE '%char%'

# concat

# upper / lower
SELECT	UPPER('john')

SELECT	UPPER('John')

# 姓变大写/名小写,然后拼接

SELECT CONCAT(UPPER(last_name),'_',LOWER(first_name)) 
FROM employees

# substr / substring
注意:索引从1开始
SELECT SUBSTR('李莫愁爱上了陆展元',7) output;

SELECT SUBSTR('李莫愁爱上了陆展元',1,3) output;

# 首字母大写,其他字符小写然后用_拼接,显示出来

SELECT CONCAT(UPPER(SUBSTR(last_name,1,1)),'_',LOWER(SUBSTR(last_name,2))) output
FROM employees;


#  instr : 返回子串第一次虎刺线的索引,如果找不到,返回0
SELECT INSTR('殷六侠杨不悔爱上了殷六侠','殷六侠') AS output;

# trim
SELECT LENGTH(TRIM('    张翠山    ')) AS output;

SELECT TRIM('a'  FROM 'aaaaaaa张翠山aaaaaaaaaaaaaaa') AS output

# lpad
左填充
SELECT LPAD('殷素素',11,'**') AS output

# rpad

SELECT RPAD('殷素素',12,'ab') AS output

# replace
SELECT REPLACE('张无忌周芷若周芷若周芷若周芷若爱上了周芷若','周芷若','赵敏') output
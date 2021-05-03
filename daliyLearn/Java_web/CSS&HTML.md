页面的组成:
* 内容(结构)
* 表象
* 行为

HTML(超文本标签语言)简介:

HTML文件的书写规范:

head/body

一般包含title/css/js代码

HTML标签介绍:
<标签名>   数据  </ 标签名>
对大小写不敏感
拥有自己的属性:
    1. 基本属性  可以修改(简单的样式和属性)
    2. 事件属性  可以直接设置事件响应后的代码

单标签和双标签
br  换行
hr  横线

常用标签介绍
w3cschool.CHM
```
<  &lt;  

>  &gt;  

空格 &nbsp;  
```  

表单标签:
收集用户信息,然后发送至服务器

CSS:

一般每行只写一各注释

p{
    color:blue;
    font-size:30px;
}

二.在head标签中使用style标签

三.将css样式写成单独的css文件,再通过link标签引入即可
```css
<link rel="stylesheet" type="text/css" href="1.css">
```


标签名选择器

id选择器
通过id属性选择性的应用属性

class类型选择器
.class 属性值{
    属性:值;
}
可以通过class属性有效的选择性的去使用

组合选择器:
    选择器1,选择器2,选择器3{
        属性:值;

    }
组合选择器可以让多个选择器共用多个代码

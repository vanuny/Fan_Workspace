## 1. JavaScript介绍

> JS是弱类型,Java是强类型

弱类型就是类型可变
强类型就是定义变量的时候,类型已确定,而且不可变

特点:
1. 交互性
2. 安全性
3. 跨平台性


### 4 变量

|类型|-|
|-|-|
|数值类型|number|
|字符串类型|string|
|对象类型|object|
|布尔类型|boolean|
|函数类型|function|


JavaScript特殊值:
undefined   未定义
null        空值
NAN         非数字/非数值

### 关系运算:

== 等于 是简单的字面值的比较
=== 全等于 除了字面值的比较还会比较,还会比较两个变量的类型

function 函数名(形参列表){

}
//类似python


JS中不允许重载

函数arguments隐形参数(只在function函数内)


### JS中的事件:

常用的事件:
onload 加载完成事件 常用语页面js代码初始化操作
onclick 单机事件    按钮的点击响应操作
onblur 失去焦点事件 失去焦点后验证其输入内容是否合法
onchange 内容改变事件   下拉列表和输入框内容发送改变后操作
onsubmit 提交事件   表单提交前,验证是否合法

事件的注册
告诉浏览器,当事件响应后要执行哪些操作代码,叫事件注册或事件绑定

* 静态注册:通过html标签的事件属性直接赋予事件响应后的代码,叫静态注册

* 动态注册:通过js代码得到标签的dom对象,然后再通过dom对象.事件名 = function(){}这种形式赋予事件响应后的代码,叫动态注册

动态注册:  
    1. 获取标签对象
    2. 标签对象.事件名 = function( ){}


失去焦点事件:


### DOM模型
文档对象模型
将文档中的标签,属性,文本,转换为对象来管理

Document对象的理解:
* 管理了所有的HTML文档内容
* 树形结构
* 将所有的标签都对象化
* 通过Document访问所有的标签对象

class Dom{
    private String id;
    private String tagName;
    private Dom parentNode;
    private List<Dom> children;
    private String innerHTML; //起始标签和结束标签中间的内容
}

方法介绍:

P56 两种常见的验证提示效果

### 节点的常用属性和方法
节点就是标签对象

JQuery对象是dom对象+JQuery提供的一系列功能函数


JQuery本质是DOM数组

dom对象转化为JQuery对象

1. 现有DOM对象
2. $(DOM对象)就可以转换为JQuery对象

JQuery对象转化为dom对象

1. 现有JQuery对象
2. JQuery对象(下标)取出响应的DOM对象

JQuery选择器:

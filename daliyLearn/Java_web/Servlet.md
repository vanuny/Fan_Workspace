## 1. 什么是Servlet

### 是JavaEE规范(接口)之一.

### 是JavaWeb三大组件之一:
* Servlet程序
* Filter过滤器
* Listener监听器

### servlet的作用
通俗来讲servlet专门用来接收客户端的请求，专门接收客户端的请求数据，然后调用底层service处理数据并生成结果
浏览器http请求------》tomcat服务器-------》到达servlet-----》执行doget，dopost方法----》返回数据


Servlet是运行在服务器上的一个Java小程序,**它可以接受客户端发送过来的请求,并响应数据**

1. 编写一个类去实现Servlet接口
2. 实现service方法,处理请求,并响应数据
3. 到web.xml中配置servlet程序的访问地址

```xml
<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns="http://xmlns.jcp.org/xml/ns/javaee"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-app_4_0.xsd"
         version="4.0">
    <!--servlet标签给tomcat配置servlet程序-->
    <servlet>
        <!--servlet-name给标签起一个别名-->
        <servlet-name>helloservlet</servlet-name>
        <servlet-class>com.fanzifeng.java.helloservlet</servlet-class>
    </servlet>

    <!--给servlet程序配置访问地址-->
    <servlet-mapping>
        <!--这个标签的作用是当前配置的地址给哪个
            servlet程序使用-->
        <servlet-name>helloservlet</servlet-name>
        <!--配置访问地址
                /hello   什么意思
                /         斜杠在服务器解析的时候,表示地址为http://ip:port/工程路径
                /hello      表示访问地址为http://ip:port/工程路径/hello
                -->
        <url-pattern>/hello</url-pattern>
    </servlet-mapping>
</web-app>
```
servlet的生命周期

1. 执行servlet构造器方法
2. 执行init初始化方法
    * 第一步和第二步只会执行一次
3. 执行service方法
    * 每次访问的时候都会调用
4. 执行destroy方法
    * 在web工程停止时调用

通过继承HttpServlet实现servlet程序

### 使用Idea生成servlet程序

ServletConfig
可以servlet配置信息类,在初始化使用
1. 可以获取servlet的别名servelt-name
2. 可以获取初始化参数Init-param
3. 获取servlet-context

P131
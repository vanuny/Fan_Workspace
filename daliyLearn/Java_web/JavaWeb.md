## JavaWeb

通过Java语言编写可以通过浏览器访问的程序总称

JavaWeb是基于请求和响应来开发的


客户端给服务器发送数据,叫请求Request

服务器给客户端回传数据,叫响应Response

请求和响应是成对出现的

Web资源的分类:
静态资源和静态资源

静态资源:html/css/js/txt/mp4
动态资源:jsp页面/servlet程序

### 常用Web服务器
Tomcat:7*/8*

Servlet程序2.5版本应用最多
3.0后是注解版本的Servlet

目录介绍

bin 专门用来存放tomcat服务器的可执行程序

conf 用来存放配置文件
lib 用来存放jar包
logs 日记信息
temp 临时数据
webapps 用来存放部署的web工程
work 是tomcat工作时的目录,用来存放tomcat运行时翻译为servlet的源码,和session钝化的目录


bin目录下的startup.bat
打开浏览器:
1. http://localhost:8080
2. http://127.0.0.1:8080
3. 真实id

cmd  catalina run
    catalina stop

Tomcat的默认端口号为8080
HTTP默认的端口是80

### 将web工程到Tomcat中
复制到webapps中


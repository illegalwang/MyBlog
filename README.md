# 项目技术总结 #

<span style="color: red">* 这是一个学习的小demo，一些技术首次集成，所以写的比较乱。但可以为以后的学习做一个参考。</span>

#### 总结本项目中用到的技术框架 #

1. 框架<b>ssm</b>springmvc+spring4.2+mybatis3.4。
2. 权限框架使用的<b>Shiro 1.3</b>
3. 前端样式使用的<b>bootstrap 3.3</b>
4. 模板引擎使用的<b>freemarker 2.3</b>
5. 数据库<b>mysql5.5.6</b>
6. <b>jdk 1.8</b>
7. 分页框架<b>pagehelper</b>
8. <b>generator</b>逆向工程
9. <b>github</b>版本控制
10. <b>IntelliJ&nbsp;&nbsp;IDEA&nbsp;&nbsp;2017.1</b> 
11. <b>tomcat 8.5.34</b>

#### 卡住过的或现存为解决的问题 #

+ IDEA 一开始部署方式不对，导致修改freemarker模板后不能实时更新，
    tomcat应该热部署项目war exploded这种格式
+ Shiro密码加密后，用simpleAuthentictionInfo验证，需要再realm
    配置文件中加入加密方法的配置才可正确验证。
+ 滚动条可以借鉴jquery api网站的滚动条mCustomScrollbar
+ 使用restful风格，使用DELETE或PUT请求时<br>
    报错`Request method 'POST' not supported`<br>
    解决方法：在web.xml文件中需要添加<br>
   
    
    `     <!-- 将POST请求转化为DELETE或者是PUT 要用_method指定真正的请求方法 -->
          <filter>
              <filter-name>HiddenHttpMethodFilter</filter-name>
              <filter-class>org.springframework.web.filter.HiddenHttpMethodFilter</filter-class>
          </filter>
          <filter-mapping>
              <filter-name>HiddenHttpMethodFilter</filter-name>
              <url-pattern>/*</url-pattern>
          </filter-mapping>
          
          <!-- 解决PUT请求无法提交Form的问题 -->
          <filter>
              <filter-name>HttpMethodFilter</filter-name>
              <filter-class>org.springframework.web.filter.HttpPutFormContentFilter</filter-class>
          </filter>
          <filter-mapping>
              <filter-name>HttpMethodFilter</filter-name>
              <url-pattern>/*</url-pattern>
          </filter-mapping>`
     
+ <span style='color:red;'>存在风险，xss攻击。<br>
    用户可在输入框输入js代码例如'&lt;script&gt;alert(1)&lt;/script&gt;',
    这样就会弹框。</span>
    
+ 使用ajax拼写完导航，再点击导航不起作用。纠结了很长时间。然后使用jquery的事件委托机制完美解决。<br>
`$("#pageNavDiv a").click(function() {...})`<br>
`$("#pageNavDiv").on('click', 'a', function() {...})`<br>
一开始是上面的写法，后来改成下面的写法就可以用了

#### 功能概要 #
+ 用户管理，增删改查
+ 菜单的管理，增删改查
+ 用户验证，授权已写可
+ 其它可扩展

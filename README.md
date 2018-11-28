# 项目技术总结 #
`总结本项目中用到的技术框架`

#### ssm
+ springmvc + spring + mybatis
#### Shiro
+ 简单继承Siro安全框架
#### freemarker
+ 
#### generator

#### bootstrap

#### 分页使用pagehelper

### 卡住过的问题 #

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
`$("#pageNavDiv a").click(function() {  })`<br>
`$("#pageNavDiv").on('click', 'a', function() {  })`<br>
一开始是上面的写法，后来改成下面的写法就可以用了
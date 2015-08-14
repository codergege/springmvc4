<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<style>
body, dl, dd, p, h1, h2, h3, h4, h5, h6, form, select{ margin: 0; font-size: 12px; font-family: "MicroSoft YaHei"; }
ol,ul{ margin: 0; padding: 0; list-style: none; }
input{ margin: 0; padding: 0; }
textarea{ margin: 0; padding: 0; resize: none; overflow: auto; outline: none; }
a{ text-decoration: none; }
img{ border: none; vertical-align: top; }
.clear{ zoom: 1; }
.clear:after{ content:""; display: block; clear: both; }
table{ border-collapse: collapse; }
th,td{ padding:0; }

.ui{ margin-top: 20px; border: 1px solid #ccc; text-align: center; }
.desc{border: 1px solid #333; color: red;}

.fl{ display: inline-block; width: 40px; text-align: right; background: #ccc;}
</style>
<script>
</script>
</head>
<body>


<a href="springmvc4/testHelloView">test hello view</a>
<p class="desc">test hello view</p>
<br>
<!-- 
	1. 原始数据 1, zhaobo, 赵波, 123456, 19860529
	2. 模拟回显 
	3. 修改生日
-->
<form action="springmvc4/testModelAttribute" method="POST">
	<input type="hidden" name="id" value="1"/>
	<label class="fl">用户名:</label><input type="text" name="username" value="zhaobo"/><br>
	<label class="fl">昵称:</label><input type="text" name="nickname" value="赵波"/><br>
	<label class="fl">生日:</label><input type="text" name="birthday" value="19860529"/><br>
	<input type="submit" value="修改"/><br>
</form>
<p class="desc">test ModelAttribute</p>
<br>
<a href="springmvc4/testMap">test Map</a>
<p class="desc">test map</p>
<br>
<a href="springmvc4/testModelAndView">test ModelAndView</a>
<p class="desc">test modelandview</p>
<br>

<hr>

<form action="springmvc3/testPojo" method="POST">
	<input type="hidden" name="id" value="1"/>
	<label class="fl">用户名:</label><input type="text" name="username"/><br>
	<label class="fl">昵称:</label><input type="text" name="nickname"/><br>
	<label class="fl">密码:</label><input type="password" name="password"/><br>
	<label class="fl">生日:</label><input type="text" name="birthday"/><br>
	<label class="fl">省:</label><input type="text" name="address.province"/><br>
	<label class="fl">市:</label><input type="text" name="address.city"/><br>
	<input type="submit" value="Submit post"/><br>
</form>
<p class="desc">test pojo post</p>
<br>
<form action="springmvc3/testPojo" method="GET">
	<input type="hidden" name="id"/>
	<label class="fl">用户名:</label><input type="text" name="username"/><br>
	<label class="fl">昵称:</label><input type="text" name="nickname"/><br>
	<label class="fl">密码:</label><input type="password" name="password"/><br>
	<label class="fl">生日:</label><input type="text" name="birthday"/><br>
	<label class="fl">省:</label><input type="text" name="address.province"/><br>
	<label class="fl">市:</label><input type="text" name="address.city"/><br>
	<input type="submit" value="Submit get"/><br>
</form>

<p class="desc">test pojo get</p>
<br>

<hr>

<a href="springmvc2/testCookieValue">test @CookieValue</a>
<p class="desc">test @CookieValue</p>
<br>
<form action="springmvc2/testRest" method="POST">
	<input type="submit" value="test rest post"/>
</form>
<p class="desc">rest post</p>
<br>
<form action="springmvc2/testRest/2" method="POST">
	<input type="hidden" name="_method" value="PUT"/>
	<input type="submit" value="test rest put"/>
</form>
<p class="desc">rest put</p>
<br>
<form action="springmvc2/testRest/1" method="POST">
	<input type="hidden" name="_method" value="DELETE"/>
	<input type="submit" value="test rest delete"/>
</form>
<p class="desc">rest delete</p>
<br>
<a href="springmvc2/testRest/2">test rest get</a>
<p class="desc">rest get</p>
<br>
<a href="springmvc2/handle1/赵波">test @Variable</a>
<p class="desc">right</p>
<br>

<hr>

<a href="springmvc/handle5?userId=3">test @RequestMapping 5</a>
<p class="desc">wrong</p>
<br>
<a href="springmvc/handle5?userId=2">test @RequestMapping 5</a>
<p class="desc">correct</p>
<br>
<a href="springmvc/handle5">test @RequestMapping 5</a>
<p class="desc">correct</p>
<br>
<a href="springmvc/handle4?userId=1">test @RequestMapping 4</a>
<p class="desc">wrong</p>
<br>
<a href="springmvc/handle4?userId">test @RequestMapping 4</a>
<p class="desc">wrong</p>
<br>
<a href="springmvc/handle4">test @RequestMapping 4</a>
<p class="desc">correct</p>
<br>
<a href="springmvc/handle3?userId=赵波">test @RequestMapping 3</a>
<p class="desc">correct</p>
<br>
<a href="springmvc/handle3?userId">test @RequestMapping 3</a>
<p class="desc">correct</p>
<br>
<a href="springmvc/handle3">test @RequestMapping 3</a>
<p class="desc">wrong</p>
<br>
<form action="springmvc/handle2" method="post">
	<input type="submit" value="提交 2"/>
</form>
<p class="desc">这个没有问题</p>
<br>
<a href="springmvc/handle2">test @RequestMapping 2</a>
<p class="desc">handle2 要求是 post 请求, 所以这个一定会出错</p>
<br>
<a href="springmvc/hello">Hello, springmvc!</a>
<br>
</body>
</html>
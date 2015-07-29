<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</style>
<script>
</script>
</head>
<body>

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
<a href="springmvc/handle3?userId=1">test @RequestMapping 3</a>
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
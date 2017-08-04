<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试首页</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script type="text/javascript" src="https://unpkg.com/lodash@4.13.1/lodash.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/vue.js"></script>
</head>
<body>
	<div id="app">
		<h1>springmvc首页</h1>
		<input v-model="username">
	</div>
	
	<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/index.js"></script>
</body>
</html>
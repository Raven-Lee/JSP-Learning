<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.text.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    <h1>Jsp生命周期</h1> <br>
    <hr>
    <%
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
    	String s = sdf.format(new Date());
     %>
     今天是：<%=s %>
    <Br>
   	<a href="LoginDemo.jsp">登录界面</a>
   	<a href="reg.jsp">注册界面</a><br>
   	<a href="exercise.jsp">九九乘法表</a><br>
   	<a href="response.jsp">response对象</a><br>
   	<a href="session_page1.jsp">session对象</a><br>
   	<a href="application.jsp">application对象</a><br>
  </body>
</html>

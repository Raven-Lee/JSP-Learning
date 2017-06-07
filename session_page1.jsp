<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'session_page1.jsp' starting page</title>
    
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
    <h1>session内置 对象</h1>
    <hr>
    <%
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日HH:mm:ss"); 
    Date d = new Date(session.getCreationTime());
    session.setAttribute("username", "admin");
    session.setAttribute("password", "123456");
    session.setAttribute("age", 24);
    
    //设置当前sesion最大生成期限，单位秒
    session.setMaxInactiveInterval(10);//
    %>
    Session创建时间:<%=sdf.format(d)%><br>
    Session的ID编号：<%=session.getId() %><br>
       从Session中获取用户名：<%=session.getAttribute("username") %><br>
    session超时时长:<%=session.getMaxInactiveInterval() %>秒<br>
    <a href="session_page2.jsp" target="_blank">session_page2对象</a><br>
    
  </body>
</html>

<%@ page language="java" import="java.util.*,java.io.*" pageEncoding="UTF-8"%>
<%
	response.setContentType("text/html;charset=utf-8");//设置响应的MIME类型
	out.println("<h1>response内置对象</h1>");
	out.println("<hr>");
	//out.flush();//用于在PrintWriter之前输出内容
	
	PrintWriter outer= response.getWriter();//获得输出流对象
	outer.println("hello, I'm outer, output stream generated by response  ");
	//response.sendRedirect("reg.jsp");//请求重定向,需要注释掉out.flush()
	
	//response.sendRedirect("request.jsp");//请求重定向
	request.getRequestDispatcher("request.jsp").forward(request,response);//请求转发
%>



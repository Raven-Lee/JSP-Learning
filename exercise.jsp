<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
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
   <h1>九九乘法表</h1>
   <!-- 以下是自己写的 -->
   <%!
   	int i = 1;
   	int j = 1;
    %>
   <%
   		for(i=1;i<10;i++){
   			for(j=1;j<=i;j++){
   			out.print(i+"*"+j+"="+i*j+"&nbsp&nbsp&nbsp&nbsp");
  		 	}
   			out.println("<br>");
 		}
    %>
     <!-- 以下是imooc上的老师写的 -->
    <%!
    	//返回九九乘法表对应的HTML代码，通过表达式来调用，在页面上表示
    	String printMultiTable1(){
    		String s = "";
    		for(int i=1;i<10;i++){
    			for(int j=1;j<=i;j++){
    				s+=i+"*"+j+"="+(i*j)+"&nbsp;&nbsp;&nbsp;&nbsp;";
    			}
    			s+="<br>";
    		}
    		return s;
    	}
    	
    	//JSP内置out对象，使用脚本方式调用，打印乘法表
    	void printMultiTable2(JspWriter out) throws Exception{
    		for(int i=1;i<10;i++){
    			for(int j=1;j<=i;j++){
    				out.println(i+"*"+j+"="+(i*j)+"&nbsp;&nbsp;&nbsp;&nbsp;");
    			}
    			out.println("<br>");
    		}
    	}
    	
    %>
    <%=printMultiTable1() %>
    <% printMultiTable2(out); %>
  </body>
</html>

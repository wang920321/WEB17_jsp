<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
    <!--引入jstl核心库  -->
<%-- <%@ taglib uri="" prefix="c" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
     <%@ include file="/demo.jsp" %>
             <%-- 内部的Java代码翻译到service方法的内部 --%> 
    <%
    
        int i=0;
        System.out.println(i);
    %>
    <%--会被翻译成service方法内部out.print()--%> 
    <%=i %>
   
              <%--会被翻译成servlet的成员的内容  --%> 
    
    <%!
        String str="nihao china!";
        public void fn(){
        	
        }
    %>
    <%=str %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%
    //使用pageContext向request域存数据
    pageContext.setAttribute("name", "sunba");
    pageContext.setAttribute("name", "zhangsan", PageContext.REQUEST_SCOPE);
    pageContext.setAttribute("name", "lisi", PageContext.SESSION_SCOPE);
    pageContext.setAttribute("name", "wangwu", PageContext.APPLICATION_SCOPE);
    %>
    <%=request.getAttribute("name") %>
     <%=pageContext.getAttribute("name", PageContext.REQUEST_SCOPE) %>
     <!-- pageContext.findAttribute从小到大 搜索域的范围的name-->
     <!--pageContext<request<session<application四大作用域范围  -->
     <%=pageContext.findAttribute("name") %>
     <%
     pageContext.getRequest();
     
     %>
</body>
</html>
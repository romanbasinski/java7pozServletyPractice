<%--
  Created by IntelliJ IDEA.
  User: pablo
  Date: 20.06.2018
  Time: 20:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cookie info</title>
</head>
<body>
<%
    if(request.getCookies() != null)
        for(Cookie c: request.getCookies()) {
%>
<%= c.getName() + " -> " + c.getValue() %>
<br>
<%
        }
%>

<br>
<a href="index.jsp">Homepage</a>
</body>
</html>

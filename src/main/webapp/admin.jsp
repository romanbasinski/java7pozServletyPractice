<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="domain.User" %><%--
  Created by IntelliJ IDEA.
  User: pablo
  Date: 20.06.2018
  Time: 18:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Admin page</title>
</head>
<body>
<%--robimy if'a czy uzytkownik jest zapisany w sesji--%>

<c:choose>
    <c:when test="${sessionScope.get('user') !=null}">
        <h1>Hello ${sessionScope.get('user').firstName}</h1>
    </c:when>
    <c:otherwise>
    <h1>Hello nieznajomy</h1>
    </c:otherwise>

</c:choose>

<%--<c:out value="${sessionScope.get('user')!=null ?  sessionScope.get('user').firstName : 'nieznajomy'}"></c:out>--%>

<a href="login.jsp">Strona logowania</a>
</body>
</html>

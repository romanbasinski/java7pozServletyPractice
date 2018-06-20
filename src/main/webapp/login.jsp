<%--
  Created by IntelliJ IDEA.
  User: pablo
  Date: 20.06.2018
  Time: 18:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Zaloguj</title>
</head>
<body>
<h1>Twoje IP to: <%= request.getRemoteAddr()%> </h1>

<form action="/login" method="post">
    <input name="firstName" type="text" placeholder="Imię"><br>
    <input name="lastName" type="text" placeholder="Nazwisko"><br>
    <input type="submit" value="Zaloguj">
</form>

</body>
</html>

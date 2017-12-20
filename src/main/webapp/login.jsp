<%--
  Created by IntelliJ IDEA.
  User: tonywestbrook
  Date: 12/19/17
  Time: 9:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--This routine checks for admin/password and directs to profile page
else it cycle back to sign in page--%>
<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("admin") && password.equals("password")) {
            response.sendRedirect("/profile.jsp");
        }
    }
%>

<%-- This set up the HTML page which includes the nav & header from the partials Directory--%>
<html>
<head>
    <title>Title</title>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
<%--<jsp:include page="partials/navbar.jsp" />--%>
<div class="container">
    <h1>Please Log In</h1>
    <form action="/login.jsp" method="POST">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="Log In">
    </form>
</div>
</body>
</html>

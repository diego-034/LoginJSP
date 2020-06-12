<%-- 
    Document   : Home
    Created on : 12/06/2020, 11:56:47 AM
    Author     : DIEGO
--%>

<%@page import="java.net.InetAddress"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="Models.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    HttpSession misession = (HttpSession) request.getSession();
    Users user = new Users();
    if(misession.getAttribute("user") == null){
        String host = InetAddress.getLocalHost().getHostName();

        response.sendRedirect("http://localhost:8080/EjerciciosEdwin/");
    }else{
        user = (Users) misession.getAttribute("user");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello <%=user.getName()%></h1>
    </body>
</html>

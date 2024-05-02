<%-- 
    Document   : forward
    Created on : 24 April 2024, 12:59:45 am
    Author     : rynaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using JSP Standard Action (forward)</title>
    </head>
    <body>
        <h2>Using jsp:forwrd to display user info.</h2>
        <jsp:forward page="forwardInfo.jsp">
            <jsp:param name="U_Name" value="Fpuad Abdulameer"/>
            <jsp:param name="Email" value="fouadaug@gmail.com"/>
            <jsp:param name="Nationality" value="Iraqi"/>
            <jsp:param name="background" value="Developer"/>
        </jsp:forward>
    </body>
</html>

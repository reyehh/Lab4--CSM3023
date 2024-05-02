<%-- 
    Document   : processCustomer
    Created on : 24 Apr 2024, 2:55:17 pm
    Author     : rynaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*, java.util.*"%>
<%@page import="javax.servlet.http.*, javax.servlet.*"%>
    <title>Process Customer</title>

    <h1>Use JSP Sriplet and JSP Expression in application</h1>

<%
    final int price = 10;
    
    String cust_no1 = request.getParameter("cust_no");
    int quantity1 = Integer.parseInt(request.getParameter("quantity"));
    String cust_type1 = request.getParameter("cust_type");
    
    if (cust_type1 != null && !cust_type1.isEmpty()) {
        if (cust_type1.equals("1") && quantity1 > 100) {
%>
            You're entitled to a 10% discount. <br>
            Total amount is RM<%= quantity1 * price * 0.9 %>
<%
        } else if (cust_type1.equals("2") && quantity1 > 100) {
%>
            You're entitled to a 25% discount. <br>
            Total amount is RM<%= quantity1 * price * 0.75 %>
<%
        } else {
%>
            You're not entitled to a discount. <br>
            Total amount is RM<%= quantity1 * price %>
<%
        }
    } else {
%>
        <p>Please select a customer type.</p>
<%
    }
%>

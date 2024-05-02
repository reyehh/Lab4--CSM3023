<%-- 
    Document   : processInsuranceQuo.jsp
    Created on : 24 April 2024, 10:57:48 am
    Author     : rynaa
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insurance Quotation Processing</title>
</head>
<body>
    <h1>Insurance Quotation Processing</h1>
    <%-- Retrieve form parameters using Scriplets --%>
    <% String icNo = request.getParameter("icNo");
       String name = request.getParameter("name");
       double marketPrice = Double.parseDouble(request.getParameter("marketPrice"));
       String coverageType = request.getParameter("coverageType");
       String ncd = request.getParameter("ncd");

       
       double baseAmount = calculateBaseAmount(marketPrice, coverageType, ncd);
       double gstAmount = calculateGST(baseAmount);
       double totalAmount = baseAmount + gstAmount;
    %>

    <h2>Insurance Quotation Summary</h2>
    <p>IC No: <%= icNo %></p>
    <p>Customer Name: <%= name %></p>
    <p>Market Price: <%= marketPrice %></p>
    <p>Coverage Type: <%= coverageType %></p>
    <p>No Claims Discount (NCD): <%= ncd %></p>
    <p>Insurance Amount: <%= String.format("%.2f", baseAmount) %></p>
    <p>6% GST: <%= String.format("%.2f", gstAmount) %></p>
    <p>Final Amount (with 6% GST): <%= String.format("%.2f", totalAmount) %></p>
</body>
</html>

<%!
    public double calculateBaseAmount(double marketPrice, String coverageType, String ncd) {
        double baseAmount = marketPrice * 0.024; 
        return baseAmount;
    }

    public double calculateGST(double baseAmount) {
        double gstAmount = baseAmount * 0.06;
        return gstAmount;
    }
%>

<%-- 
    Document   : processCurrency
    Created on : 24 Apr 2024, 4:22:42 pm
    Author     : rynaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Currency Conversion</title>
</head>
<body>
    <h1>Currency Conversion</h1>
    
    <%!
        // Define constant exchange rates
        final double USD = 3.92;
        final double STG = 5.96;
        final double EURO = 4.47;
        
        // Define method to perform currency exchange
        private double calculateRate(String currency, int amount) {
            double currencyChange = 0.00;
            
            if (currency.equals("1")) {
                currencyChange = amount * USD;
            } else if (currency.equals("2")) {
                currencyChange = amount * STG;
            } else if (currency.equals("3")) {
                currencyChange = amount * EURO;
            }
            
            return currencyChange;
        }
    %>
    
    <%
        // Get parameters from the request
        String currency = request.getParameter("currency");
        int amount = Integer.parseInt(request.getParameter("amount"));
        
        // Calculate currency conversion
        double currencyChange = calculateRate(currency, amount);
    %>
    
    <p>Amount in Ringgit Malaysia: <%= amount %></p>
    <p>Amount in Euro: <%= currencyChange %></p>
</body>
</html>

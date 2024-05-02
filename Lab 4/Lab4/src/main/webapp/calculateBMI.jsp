<%-- 
    Document   : calculateBMI
    Created on : 24 April 2024, 12:14:03 am
    Author     : rynaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BMI Result</title>
    </head>
    <body>
        <h1>Your BMI Result</h1>
        <%
            double weight = Double.parseDouble(request.getParameter("weight"));
            double height = Double.parseDouble(request.getParameter("height"));
            
            double bmi = weight / (height*height);
            String bmiMessage;
            
            if (bmi < 18.5){
                bmiMessage = "Underweight";
            } else if (bmi <= 25){
                bmiMessage = "Optimal weight";
            } else {
                bmiMessage = "Overweight";
            }
        %>
        
        <p>Your BMI is: <%= bmi %></p>
        <p>Weight Category: <%= bmiMessage %></p>

    </body>
</html>

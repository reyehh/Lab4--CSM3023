<%-- 
    Document   : insuranceQuotation
    Created on : 24 April 2024, 10:44:42 am
    Author     : rynaa
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insurance Quotation</title>
    <script>
        function validateForm() {
            var icNo = document.getElementById("icNo").value;
            var name = document.getElementById("name").value;
            var marketPrice = document.getElementById("marketPrice").value;
            var coverageType = document.getElementById("coverageType").value;
            var ncd = document.getElementById("ncd").value;

            if (icNo === "" || !icNo.match(/^\d{6}-\d{2}-\d{4}$/)) {
                alert("Please enter a valid ICNo (format: #####-##-####)");
                return false;
            }

            if (name === "" || !/^[a-zA-Z ]+$/.test(name)) {
                alert("Please enter a valid name (alphabets and spaces only)");
                return false;
            }

            if (marketPrice === "" || isNaN(marketPrice) || parseFloat(marketPrice) <= 0) {
                alert("Please enter a valid market price (numeric and greater than 0)");
                return false;
            }

            if (coverageType === "") {
                alert("Please select a coverage type");
                return false;
            }

            if (ncd === "") {
                alert("Please select a No Claims Discount (NCD)");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
    <h1>Insurance Quotation</h1>
    
    <h2>Insurance Calculation</h2>
    <form action="processInsuranceQuo.jsp" method="post" onsubmit="return validateForm()">
        <label for="icNo">ICNo*</label>
        <input type="text" id="icNo" name="icNo" required><br><br>

        <label for="name">Name*</label>
        <input type="text" id="name" name="name" required><br><br>

        <label for="marketPrice">Market Price*</label>
        <input type="text" id="marketPrice" name="marketPrice" required><br><br>

        <label for="coverageType">Coverage Type</label>
        <select id="coverageType" name="coverageType">
            <option value="">Select</option>
            <option value="Comprehensive">Comprehensive</option>
            <option value="Third Party">Third Party</option>
        </select><br><br>

        <label for="ncd">No Claims Discount (NCD)</label>
        <select id="ncd" name="ncd">
            <option value="10%">10%</option>
            <option value="20%">20%</option>
            <option value="30%">35%</option>
        </select><br><br>

        <input type="submit" value="Submit">
        <input type="reset" value="Cancel">
    </form>
</body>
</html>

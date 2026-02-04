<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="model.FinanceDetails" %>

<%
    FinanceDetails f = (FinanceDetails) request.getAttribute("finance");
    Boolean saved = (Boolean) request.getAttribute("saved");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Finance Summary</title>

<style>
body{
    font-family: Arial, sans-serif;
    background:#e0e0e0;
    margin:0;
}

.container{
    width:90%;
    margin:20px auto;
    background:#d9d9d9;
    padding:20px;
    border-radius:6px;
}

/* Banner */
.banner img{
    width:100%;
    border-radius:6px;
}

/* Title */
.section-title{
    background:#4da3ff;
    color:#fff;
    padding:12px;
    font-size:20px;
    margin-top:20px;
}

/* Summary Grid */
.summary-grid{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:25px 30px;
    margin-top:25px;
}

.summary-item{
    background:#f5f5f5;
    padding:15px;
    border-radius:5px;
}

.summary-item label{
    font-weight:bold;
    display:block;
    margin-bottom:5px;
}

.summary-item span{
    font-size:16px;
}

/* Message */
.success{
    margin-top:25px;
    color:green;
    font-weight:bold;
}

.error{
    margin-top:25px;
    color:red;
    font-weight:bold;
}

/* Buttons */
.button-bar{
    display:flex;
    justify-content:center;
    margin-top:35px;
}

.btn{
    padding:10px 35px;
    font-size:16px;
    background:#2196f3;
    color:#fff;
    border:none;
    border-radius:5px;
    cursor:pointer;
}
</style>
</head>

<body>

<div class="container">

    <!-- Banner -->
    <div class="banner">
        <img src="../images/bike.png" alt="Bike Banner">
    </div>

    <!-- Title -->
    <div class="section-title">Finance Summary</div>

    <% if (f != null) { %>

    <div class="summary-grid">

        <div class="summary-item">
            <label>Ex-Showroom Price</label>
            <span>₹ <%= f.getExShowroomPrice() %></span>
        </div>

        <div class="summary-item">
            <label>Processing Fee</label>
            <span>₹ <%= f.getProcessingFee() %></span>
        </div>

        <div class="summary-item">
            <label>Down Payment</label>
            <span>₹ <%= f.getDownPayment() %></span>
        </div>

        <div class="summary-item">
            <label>Loan Tenure</label>
            <span><%= f.getLoanTenure() %> months</span>
        </div>

        <div class="summary-item">
            <label>Financing Provider</label>
            <span><%= f.getFinancingProvider() %></span>
        </div>

        <div class="summary-item">
            <label>Monthly EMI</label>
            <span>₹ <%= f.getMonthlyEmi() %></span>
        </div>

        <div class="summary-item">
            <label>GST Rate</label>
            <span><%= f.getGstRate() %> %</span>
        </div>

        <div class="summary-item">
            <label>Interest Rate</label>
            <span><%= f.getInterestRate() %> %</span>
        </div>

    </div>

    <% if (saved != null && saved) { %>
        <div class="success">✔ Data saved successfully</div>
    <% } else { %>
        <div class="error">❌ Data NOT saved</div>
    <% } %>

    <% } else { %>
        <div class="error">No finance data found.</div>
    <% } %>

    <div class="button-bar">
        <button class="btn" onclick="location.href='<%=request.getContextPath()%>/jsp/finance.jsp'">
            Back
        </button>
    </div>

</div>

</body>
</html>

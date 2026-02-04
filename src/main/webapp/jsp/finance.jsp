<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Finance Details</title>

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

/* Grid */
.finance-form{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:25px 30px;
    margin-top:25px;
}

.form-group{
    display:flex;
    flex-direction:column;
}

.form-group label{
    font-weight:bold;
    margin-bottom:6px;
}

.form-group input{
    padding:10px;
    border-radius:4px;
    border:1px solid #bbb;
}

/* Buttons */
.button-bar{
    display:flex;
    justify-content:space-between;
    margin-top:40px;
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
    <div class="section-title">Finance Details</div>

    <!-- FORM -->
    <form action="<%=request.getContextPath()%>/finance" method="post">

        <div class="finance-form">

            <div class="form-group">
                <label>Ex-Showroom Price</label>
                <input type="number" name="exShowroomPrice" required>
            </div>

            <div class="form-group">
                <label>Processing Fee</label>
                <input type="number" name="processingFee" required>
            </div>

            <div class="form-group">
                <label>Down Payment</label>
                <input type="number" name="downPayment" required>
            </div>

            <div class="form-group">
                <label>Loan Tenure (Months)</label>
                <input type="number" name="loanTenure" required>
            </div>

            <div class="form-group">
                <label>Financing Provider</label>
                <input type="text" name="financingProvider" required>
            </div>

            <div class="form-group">
                <label>Monthly EMI</label>
                <input type="number" name="monthlyEmi" required>
            </div>

            <div class="form-group">
                <label>GST Rate (%)</label>
                <input type="number" step="0.01" name="gstRate" required>
            </div>

            <div class="form-group">
                <label>Interest Rate (%)</label>
                <input type="number" step="0.01" name="interestRate" required>
            </div>

        </div>

        <!-- Buttons -->
        <div class="button-bar">
            <button type="button" class="btn" onclick="history.back()">Back</button>
            <button type="submit" class="btn">Next</button>
        </div>

    </form>

</div>

</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" %>
<meta charset="UTF-8">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Personal Details</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #e6e6e6;
        margin: 0;
        padding: 0;
    }

    .container {
        width: 90%;
        margin: 20px auto;
        background: #dcdcdc;
        padding: 20px;
        border-radius: 6px;
    }

    .banner img {
        width: 100%;
        border-radius: 6px;
    }

    .section-title {
        background-color: #4da3ff;
        color: #fff;
        padding: 12px;
        font-size: 20px;
        margin-top: 20px;
    }

    /* ===== FORM GRID ===== */
    .form-grid {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        gap: 25px 40px;
        margin-top: 25px;
    }

    .form-group {
        display: flex;
        flex-direction: column;
    }

    .form-group label {
        font-weight: bold;
        margin-bottom: 8px;
    }

    .form-group input,
    .form-group textarea {
        padding: 10px;
        font-size: 14px;
        border-radius: 4px;
        border: 1px solid #bbb;
        width: 100%;
    }

    textarea {
        resize: none;
        height: 90px;
    }

    /* ===== GENDER ===== */
    .gender-group {
        display: flex;
        gap: 20px;
        margin-top: 10px;
    }

    /* ===== FULL WIDTH ===== */
    .full-width {
        grid-column: span 2;
    }

    /* ===== BUTTON BAR ===== */
    .button-bar {
        display: flex;
        justify-content: space-between;
        margin-top: 40px;
    }

    .btn {
        padding: 10px 35px;
        font-size: 16px;
        border-radius: 5px;
        border: none;
        cursor: pointer;
        background-color: #2196f3;
        color: #fff;
    }
</style>
</head>

<body>

<div class="container">

    <!-- Banner -->
    <div class="banner">
        <img src="../images/bike.png" alt="Bike Banner">
    </div>

    <!-- Section -->
    <div class="section-title">Personal Details</div>

    <!-- FORM -->
    <form action="<%=request.getContextPath()%>/personal" method="post">

        <div class="form-grid">

            <div class="form-group">
                <label>Full Name</label>
                <input type="text" name="fullName" placeholder="Enter full name">
            </div>

            <div class="form-group">
                <label>Aadhar Number</label>
                <input type="text" name="aadharNo" placeholder="Enter Aadhar number">
            </div>

            <div class="form-group">
                <label>Email Address</label>
                <input type="email" name="email" placeholder="Enter email">
            </div>

            <div class="form-group">
                <label>Mobile Number</label>
                <input type="text" name="mobileNo" placeholder="Enter mobile number">
            </div>

            <div class="form-group">
                <label>Gender</label>
                <div class="gender-group">
                    <label><input type="radio" name="gender" value="Male"> Male</label>
                    <label><input type="radio" name="gender" value="Female"> Female</label>
                </div>
            </div>

            <div class="form-group">
                <label>Date of Birth</label>
                <input type="date" name="dob">
            </div>

            <div class="form-group full-width">
                <label>Residential Address</label>
                <textarea name="address" placeholder="Enter residential address"></textarea>
            </div>

        </div>

        <!-- BUTTONS -->
        <div class="button-bar">
            <button type="button" class="btn" onclick="history.back()">Back</button>
            <button type="submit" class="btn">Next</button>
        </div>

    </form>

</div>

</body>
</html>

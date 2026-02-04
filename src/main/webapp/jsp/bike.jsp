<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bike Preference</title>

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

/* ===== GRID ===== */
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
.form-group select {
    padding: 10px;
    font-size: 14px;
    border-radius: 4px;
    border: 1px solid #bbb;
    width: 100%;
}

/* ===== FULL WIDTH ===== */
.full-width {
    grid-column: span 2;
}

/* ===== FUEL ===== */
.fuel-group {
    display: flex;
    gap: 25px;
    margin-top: 10px;
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

    <!-- Title -->
    <div class="section-title">Bike Preference</div>

    <!-- FORM -->
    <form action="<%=request.getContextPath()%>/bikePreference" method="post">

        <div class="form-grid">

            <div class="form-group">
                <label>Preferred Budget Range (₹)</label>
                <input type="number" name="budget" required>
            </div>

            <div class="form-group">
                <label>Preferred Mileage (km/l)</label>
                <input type="number" name="mileage" required>
            </div>

            <div class="form-group">
                <label>Recommended Bike</label>
                <input type="text" name="bikeName">
            </div>

            <div class="form-group">
                <label>Engine Capacity (CC)</label>
                <input type="number" name="bikeCc" required>
            </div>

            <div class="form-group">
                <label>State</label>
                <select name="state" required>
                    <option value="">Select State</option>
                    <option>Maharashtra</option>
                    <option>Karnataka</option>
                    <option>Delhi</option>
                </select>
            </div>

            <div class="form-group">
                <label>Preferred Bike Brand</label>
                <select name="brand" required>
                    <option value="">Select Brand</option>
                    <option>Honda</option>
                    <option>Yamaha</option>
                    <option>TVS</option>
                    <option>Bajaj</option>
                </select>
            </div>

            <!-- Fuel -->
            <div class="form-group full-width">
                <label>Fuel Type</label>
                <div class="fuel-group">
                    <label><input type="radio" name="fuel" value="Petrol" required> Petrol</label>
                    <label><input type="radio" name="fuel" value="Electric"> Electric</label>
                </div>
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

package model;

public class BikePreference {

    private String budgetRange;
    private String mileage;
    private String state;
    private String brand;
    private String fuelType;
    private String recommendedBike;
    private String engineCc;

    public String getBudgetRange() {
        return budgetRange;
    }
    public void setBudgetRange(String budgetRange) {
        this.budgetRange = budgetRange;
    }

    public String getMileage() {
        return mileage;
    }
    public void setMileage(String mileage) {
        this.mileage = mileage;
    }

    public String getState() {
        return state;
    }
    public void setState(String state) {
        this.state = state;
    }

    public String getBrand() {
        return brand;
    }
    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getFuelType() {
        return fuelType;
    }
    public void setFuelType(String fuelType) {
        this.fuelType = fuelType;
    }

    public String getRecommendedBike() {
        return recommendedBike;
    }
    public void setRecommendedBike(String recommendedBike) {
        this.recommendedBike = recommendedBike;
    }

    public String getEngineCc() {
        return engineCc;
    }
    public void setEngineCc(String engineCc) {
        this.engineCc = engineCc;
    }
}

package model;

public class FinanceDetails {


private double exShowroomPrice;
private double processingFee;
private double downPayment;
private int loanTenure;
private String financingProvider;
private double monthlyEmi;
private double gstRate;
private double interestRate;

public double getExShowroomPrice() {
    return exShowroomPrice;
}

public void setExShowroomPrice(double exShowroomPrice) {
    this.exShowroomPrice = exShowroomPrice;
}

public double getProcessingFee() {
    return processingFee;
}

public void setProcessingFee(double processingFee) {
    this.processingFee = processingFee;
}

public double getDownPayment() {
    return downPayment;
}

public void setDownPayment(double downPayment) {
    this.downPayment = downPayment;
}

public int getLoanTenure() {
    return loanTenure;
}

public void setLoanTenure(int loanTenure) {
    this.loanTenure = loanTenure;
}

public String getFinancingProvider() {
    return financingProvider;
}

public void setFinancingProvider(String financingProvider) {
    this.financingProvider = financingProvider;
}

public double getMonthlyEmi() {
    return monthlyEmi;
}

public void setMonthlyEmi(double monthlyEmi) {
    this.monthlyEmi = monthlyEmi;
}

public double getGstRate() {
    return gstRate;
}

public void setGstRate(double gstRate) {
    this.gstRate = gstRate;
}

public double getInterestRate() {
    return interestRate;
}

public void setInterestRate(double interestRate) {
    this.interestRate = interestRate;
}


}
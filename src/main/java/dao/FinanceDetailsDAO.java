package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.FinanceDetails;
import util.DBUtil;

public class FinanceDetailsDAO {

    // ================= SAVE =================
    public boolean saveFinanceDetails(FinanceDetails fd) {

        String sql =
            "INSERT INTO finance_details " +
            "(ex_showroom_price, processing_fee, down_payment, loan_tenure, " +
            " financing_provider, monthly_emi, gst_rate, interest_rate) " +
            " VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        try {

            Connection con = DBUtil.getConnection();

            if (con == null) {
                System.out.println("❌ Connection is NULL");
                return false;
            }

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setDouble(1, fd.getExShowroomPrice());
            ps.setDouble(2, fd.getProcessingFee());
            ps.setDouble(3, fd.getDownPayment());
            ps.setInt(4, fd.getLoanTenure());
            ps.setString(5, fd.getFinancingProvider());
            ps.setDouble(6, fd.getMonthlyEmi());
            ps.setDouble(7, fd.getGstRate());
            ps.setDouble(8, fd.getInterestRate());

            int rows = ps.executeUpdate();

            System.out.println("✅ Rows inserted = " + rows);

            ps.close();
            con.close();

            return rows > 0;

        } catch (Exception e) {
            System.out.println("❌ Insert Failed");
            e.printStackTrace();
            return false;
        }
    }

    // ================= FETCH LATEST =================
    public FinanceDetails getLatestFinanceDetails() {

        String sql =
            "SELECT * FROM finance_details ORDER BY id DESC LIMIT 1";

        try {

            Connection con = DBUtil.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                FinanceDetails fd = new FinanceDetails();

                fd.setExShowroomPrice(rs.getDouble("ex_showroom_price"));
                fd.setProcessingFee(rs.getDouble("processing_fee"));
                fd.setDownPayment(rs.getDouble("down_payment"));
                fd.setLoanTenure(rs.getInt("loan_tenure"));
                fd.setFinancingProvider(rs.getString("financing_provider"));
                fd.setMonthlyEmi(rs.getDouble("monthly_emi"));
                fd.setGstRate(rs.getDouble("gst_rate"));
                fd.setInterestRate(rs.getDouble("interest_rate"));

                return fd;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }
}
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import model.BikePreference;
import util.DBUtil;

public class BikePreferenceDAO {

    public boolean saveBikePreference(BikePreference bp) {

        boolean result = false;

        try {
            Connection con = DBUtil.getConnection();

            String sql =
                "INSERT INTO bike_preference " +
                "(budget_range, mileage, state, brand, fuel_type, recommended_bike, engine_cc) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, bp.getBudgetRange());
            ps.setString(2, bp.getMileage());
            ps.setString(3, bp.getState());
            ps.setString(4, bp.getBrand());
            ps.setString(5, bp.getFuelType());
            ps.setString(6, bp.getRecommendedBike());
            ps.setString(7, bp.getEngineCc());

            result = ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }
}

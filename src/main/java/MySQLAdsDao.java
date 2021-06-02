import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads{
    Connection connection;

    public MySQLAdsDao() {
        Config config = new Config();
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e){
            throw new RuntimeException("Error connecting to SQL database!", e);
        }
    }

    @Override
    public List<Ad> all() {
        try{
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM ads");
            return createProductsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
                rs.getInt("id"),
                rs.getInt("user_id"),
                rs.getString("title"),
                rs.getString("description")
        );
    }

    private List<Ad> createProductsFromResults(ResultSet rs) throws SQLException {
        List<Ad> products = new ArrayList<>();
        while (rs.next()) {
            products.add(extractAd(rs));
        }
        return products;
    }

    @Override
    public void insert(Ad ad) {
        try {
            Statement statement = connection.createStatement();
            String query = "INSERT INTO ads(title, description) VALUES (" + "'" + ad.getTitle() + "'" + ", " + ad.getDescription() + "'" + ")";
            System.out.println(query);
            statement.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
            ResultSet resultSet = statement.getGeneratedKeys();
            resultSet.next();
            System.out.println("Created new ad with ID of: " + resultSet.getLong(1));
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }
}

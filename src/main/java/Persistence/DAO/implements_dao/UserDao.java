package Persistence.DAO.implements_dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import Persistence.DAO.ICustommerDAO;
import Persistence.DAO.Mold.User;
import Persistence.Connection_data;

public class UserDao implements ICustommerDAO {

    String sqlSelectAllCustomer = "SELECT * FROM Customer";

    private ArrayList<User> allUsers = new ArrayList<>();

    @Override
    public void updateAccount() {
        // TODO Auto-generated method stub
    }

    @Override
    public void newAccount() {
        // TODO Auto-generated method stub
    }

    @Override
    public List<User> getAccount(String customer_id) {
        	List<User> userAccounts = Collections.emptyList();

        try (Connection conn = new Connection_data().getConnection();
             PreparedStatement ps = conn.prepareStatement("SELECT * FROM Customer WHERE customer_id = "+customer_id);
        ) {
            ps.setString(1, customer_id);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    int id = rs.getInt("customer_id");
                    String firstName = rs.getString("first_name");
                    String lastName = rs.getString("last_name");
                    String email = rs.getString("email");
                    String address = rs.getString("address");
                    String city = rs.getString("city");
                    String state = rs.getString("state");
                    String country = rs.getString("country");
                    Date createdAt = rs.getDate("created_at");

                    User userAccount = new User();
                    userAccount.setId(id);
                    userAccount.setFirstName(firstName);
                    userAccount.setLastName(lastName);
                    userAccount.setEmail(email);
                    userAccount.setAddress(address);
                    userAccount.setCity(city);
                    userAccount.setState(state);
                    userAccount.setCountry(country);
                    userAccount.setCreatedAt(createdAt);

                    userAccounts = Collections.singletonList(userAccount);
                }
            }
        } catch (SQLException e) {
            // Handle the exception appropriately (log or throw)
            e.printStackTrace();
        } finally{
            return userAccounts; 
        }

        
    }

    @Override
    public void deleteAccount() {
        // TODO Auto-generated method stub
    }

    @Override
    public ArrayList<User> getAllAccount() {
        try (Connection conn = new Connection_data().getConnection();
             PreparedStatement ps = conn.prepareStatement(sqlSelectAllCustomer);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                int id = rs.getInt("customer_id");
                String firstName = rs.getString("first_name");
                String lastName = rs.getString("last_name");
                String email = rs.getString("email");
                String address = rs.getString("address");
                String city = rs.getString("city");
                String state = rs.getString("state");
                String country = rs.getString("country");
                Date createdAt = rs.getDate("created_at");

                User user = new User();
                user.setId(id);
                user.setFirstName(firstName);
                user.setLastName(lastName);
                user.setEmail(email);
                user.setAddress(address);
                user.setCity(city);
                user.setState(state);
                user.setCountry(country);
                user.setCreatedAt(createdAt);

                allUsers.add(user);
            }

        } catch (SQLException e) {
            // Handle the exception appropriately (log or throw)
            e.printStackTrace();
        }   finally{
            return allUsers;
        }

        
    }
}

package Persistence.DAO.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import Domain.Model.Custommer;
import Persistence.Connection_data;
import Persistence.DAO.ICustommerDAO;

public class ImpCustommerDAO implements ICustommerDAO {

	Custommer custommer = null;
	ResultSet resultSet = null;
    PreparedStatement pr = null;
    Connection conn = null;
	@Override
	public Custommer getCustomerByID(String email, String password) {
		try {
			conn= new Connection_data().getConnection();
			String query = "select email, password from shop.customer where email =? AND Password =?";
			pr=conn.prepareStatement(query);
			pr.setString(1, email);
			pr.setString(2, password);
			resultSet= pr.executeQuery();
			while(resultSet.next()) {
				custommer = new Custommer(resultSet.getString("email"),resultSet.getString("Password"));
				return custommer;
			}
		
		} catch (Exception e) {
			// TODO: handle exception
		}
        
        
        return null;

}
	@Override
	public void updatePasswordCustomer(String email, String password, String newPassword) {
		try {
			conn= new Connection_data().getConnection();
//			String query = "select email, password from shop.customer where email =? AND Password =?";
			String update = "UPDATE shop.customer SET Password = ? where email =? AND Password =?";
			pr=conn.prepareStatement(update);
			pr.setString(1, newPassword);
			pr.setString(2, email);
			pr.setString(3, password);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	@Override
	public void deleteCustomer(String email, String password) {
		try {
			conn= new Connection_data().getConnection();
//			String query = "select email, password from shop.customer where email =? AND Password =?";
			String update = "DELETE FROM shop.customer WHERE  where email =? AND Password =?";
			pr=conn.prepareStatement(update);
			
			pr.setString(1, email);
			pr.setString(2, password);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
	}
	@Override
	public void newCustommer( String username, String password, String email, String firstname, String city, String address, String state, String country, String created_at,
			String lastname) {
		try {
			conn= new Connection_data().getConnection();
//			String query = "select email, password from shop.customer where email =? AND Password =?";
			String update = "INSERT INTO shop.customer ( first_name, last_name, email, address, city, state, country, created_at , password) VALUES (?,?,?,?,?,?,?,?,?)"
					;
			pr=conn.prepareStatement(update);
			pr.setString(1, firstname);
			pr.setString(2, lastname);
			pr.setString(3, email);
			pr.setString(4, address);
			pr.setString(5, city);
			pr.setString(6, state);
			pr.setString(7, country);
			pr.setString(8, created_at);
			pr.setString(9, password);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
	}
}

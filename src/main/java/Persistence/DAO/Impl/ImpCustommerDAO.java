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
}

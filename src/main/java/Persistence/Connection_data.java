package Persistence;
import java.sql.*;

import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.SQLException;
  // Specify java.sql.Connection to avoid conflicts

public class Connection_data  {

    public static Connection  getConnection() {
    	Connection con = null;
    try {
    String driver = "com.mysql.cj.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/shop";
    String usename  = "root";
    String password = "09096712789";
    Class.forName(driver);

     con = DriverManager.getConnection(url, usename, password);
    System.err.println("success: " );
    
	} catch (Exception e) {
	    e.printStackTrace();
	}
       return con;
    }
 
	

}

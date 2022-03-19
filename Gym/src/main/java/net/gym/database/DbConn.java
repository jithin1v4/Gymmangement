package net.gym.database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class DbConn {
    public static Connection connect()
        throws SQLException, ClassNotFoundException
    {
        // Initialize all the information regarding
        // Database Connection
        String dbDriver = "com.mysql.cj.jdbc.Driver";
        String dbURL = "jdbc:mysql://127.0.0.1:3308/";
        // Database name to access
        String dbName = "gym";
        String dbUsername = "root";
        String dbPassword = "root";

        Connection con=null;
		try {
			Class.forName(dbDriver);
			try {
				con = DriverManager.getConnection(dbURL + dbName,
				                                             dbUsername,
				                                             dbPassword);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println("failled to connect");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("failled to get the driver");
		}
        return con;
}
}

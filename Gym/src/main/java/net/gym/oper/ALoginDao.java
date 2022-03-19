package net.gym.oper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import net.gym.database.DbConn;

public class ALoginDao {

	 public static boolean validate(String a,String b)
			   throws SQLException, ClassNotFoundException
			   {
				Connection con=DbConn.connect();
				PreparedStatement pst=con.prepareStatement("select * from admin where name=? and password=?");
				pst.setString(1,a);
				pst.setString(2,b);
				ResultSet num=pst.executeQuery();
				
				if(num.next()) {
					return true;
				}
				else {
					return false;
				}
}
}

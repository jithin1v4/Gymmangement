package net.gym.servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.gym.database.DbConn;
import net.gym.model.User;
/**
 * Servlet implementation class Registers
 */
@WebServlet("/Registers")
public class Registers extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registers() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String phno=request.getParameter("Phno");
		String trainer=request.getParameter("Shift");
		String weight=request.getParameter("Weight");
		String address=request.getParameter("Address");
		String fee=request.getParameter("Fee");

		String uname=request.getParameter("name");
		String lname=request.getParameter("lname");
		String email=request.getParameter("mailid");
		String age=request.getParameter("age");
		String password=request.getParameter("password");

		try{User user =new User();
		user.setName(uname);
		user.setName(password);
		System.out.println(lname);
		}
		catch(Exception e){
			System.out.println(e);
		}
		
		RequestDispatcher dispatcher=null;
		try {
			Connection conn=DbConn.connect();
			PreparedStatement pst;
			pst=conn.prepareStatement("insert into user (uname,lname,email,age,password)"
					+ "values(?,?,?,?,?)");
			pst.setString(1,uname);
			pst.setString(2,lname);
			pst.setString(3,email);
			pst.setInt(4,Integer.valueOf(age));
			pst.setString(5,password);
			int rowCount =pst.executeUpdate();
			dispatcher=request.getRequestDispatcher("signup.jsp");
			if(rowCount>0)
			{
				request.setAttribute("status", "succes");
			}
			else
			{
				request.setAttribute("status", "failled");
			}
			dispatcher.forward(request,response);

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}

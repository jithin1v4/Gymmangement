package net.gym.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.gym.oper.ALoginDao;

@WebServlet("/alogin")
public class alogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public alogin() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("uname");
		String pass=request.getParameter("password");
		RequestDispatcher disp=null;
		try {
			boolean num=ALoginDao.validate(uname, pass);
			if(num)
			{//login successfull........................
				System.out.println("success");
				HttpSession session = request.getSession();
				session.setAttribute("uname",uname);
				session.setAttribute("pass",pass);
				disp=request.getRequestDispatcher("home.jsp");
				disp.forward(request,response);
			}
			else {//no return so invalid user...........

				System.out.println("failled");
				request.setAttribute("status", "failled");
				disp=request.getRequestDispatcher("alogin.jsp");

			}disp.forward(request,response);


		}
		 catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
		catch (SQLException e) {
				e.printStackTrace();
			}
	}

}
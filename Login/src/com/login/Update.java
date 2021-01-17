package com.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.RegisterDao;
import com.login.dao.UpdateDao;

@WebServlet("/Update")
public class Update extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UpdateDao daoo = new UpdateDao();
		
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		String emp = request.getParameter("emp");
		String address = request.getParameter("address");
		
		if(daoo.update(uname, pass, emp, address)){
			
			System.out.println("Data Inserted in table successfuly");
			HttpSession session = request.getSession();
			session.setAttribute("username", uname);
			
			response.sendRedirect("welcome.jsp");
		}
		else{
			
			System.out.println("Data not Inserted in table successfuly");
			response.sendRedirect("welcome.jsp");
			
		}

	}
	}


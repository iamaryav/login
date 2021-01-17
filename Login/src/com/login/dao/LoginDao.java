package com.login.dao;

import java.sql.DriverManager;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;

public class LoginDao {
	
	String url = "jdbc:mysql://localhost:3306/login";
	String username = "root";
	String password = "";
	String sql = "select username, password from user where username=? and password=?";
	


	
	
	public boolean check(String uname, String pass){
		
		System.out.println("Inside check function");


		try{
			System.out.println("in start of try block");

			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("jdbc driver successfully loaded");

			Connection con = DriverManager.getConnection(url, username, password);
			System.out.println("Connection established");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pass);
			ResultSet rs = st.executeQuery();
			if(rs.next()){
				System.out.println("id password found");

				return true;
			}
			
			
		}catch(Exception e){
			
			e.printStackTrace();
			System.out.println("Connection not established");

		}
		
		return false;
	}

}

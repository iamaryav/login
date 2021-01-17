package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class RegisterDao {
	
	String url = "jdbc:mysql://localhost:3306/login";
	String username = "root";
	String password = "";
	String sql = "INSERT INTO user (username, password, employer, address) VALUES (?, ?, ?, ?)";
	
	public boolean register(String uname, String pass, String emp, String address){
		

		try{

			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("jdbc driver successfully loaded");

			Connection con = DriverManager.getConnection(url, username, password);
			System.out.println("Connection established");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pass);
			st.setString(3, emp);
			st.setString(4, address);
			int rs = st.executeUpdate();
			if(rs != 0){

		        System.out.println(rs + " row/s affected");
		        return true;
			}
		}catch(Exception e){
			
			e.printStackTrace();
			System.out.println("Connection not established");
		}
		
		
		return false;
	}

}

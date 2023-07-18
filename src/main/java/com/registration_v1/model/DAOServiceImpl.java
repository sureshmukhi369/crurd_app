package com.registration_v1.model;

import java.sql.*;

public class DAOServiceImpl implements DAOService {

	private Connection con;
	private Statement stmnt;
	
	@Override
	public void connectDB() {
    
	try {
		//load Driver class
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		//connect to db
		con = DriverManager.getConnection
		("jdbc:mysql://localhost:3306/registration_app","root","somu_18193");
		System.out.println("--connect to db--");
		
		//create statement
		stmnt = con.createStatement();
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
		
		
	}

	@Override
	public boolean verifyCredentials(String email, String password) {
		
		try {
			
			ResultSet result = stmnt.executeQuery("Select * from login where email='"+email+"' and password='"+password+"'");
			System.out.println("--login verifying--");
			return result.next();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}

	@Override
	public void saveReg(String name, String age, String weight, String city, String email, String mobile, String bloodgroup) {
    
	try {
		
		stmnt.executeUpdate("INSERT INTO registration values ('"+name+"','"+age+"','"+weight+"','"+city+"','"+email+"','"+mobile+"','"+bloodgroup+"')");
		System.out.println("--data saved--");
	}
	catch(Exception e) {
		e.printStackTrace();
	}
		
	}

	@Override
	public void deleteReg(String email) {
    
	try {
		
		stmnt.executeUpdate("DELETE FROM registration where email='"+email+"'");
		System.out.println("--deleted from db--");
	}
	catch(Exception e) {
		e.printStackTrace();
	}
		
	}

	@Override
	public void updateReg(String email, String mobile) {
		System.out.println("read data from model : " + email + " , " + mobile);
    
	try {
		stmnt.executeUpdate("UPDATE registration SET mobile='"+mobile+"' WHERE email='"+email+"'");
		System.out.println("--updated db--");
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	}

	@Override
	public ResultSet getAllReg() {
		
	try {
		
		ResultSet result = stmnt.executeQuery("SELECT * FROM registration");
		System.out.println("--data displaying--");
		return result;
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
		
		return null;
	}

	@Override
	public void closeDB() {
		try {
			
			con.close();
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}

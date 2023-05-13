package com.project.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;





public class login_dataservice {

	Connection conn= null;
	  void connect()
	  {
		  try {
			  Class.forName("com.mysql.jdbc.Driver");
			  conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/department_sc","root","");
		  }
		  catch(Exception e)
		  {
			  System.out.println(e);
		  }
	  }
	  public int check(String email, String password)
		
		{
		  int y=0;
			
			try
			{
				
				connect();
				PreparedStatement pst=conn.prepareStatement("select count(*) from `register_credentials` where email=? and pass=?");
				pst.setString(1,email);
				pst.setString(2,password);
				ResultSet rst=pst.executeQuery();
				rst.next();
				y=rst.getInt(1);
				System.out.println(y);
			
		       
		       
				
			}
			catch(Exception e)
			{
			System.out.println(e);
			}
			return y;
		}
	  
	
	 
}






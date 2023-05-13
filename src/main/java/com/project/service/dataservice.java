package com.project.service;
import java.sql.*; 
import com.project.model.model;
public class dataservice {
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
 public  void insert(model y)
  {
	  try {
		  connect();
		  
		  PreparedStatement pst=conn.prepareStatement("INSERT INTO `register_credentials`( `name`, `email`, `pass`, `council_activ`) VALUES (?,?,?,?)");
		  pst.setString(1,y.getName());
		  pst.setString(2,y.getEmail());
		  pst.setString(3, y.getPassword());
		  pst.setString(4,y.getCouncilact());
		  pst.executeUpdate();
		  conn.close();
	  }
	  catch(Exception e) {
		  System.out.println(e);
	  }
  }
}

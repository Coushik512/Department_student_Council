package com.project.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.project.model.enroll_model;

public class enroll_dataservice {

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
	 public  void insert(enroll_model e)
	  {
		  try {
			  connect();
			  
			  PreparedStatement pst=conn.prepareStatement("INSERT INTO `enroll_credentials`(`name`, `email`, `number`, `programme`, `workshop_intrested`, `food`) VALUES (?,?,?,?,?,?)");
			  pst.setString(1,e.getName());
			  pst.setString(2,e.getEmail());
			  pst.setString(3,e.getNumber());
			  pst.setString(4,e.getProgramme());
			  pst.setString(5,e.getWorkshop_intrested());
			  pst.setString(6,e.getFood());
			  
			  pst.executeUpdate();
			  conn.close();

		  }
		  catch(Exception ei) {
			  System.out.println(ei);
		  }
	  }
	}

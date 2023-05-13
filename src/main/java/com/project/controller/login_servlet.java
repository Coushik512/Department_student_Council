package com.project.controller;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.project.model.login_model;
import com.project.service.login_dataservice;

/**
 * Servlet implementation class login_servlet
 */
public class login_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String email= request.getParameter("e");
		String password = request.getParameter("p");
		HttpSession session=request.getSession(); 
		String email_s =request.getParameter("e");
        session.setAttribute("name",email_s);

		System.out.println(email);
		System.out.println(password);

		login_model y= new login_model();
	
		y.setEmail(email);
		y.setPass(password);
		
		
	
		login_dataservice ds =new login_dataservice();
		int r=ds.check(email,password);
		
		
		response.getWriter().print(r);
		  
		

	
		
		
		
		
        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

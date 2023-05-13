package com.project.controller;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.project.model.enroll_model;
import com.project.service.enroll_dataservice;

/**
 * Servlet implementation class enroll_servlet
 */
public class enroll_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public enroll_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		String name= request.getParameter("n");
		String email= request.getParameter("e");
		String number = request.getParameter("nu");
		String programme=request.getParameter("p");
		String workshop_intrested=request.getParameter("w");
		String food =request.getParameter("f");
		

		System.out.println(name); System.out.println(email); System.out.println(number);System.out.println(programme);
		System.out.println(workshop_intrested);System.out.println(food);
	

		enroll_model e= new enroll_model();
	    e.setName(name);
		e.setEmail(email);
		e.setNumber(number);
		e.setProgramme(programme);
		e.setWorkshop_intrested(workshop_intrested);
		e.setFood(food);
		
		//System.out.println(y.toString() );
		enroll_dataservice eds =new enroll_dataservice();
		eds.insert(e);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

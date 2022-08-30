package com.clinic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.clinic.dao.PetiontDao;
import com.clinic.petiont.Petiont;

/**
 * Servlet implementation class PetiontServlet
 */
@WebServlet("/PetiontServlet")
public class PetiontServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		int id=Integer.parseInt(request.getParameter("p_id"));
		String name=request.getParameter("p_name");
		String blood_group=request.getParameter("p_date");
		int p_age=Integer.parseInt(request.getParameter("p_age"));
		Petiont p=new Petiont(id, name, blood_group, p_age);
		PetiontDao dao=new PetiontDao();
		int d=dao.savePetiont(p);
		System.out.println(d);
		if(d==1){
			out.print("1");
			
		}
		else{
			out.print("3");
			
		}
	}

}

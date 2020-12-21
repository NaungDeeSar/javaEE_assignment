package comm.java.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import comm.java.entity.Student;

@WebServlet("/add-student")
public class StudentController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("title","student");
		getServletContext().getRequestDispatcher("/add_student.jsp").forward(req, resp);
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 String sname=req.getParameter("sname");
		 String email=req.getParameter("email");
		 String age=req.getParameter("age");
		 String year=req.getParameter("year");
		 String address=req.getParameter("address");
		 String date=req.getParameter("date");
		 
		 Student s=new Student();
		 s.setSname(sname);
		 s.setEmail(email);
		 s.setAge(Integer.parseInt(age));
		 s.setYear(year);
		 s.setAddress(address);
		 s.setDate(LocalDate.parse(date));
		 
		 HttpSession session=req.getSession(true);
		 List<Student> student=(ArrayList<Student>) session.getAttribute("studentlist");
	      if(student==null)
	    	  student=new ArrayList<Student>();
	      student.add(s);
	      session.setAttribute("studentlist", student);
	      
	      resp.sendRedirect("student.jsp");
	      
	}
       
}

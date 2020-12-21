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

import comm.java.entity.Course;
@WebServlet("/add-course")
public class CourseController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	req.setAttribute("title", "addcourse");
	getServletContext().getRequestDispatcher("/add_course.jsp").forward(req,resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// get parameter data
		String name=req.getParameter("name");
		String level=req.getParameter("level");
		String price=req.getParameter("price");
		String duration=req.getParameter("duration");
		String startDate=req.getParameter("date");
		//create object
		Course c=new Course();
		c.setName(name);
		c.setLevel(level);
		c.setPrice(Integer.parseInt(price));		
		c.setDuration(Integer.parseInt(duration));
		c.setDate(LocalDate.parse(startDate));
		//get session object
		HttpSession session=req.getSession(true);
		List<Course> list=(ArrayList<Course>) session.getAttribute("courselist");
		 if(list==null)
			list=new ArrayList<Course>();
		  list.add(c);
		 //added course object
		 session.setAttribute("courselist", list);
		 //invoke other web pages
		 resp.sendRedirect(req.getContextPath());
		
		
	}

}

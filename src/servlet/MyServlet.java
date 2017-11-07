package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import dbutil.Dbconn;
import model.insertHour;
/**
 * Servlet implementation class MyServlet
 */
@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setContentType("text/html");
		String Nowtime = new SimpleDateFormat("yyyy-MM-dd-hh-mm").format(Calendar.getInstance().getTime());
		request.setCharacterEncoding ("utf-8");
		insertHour timmer = new insertHour();
		PrintWriter out = response.getWriter();
		String te = new String(request.getParameter("aaa").getBytes("iso-8859-1"), "utf-8");
		
		//String meeting = oType;
		HttpSession session = request.getSession();
		String username=(String) session.getAttribute("uname");
		
		if(timmer.insert(Nowtime,username,te) == null) {
			response.sendRedirect("test.html");
			//out.println(oType);
			out.print(1);
		}
		//response.sendRedirect("test.html");
		else out.print(0);
	}

}

package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.TimeZone;

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
 * Servlet implementation class TimmerServlet
 */
//(name="TimmerServlet" ,urlPatterns = "/showtime.do" )
@WebServlet("/TimmerServlet")
public class TimmerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TimmerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		// ����ˢ���Զ����ص��¼����Ϊ 1 ��
		//response.setIntHeader("Refresh", 1);
		// ������Ӧ��������
		response.setContentType("text/html");
		
		//��ȡ��ǰ��ʱ��
		//Calendar now = Calendar.getInstance(TimeZone.getTimeZone("GMT+8"));
		//���õ���ʱ��ĸ�ʽ
		String Nowtime = new SimpleDateFormat("yyyy-MM-dd-hh-mm").format(Calendar.getInstance().getTime());
		request.setCharacterEncoding ("utf-8");
		insertHour timmer = new insertHour();
		String oType = request.getParameter("oType");
		String meeting = oType;
		HttpSession session = request.getSession();
		String username=(String) session.getAttribute("uname");
		PrintWriter out = response.getWriter();
		if(timmer.insert(Nowtime,username,meeting,'0') == null) {
			//response.sendRedirect("test.html");z
			out.print(1);
		}
		//response.sendRedirect("test.html")
		else out.print(0);
		
		
		
		//System.out.println("uname="+uname);
		
		/*
		 * ����
		 */
//		
//		PrintWriter out = response.getWriter();
//		
//		out.println("<!DOCTYPE html>");
//		out.println("<HTML>");
//      out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
//      out.println("  <BODY>");
//      out.print(Nowtime/*now.getTime()*/);
//      out.println("  </BODY>");
//      out.println("</HTML>");
//      out.flush();
//      out.close();
        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

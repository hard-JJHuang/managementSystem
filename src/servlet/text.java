package servlet;

import java.*;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbutil.Dbconn;
import model.insertHour;

/**
 * Servlet implementation class text
 */
@WebServlet("/text")
public class text extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public text() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("UTF-8");
		//��ȡ��������ʱ��
		String Nowtime = new SimpleDateFormat("yyyy-MM-dd\thh:mm").format(Calendar.getInstance().getTime());
		//��ȡǰ�˻�ȡmeeting������
		String meeting = new String(request.getParameter("aaa").getBytes("iso-8859-1"), "utf-8");
		//��ȡusername��session
		HttpSession session = request.getSession();
		String username=(String) session.getAttribute("uname");
		//��ȡlocation������
		String gps = new String(request.getParameter("gps").getBytes("iso-8859-1"), "utf-8");
		//����Insert����
		insertHour timmer = new insertHour();
		timmer.insert(Nowtime, username, meeting,gps);
		System.out.println(meeting);
		System.out.println(Nowtime);
		System.out.println(gps);
		response.sendRedirect("QT_kqrecord.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
//		request.setCharacterEncoding("UTF-8");
//		String te=request.getParameter("aaa");
//		System.out.println(te);
	}

}

package com.zjn.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zjn.util.SignUtil;

/**
 * ������������
 * 
 */
@SuppressWarnings("serial")
public class CoreServlet extends HttpServlet {


    /**
     * ȷ����������΢�ŷ�����
     */
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // ΢�ż���ǩ��
        String signature = request.getParameter("signature");
        // ʱ���
        String timestamp = request.getParameter("timestamp");
        // �����
        String nonce = request.getParameter("nonce");
        // ����ַ���
        String echostr = request.getParameter("echostr");

        PrintWriter out = response.getWriter();
        // ͨ������signature���������У�飬��У��ɹ���ԭ������echostr����ʾ����ɹ����������ʧ��
        if (SignUtil.checkSignature(signature, timestamp, nonce)) {
            out.print(echostr);
            System.out.println("΢�ŷ�����֤�ɹ���");
        }
        out.close();
        out = null;
    }

    /**
     * ����΢�ŷ�������������Ϣ
     */
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
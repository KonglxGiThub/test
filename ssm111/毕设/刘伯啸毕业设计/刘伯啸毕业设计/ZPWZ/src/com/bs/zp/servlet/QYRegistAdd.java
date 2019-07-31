package com.bs.zp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bs.zp.bean.Company;
import com.bs.zp.dao.CpyDao;
import com.bs.zp.util.Constants;



public class QYRegistAdd extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private CpyDao dao;
	public QYRegistAdd(){
		
	}
	/**
	 * @see doGet方法
	 */
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see doPost方法
	 */
	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType(Constants.MY_CONTENTTYPE);
		request.setCharacterEncoding(Constants.MY_ENCODING);
		String account = request.getParameter("account");
		String pwd = request.getParameter("password");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		dao = new CpyDao();
		try {
			Company cpy = new Company();
			cpy.setAccount(account);
			cpy.setPwd(pwd);
			cpy.setEmail(email);
			cpy.setTel(tel);
			int num= dao.zhuce(cpy);
			if(num>=1){
				CpyLogin login = new CpyLogin();
				login.doPost(request, response);
				//response.sendRedirect("SekLogin?password="+pwd+"&account="+account);
			}else{
				request.setAttribute("addr", "GEzhuce.jsp");
				request.setAttribute("message", "注册失败请重新注册");
				request.getRequestDispatcher("Message.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}

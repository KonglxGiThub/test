package com.bs.zp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bs.zp.bean.Seeker;
import com.bs.zp.dao.SekDao;
import com.bs.zp.util.Constants;



public class GRRegistAdd extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private SekDao dao;
	public GRRegistAdd(){
		
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
		dao = new SekDao();
		try {
			Seeker sek = new Seeker();
			sek.setAccount(account);
			sek.setPwd(pwd);
			sek.setEmail(email);
			sek.setTel(tel);
			int num= dao.zhuce(sek);
			if(num>=1){
				SekLogin login = new SekLogin();
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

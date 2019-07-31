package com.bs.zp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bs.zp.bean.ResumeBean;
import com.bs.zp.dao.ResDao;
import com.bs.zp.util.Constants;



public class ViewSekerById extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private ResDao dao;
	public ViewSekerById(){
		
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
		int id = Integer.valueOf(request.getParameter("id"));
		dao = new ResDao();
		ResumeBean rb = new ResumeBean();
		try {
			rb = dao.findResume(id);
			request.setAttribute("ResumeBean", rb);
			request.getRequestDispatcher("Seeker.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}

package com.bs.zp.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bs.zp.bean.Company;
import com.bs.zp.dao.CpyDao;
import com.bs.zp.util.Constants;



public class CpyZLSerrvlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private CpyDao dao;
	private List<Company> lists;
	/**
	 * @return the lists
	 */
	public List<Company> getLists() {
		return lists;
	}
	/**
	 * @param lists the lists to set
	 */
	public void setLists(List<Company> lists) {
		this.lists = lists;
	}
	public CpyZLSerrvlet(){
		
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
		int id = Integer.valueOf(request.getParameter("id").trim());
		dao = new CpyDao();
		try {
			Company cpy = dao.findById(id);
			request.getSession().setAttribute("CpyBean", cpy);
			request.getRequestDispatcher("QYziliao.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}

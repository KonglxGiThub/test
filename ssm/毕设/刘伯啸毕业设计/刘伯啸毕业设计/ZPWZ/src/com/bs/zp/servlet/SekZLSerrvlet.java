package com.bs.zp.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bs.zp.bean.Seeker;
import com.bs.zp.dao.SekDao;
import com.bs.zp.util.Constants;



public class SekZLSerrvlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private SekDao dao;
	private List<Seeker> lists;
	/**
	 * @return the lists
	 */
	public List<Seeker> getLists() {
		return lists;
	}
	/**
	 * @param lists the lists to set
	 */
	public void setLists(List<Seeker> lists) {
		this.lists = lists;
	}
	public SekZLSerrvlet(){
		
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
		dao = new SekDao();
		try {
			Seeker sek = dao.findById(id);
			request.getSession().setAttribute("UserBean", sek);
			request.getRequestDispatcher("GEziliao.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}

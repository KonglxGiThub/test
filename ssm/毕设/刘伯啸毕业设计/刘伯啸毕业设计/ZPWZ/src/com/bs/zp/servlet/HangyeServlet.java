package com.bs.zp.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bs.zp.bean.WorkBean;
import com.bs.zp.dao.JobDao;
import com.bs.zp.util.Constants;



public class HangyeServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private JobDao dao;
	private List<WorkBean> lists;
	/**
	 * @return the lists
	 */
	public List<WorkBean> getLists() {
		return lists;
	}
	/**
	 * @param lists the lists to set
	 */
	public void setLists(List<WorkBean> lists) {
		this.lists = lists;
	}
	public HangyeServlet(){
		
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
		int c1 = Integer.valueOf(request.getParameter("c1"));
		int c2 = Integer.valueOf(request.getParameter("c2"));
		int now = 1;
		dao = new JobDao();
		try {
			lists = dao.findByJob(c1, c2, now);
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}

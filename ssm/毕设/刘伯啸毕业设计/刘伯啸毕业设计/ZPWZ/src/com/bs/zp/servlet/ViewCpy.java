package com.bs.zp.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bs.zp.bean.Company;
import com.bs.zp.bean.Job;
import com.bs.zp.bean.Position;
import com.bs.zp.dao.CpyDao;
import com.bs.zp.dao.JobDao;
import com.bs.zp.dao.PosDao;
import com.bs.zp.util.Constants;



public class ViewCpy extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private CpyDao daoC;
	private JobDao daoJ;
	private PosDao daoP;
	private List<Job> list;
	
	/**
	 * @return the list
	 */
	public List<Job> getList() {
		return list;
	}
	/**
	 * @param list the list to set
	 */
	public void setList(List<Job> list) {
		this.list = list;
	}
	public ViewCpy(){
		
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
		daoC = new CpyDao();
		daoJ = new JobDao();
		daoP = new PosDao();
		try {
			Company cpy = new Company();
			Position pos = new Position();
			cpy = daoC.findById(id);
			list = daoJ.findAllJobById(id);
			pos = daoP.findPosByCid(cpy.getIndustry());
			request.setAttribute("company", cpy);
			request.setAttribute("list", list);
			request.setAttribute("position", pos);
			request.getRequestDispatcher("RMJob.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}

package com.bs.zp.servlet;

import java.io.IOException;

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



public class ViewJobWork extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private JobDao daoJ;
	private CpyDao daoC;
	private PosDao daoP;
	
	public ViewJobWork(){
		
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
		int cid = Integer.valueOf(request.getParameter("cid"));
		Job job = new Job();
		Company cpy = new Company();
		Position pos = new Position();
		daoJ = new JobDao();
		daoC = new CpyDao();
		daoP = new PosDao();
		try {
			job = daoJ.findJobById(id);
			cpy = daoC.findById(cid);
			pos = daoP.findPosByCid(cpy.getIndustry());
			request.setAttribute("JobBean", job);
			request.setAttribute("CompanyBean", cpy);
			request.setAttribute("PositionBean", pos);
			request.getRequestDispatcher("Job.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}

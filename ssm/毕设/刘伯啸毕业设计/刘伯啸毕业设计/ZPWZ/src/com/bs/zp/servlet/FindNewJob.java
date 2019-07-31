package com.bs.zp.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bs.zp.bean.Company;
import com.bs.zp.bean.Job;
import com.bs.zp.bean.ZXCPYJobBean;
import com.bs.zp.dao.CpyDao;
import com.bs.zp.dao.JobDao;
import com.bs.zp.util.Constants;



public class FindNewJob extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private JobDao dao1;
	private CpyDao dao2;
	
	public FindNewJob(){
		
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
		ZXCPYJobBean bean = new ZXCPYJobBean();
		dao1 = new JobDao();
		dao2 = new CpyDao();
		try {
			List<ZXCPYJobBean> listBean = new ArrayList<ZXCPYJobBean>();
			List<Company> listCpy = dao2.findWorkNew();
			for(int i=0;i<listCpy.size();i++){
				int cid = listCpy.get(i).getId();
				Company company = dao2.findByIdNew(cid);
				List<Job> jobList =  dao1.findJobWorkByCid(cid);
				if(jobList==null){
					continue;
				}else{
					bean.setCompany(company);
					bean.setJobList(jobList);
					listBean.add(bean);
				}
			}
			request.setAttribute("lists", listBean);
			request.getRequestDispatcher("zuixin.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}

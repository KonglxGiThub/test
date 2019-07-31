package com.bs.zp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bs.zp.bean.Job;
import com.bs.zp.dao.JobDao;
import com.bs.zp.util.Constants;
import com.bs.zp.util.Validate;



public class JobAddServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private JobDao dao;
	public JobAddServlet(){
		
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
		Validate vd = new Validate();
		String name = request.getParameter("name");
		String cName = request.getParameter("cName");
		String money = request.getParameter("money");
		String addr = request.getParameter("addr");
		String time = vd.getSystemDate();
		String welfare = request.getParameter("welfare");
		String education = request.getParameter("education");
		String background = request.getParameter("background");
		String language = request.getParameter("language");
		String c1 = request.getParameter("c1");
		String c2 = request.getParameter("c2");
		String description = request.getParameter("description");
		String tel = request.getParameter("tel");
		int num = Integer.valueOf(request.getParameter("num"));
		int cid = Integer.valueOf(request.getParameter("cid"));
		int state = 1;
		dao = new JobDao();
		try {
			Job job = new Job();
			job.setAddr(addr);
			job.setBackground(background);
			job.setCid(cid);
			job.setCName(cName);
			job.setDescription(description);
			job.setEducation(education);
			job.setLanguage(language);
			job.setMoney(money);
			job.setName(name);
			job.setNum(num);
			job.setState(state);
			job.setTel(tel);
			job.setWelfare(welfare);
			job.setTime(time);
			int nums= dao.add(job);
			if(nums==1){
				job = dao.findJobByTime(time);
				nums = dao.insert(job.getId(), c1, c2);
				if(nums==1){
					CpyLogin login = new CpyLogin();
					login.doPost(request, response);
				}
			}else{
				request.setAttribute("addr", "GElogin.jsp");
				request.setAttribute("message", "用户名不存在请重新登录");
				request.getRequestDispatcher("Message.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}

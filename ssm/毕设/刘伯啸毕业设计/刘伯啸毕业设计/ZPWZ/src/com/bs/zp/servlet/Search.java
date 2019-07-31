package com.bs.zp.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bs.zp.bean.Page;
import com.bs.zp.bean.WorkBean;
import com.bs.zp.dao.JobDao;
import com.bs.zp.dao.PageDao;
import com.bs.zp.util.Constants;
import com.bs.zp.util.PageCount;



public class Search extends HttpServlet{
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
	public Search(){
		
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
		String str = request.getParameter("searchInput");
		int now = 1;
		//页码初始化
		if(request.getParameter("now")!=null&&request.getParameter("now")!=""){
			if(Integer.valueOf(request.getParameter("now"))>1){
				now = Integer.valueOf(request.getParameter("now"));
			}
			if("up".equals(request.getParameter("pageflg"))){
				now = now-1;
			}else if("down".equals(request.getParameter("pageflg"))){
				now = now+1;
			}
		}
		dao = new JobDao();
		try {
			lists = dao.findByJob(str, now);
			if(lists.size()==0){
				lists = dao.findByJob(str,1);
				request.setAttribute("now", 1);
			}
			//分页
			Page page = new Page();
			PageCount pc = new PageCount();
			PageDao daoP = new PageDao();
			page = pc.countPage(daoP.findByJob(str));
			page.setNow(now);
			request.setAttribute("servlet", "Search?a="+1);
			request.setAttribute("page", page);
			request.setAttribute("now", now);
			request.setAttribute("lists", lists);
			request.getRequestDispatcher("WorkList.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}

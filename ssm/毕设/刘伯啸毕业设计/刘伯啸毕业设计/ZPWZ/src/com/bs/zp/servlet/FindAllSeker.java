package com.bs.zp.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bs.zp.bean.Page;
import com.bs.zp.bean.Seeker;
import com.bs.zp.dao.PageDao;
import com.bs.zp.dao.SekDao;
import com.bs.zp.util.Constants;
import com.bs.zp.util.PageCount;



public class FindAllSeker extends HttpServlet{
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
	public FindAllSeker(){
		
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
		dao = new SekDao();
		try {
			lists = dao.findAllId(now);
			if(lists.size()==0){
				lists = dao.findAllId(1);
				request.setAttribute("now", 1);
			}
			Page page = new Page();
			PageCount pc = new PageCount();
			PageDao daoP = new PageDao();
			page = pc.countPage(daoP.findAllSek());
			page.setNow(now);
			request.setAttribute("servlet", "FindAllSeker?a="+1);
			request.setAttribute("page", page);
			request.setAttribute("now", now);
			request.setAttribute("lists", lists);
			request.getRequestDispatcher("SeekerList.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}

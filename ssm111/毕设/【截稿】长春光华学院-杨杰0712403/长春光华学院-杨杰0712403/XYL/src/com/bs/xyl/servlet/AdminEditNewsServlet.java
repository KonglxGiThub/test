package com.bs.xyl.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.bs.xyl.bean.News;
import com.bs.xyl.dao.NewsDao;
import com.bs.xyl.util.Constants;
import com.bs.xyl.util.Validate;

public class AdminEditNewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminEditNewsServlet() {

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType(Constants.MY_CONTENTTYPE);
		request.setCharacterEncoding(Constants.MY_ENCODING);
		int id = Integer.valueOf(request.getParameter("id"));
		String title = request.getParameter("title");
		String text = request.getParameter("text");
		Validate vd = new Validate();
		String time = vd.getSystemDate();
		NewsDao dao = new NewsDao();
		int rid = dao.findId("t_news", "title", "id", title);
		if (rid == id || rid == 0) {
			News news = new News(id, title, text, time);
			int num = dao.update(news);
			if (num == 1) {
				response.sendRedirect("AdminViewNewsServlet");
			} else {
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("errorMsg", "操作失败，请确认后再重新操作！");
				String dataJson = JSONObject.fromObject(map).toString();
				response.getWriter().write(dataJson);
			}
		} else {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("errorMsg", "数据异常，可能存在多条");
			String dataJson = JSONObject.fromObject(map).toString();
			response.getWriter().write(dataJson);
		}
	}

}

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

public class AdminNewNewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminNewNewsServlet() {

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType(Constants.MY_CONTENTTYPE);
		request.setCharacterEncoding(Constants.MY_ENCODING);
		String title = request.getParameter("title");
		String text = request.getParameter("text");
		Validate vd = new Validate();
		String time = vd.getSystemDate();
		NewsDao dao = new NewsDao();
		String result = dao.login("t_news", "title", "text", title);
		if (text.equals(result)) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("errorMsg", "您所增加的内容已经存在，请确认后再重新操作！");
			String dataJson = JSONObject.fromObject(map).toString();
			response.getWriter().write(dataJson);
		} else {
			News news = new News(title, text, time);
			int num = dao.addNew(news);
			if (num == 1) {
				response.sendRedirect("AdminViewNewsServlet");
			} else {
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("errorMsg", "新增失败，请确认后再重新操作！");
				String dataJson = JSONObject.fromObject(map).toString();
				response.getWriter().write(dataJson);
			}
		}
	}

}

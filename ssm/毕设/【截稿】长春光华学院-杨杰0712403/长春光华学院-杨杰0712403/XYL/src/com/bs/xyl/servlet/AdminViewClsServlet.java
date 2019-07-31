package com.bs.xyl.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.bs.xyl.bean.Banji;
import com.bs.xyl.dao.BanjiDao;
import com.bs.xyl.util.Constants;

public class AdminViewClsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminViewClsServlet() {

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType(Constants.MY_CONTENTTYPE);
		request.setCharacterEncoding(Constants.MY_ENCODING);
		BanjiDao dao = new BanjiDao();
		List<Banji> list = dao.viewAll();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("rows", list);
		map.put("total", list.size());
		String dataJson = JSONObject.fromObject(map).toString();
		response.getWriter().write(dataJson);
	}

}

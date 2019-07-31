package com.bs.xyl.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import com.bs.xyl.bean.SelBan;
import com.bs.xyl.dao.BanjiDao;
import com.bs.xyl.util.Constants;

public class AdminSelClsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminSelClsServlet() {

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
		List<SelBan> list = dao.selBan();
		String dataJson = JSONArray.fromObject(list).toString();
		System.out.println(dataJson);
		response.getWriter().write(dataJson);
	}

}

package com.bs.xyl.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.bs.xyl.bean.Message;
import com.bs.xyl.dao.MessageDao;
import com.bs.xyl.util.Constants;

public class AdminNewMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminNewMessageServlet() {

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
		String time = request.getParameter("time");
		int state = Integer.valueOf(request.getParameter("state"));
		String rtext = request.getParameter("rtext");
		String rtime = request.getParameter("rtime");
		int stu_id = Integer.valueOf(request.getParameter("stu_id"));
		int class_id = Integer.valueOf(request.getParameter("class_id"));
		MessageDao dao = new MessageDao();
		Message message = new Message(title, text, time, state, rtext, rtime,
				stu_id, class_id);
		int num = dao.addNew(message);
		if (num == 1) {
			response.sendRedirect("AdminViewMessageServlet");
		} else {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("errorMsg", "新增失败，请确认后再重新操作！");
			String dataJson = JSONObject.fromObject(map).toString();
			response.getWriter().write(dataJson);
		}
	}

}

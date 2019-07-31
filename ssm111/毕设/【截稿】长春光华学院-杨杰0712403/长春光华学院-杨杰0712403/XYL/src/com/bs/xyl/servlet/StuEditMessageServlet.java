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

public class StuEditMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public StuEditMessageServlet() {

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
		int stu_id = Integer.valueOf(request.getParameter("stu_id"));
		String title = request.getParameter("title");
		String text = request.getParameter("text");
		MessageDao dao = new MessageDao();
		Message message = new Message();
		message.setId(id);
		message.setTitle(title);
		message.setText(text);
		int num = dao.updateStu(message);
		if (num == 1) {
			response.sendRedirect("StuViewMessageServlet?stu_id="+stu_id);
		} else {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("errorMsg", "新增失败，请确认后再重新操作！");
			String dataJson = JSONObject.fromObject(map).toString();
			response.getWriter().write(dataJson);
		}
	}

}

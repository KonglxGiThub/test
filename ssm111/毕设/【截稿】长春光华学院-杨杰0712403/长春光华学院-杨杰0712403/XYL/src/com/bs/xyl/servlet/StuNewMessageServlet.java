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
import com.bs.xyl.util.Validate;

public class StuNewMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public StuNewMessageServlet() {

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType(Constants.MY_CONTENTTYPE);
		request.setCharacterEncoding(Constants.MY_ENCODING);
		Validate vd = new Validate();
		String title = request.getParameter("title");
		String text = request.getParameter("text");
		String time = vd.getSystemDate();
		int stu_id = Integer.valueOf(request.getParameter("stu_id"));
		int class_id = Integer.valueOf(request.getParameter("class_id"));
		MessageDao dao = new MessageDao();
		Message message = new Message();
		message.setTitle(title);
		message.setText(text);
		message.setTime(time);
		message.setClass_id(class_id);
		message.setState(0);
		message.setStu_id(stu_id);
		int num = dao.addStuMessage(message);
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

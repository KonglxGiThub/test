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

public class ClsNewMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ClsNewMessageServlet() {

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
		String rtext = request.getParameter("rtext");
		int stu_id = 5;
		int class_id = 5;
		int id = 5;
		int state = Integer.valueOf(request.getParameter("state"));
		String time = vd.getSystemDate();
		String rtime = vd.getSystemDate();
		MessageDao dao = new MessageDao();
		String result = dao.timeStampdiff(id);
		if ("".equals(result)||text.equals(result)) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("errorMsg", "您所增加的内容已经存在，请确认后再重新操作！");
			String dataJson = JSONObject.fromObject(map).toString();
			response.getWriter().write(dataJson);
		} else {
			Message message = new Message();
			message.setTitle(title);
			message.setText(text);
			message.setTime(time);
			message.setRtext(rtext);
			message.setRtime(rtime);
			message.setClass_id(class_id);
			message.setStu_id(stu_id);
			int num = dao.addNew(message);
			if (num == 1) {
				response.sendRedirect("ClsViewNewsServlet?");
			} else {
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("errorMsg", "新增失败，请确认后再重新操作！");
				String dataJson = JSONObject.fromObject(map).toString();
				response.getWriter().write(dataJson);
			}
		}
	}

}

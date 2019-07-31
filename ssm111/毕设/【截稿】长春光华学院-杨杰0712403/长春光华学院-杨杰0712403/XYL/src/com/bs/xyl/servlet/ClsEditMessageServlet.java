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

public class ClsEditMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ClsEditMessageServlet() {

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
		String rtext = request.getParameter("rtext");
		MessageDao dao = new MessageDao();
		Message message = new Message();
		message.setRtext(rtext);
		message.setId(id);
		int num = dao.reply(message);
		if (num == 1) {
			response.sendRedirect("AdminViewMessageServlet");
		} else {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("errorMsg", "评论失败，请确认后再重新操作！");
			String dataJson = JSONObject.fromObject(map).toString();
			response.getWriter().write(dataJson);
		}
	}

}

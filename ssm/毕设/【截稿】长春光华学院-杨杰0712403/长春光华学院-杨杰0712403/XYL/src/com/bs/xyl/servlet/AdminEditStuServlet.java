package com.bs.xyl.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.bs.xyl.bean.Student;
import com.bs.xyl.dao.StuDao;
import com.bs.xyl.util.Constants;

public class AdminEditStuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminEditStuServlet() {

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
		String stu_no = request.getParameter("stu_no");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String sex = request.getParameter("sex");
		String birthday = request.getParameter("birthday");
		String qq = request.getParameter("qq");
		String email = request.getParameter("email");
		String img = request.getParameter("img");
		String nickname = request.getParameter("nickname");
		int state = Integer.valueOf(request.getParameter("state"));
		int class_id = Integer.valueOf(request.getParameter("class_id"));
		StuDao dao = new StuDao();
		int count = dao.findId("t_stu", "stu_no","name",name);
		if (count<=1) {
			Student stu = new Student();
			int num = dao.update2(stu);
			if (num == 1) {
				response.sendRedirect("AdminViewStuServlet");
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

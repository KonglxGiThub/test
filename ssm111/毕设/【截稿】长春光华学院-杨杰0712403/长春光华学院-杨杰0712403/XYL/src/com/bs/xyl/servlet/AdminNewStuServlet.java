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

public class AdminNewStuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminNewStuServlet() {

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType(Constants.MY_CONTENTTYPE);
		request.setCharacterEncoding(Constants.MY_ENCODING);
		String stu_no = request.getParameter("stu_no");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String sex = request.getParameter("sex");
		String birthday = request.getParameter("birthday");
		String qq = request.getParameter("qq");
		String email = request.getParameter("email");
		String img = request.getParameter("img");
		int state =Integer.valueOf(request.getParameter("state"));
		int class_id =Integer.valueOf(request.getParameter("class_id"));
		String nickname = request.getParameter("nickname");
		StuDao dao = new StuDao();
		String result = dao.login("t_class", "stu_no", "name", stu_no);
		if (name.equals(result)) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("errorMsg", "您所增加的内容已经存在，请确认后再重新操作！");
			String dataJson = JSONObject.fromObject(map).toString();
			response.getWriter().write(dataJson);
		} else {
			Student stu = new Student(stu_no,pwd,name,tel,sex,birthday,qq,email,img,nickname,state,class_id);
			int num = dao.addNew(stu);
			if (num == 1) {
				response.sendRedirect("AdminViewStuServlet");
			} else {
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("errorMsg", "新增失败，请确认后再重新操作！");
				String dataJson = JSONObject.fromObject(map).toString();
				response.getWriter().write(dataJson);
			}
		}
	}
}

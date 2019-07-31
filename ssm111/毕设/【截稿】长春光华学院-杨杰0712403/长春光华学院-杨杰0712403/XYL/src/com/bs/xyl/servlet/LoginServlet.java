package com.bs.xyl.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bs.xyl.bean.Result;
import com.bs.xyl.bean.Student;
import com.bs.xyl.dao.StuDao;
import com.bs.xyl.util.Constants;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType(Constants.MY_CONTENTTYPE);
		request.setCharacterEncoding(Constants.MY_ENCODING);
		Result result = new Result();
		String stu_no = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		StuDao dao = new StuDao();
		String rpwd = dao.login("t_stu", "stu_no", "pwd", stu_no);
		if (!"".equals(rpwd) && null != rpwd) {
				Student stu = dao.findStu(stu_no, pwd);
				dao.log("ÓÃ»§"+stu.getName()+"µÇÂ¼¼ÇÂ¼");
				result.setAddress("Student.jsp");
				request.getSession().setAttribute("UserBean", stu);
		} else {
			result.setMessage("3");
		}
		request.setAttribute("result", result);
		request.getRequestDispatcher(result.getAddress()).forward(request, response);
	}

}

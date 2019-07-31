package com.bs.zp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bs.zp.dao.ResDao;
import com.bs.zp.util.Constants;
import com.bs.zp.util.Validate;

public class ResAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ResDao dao;

	public ResAdd() {

	}

	/**
	 * @see doGet方法
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see doPost方法
	 */
	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType(Constants.MY_CONTENTTYPE);
		request.setCharacterEncoding(Constants.MY_ENCODING);
		int id = Integer.valueOf(request.getParameter("id"));
		int sid = Integer.valueOf(request.getParameter("sid"));
		int cid = Integer.valueOf(request.getParameter("cid"));
		int jid = Integer.valueOf(request.getParameter("jid"));
		int type = Integer.valueOf(request.getParameter("type"));
		dao = new ResDao();
		try {
			Validate vl = new Validate();
			int num = 0;
			if (dao.count(sid, cid, jid) == 0) {
				num = dao.addRes(sid, cid, vl.getDay(), type, jid);
			}
			if (num == 1) {
				request.setAttribute("message", "成功提交申请");
				request.setAttribute("addr", "ViewJobWork?id=" + id + "&cid="
						+ cid);
				request.getRequestDispatcher("Message.jsp").forward(request,
						response);
			} else {
				request.setAttribute("message", "申请已提交不用重复提交");
				request.setAttribute("addr", "ViewJobWork?id=" + id + "&cid="
						+ cid);
				request.getRequestDispatcher("Message.jsp").forward(request,
						response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}

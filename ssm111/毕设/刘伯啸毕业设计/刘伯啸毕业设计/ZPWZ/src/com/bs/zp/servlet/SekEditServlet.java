package com.bs.zp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bs.zp.bean.Seeker;
import com.bs.zp.dao.SekDao;
import com.bs.zp.util.Constants;



public class SekEditServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private SekDao dao;
	public SekEditServlet(){
		
	}
	/**
	 * @see doGet方法
	 */
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
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
		String account = request.getParameter("account").trim();
		String pwd = request.getParameter("pwd").trim();
		String name = request.getParameter("name").trim();
		String sex = request.getParameter("sex").trim();
		String age = request.getParameter("birthday").trim();
		String addr = request.getParameter("addr").trim();
		String tel = request.getParameter("telPhone").trim();
		String cardId = request.getParameter("cardId").trim();
		String political = request.getParameter("political").trim();
		String education = request.getParameter("education").trim();
		String background = request.getParameter("background").trim();
		String qq = request.getParameter("qq").trim();
		String email = request.getParameter("email").trim();
		String text = request.getParameter("text").trim();
		int state = Integer.valueOf(request.getParameter("state").trim());
		dao = new SekDao();
		try {
			Seeker sek = new Seeker();
			sek.setId(id);
			sek.setName(name);
			sek.setSex(sex);
			sek.setState(state);
			sek.setAddr(addr);
			sek.setAge(age);
			sek.setTel(tel);
			sek.setText(text);
			sek.setCardId(cardId);
			sek.setPolitical(political);
			sek.setEducation(education);
			sek.setQq(qq);
			sek.setEmail(email);
			sek.setBackground(background);
			int num= dao.update(sek);
			if(num==1){
				request.setAttribute("account", account);
				request.setAttribute("pwd", pwd);
				request.setAttribute("addr", "index.jsp");
				request.setAttribute("message", "修改成功");
				request.getRequestDispatcher("Message2.jsp").forward(request, response);
			}else{
				
				request.setAttribute("addr", "index.jsp");
				request.setAttribute("message", "修改失败");
				request.getRequestDispatcher("Message.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}

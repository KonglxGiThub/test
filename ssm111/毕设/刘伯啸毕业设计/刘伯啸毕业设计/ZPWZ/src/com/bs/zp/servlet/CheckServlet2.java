package com.bs.zp.servlet;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class CheckServlet2 extends HttpServlet{
	private static final long serialVersionUID = 1L;
	public static final String DBDRIVER = "com.mysql.jdbc.Driver";
	public static final String DBURL = "jdbc:mysql://localhost:3306/ZPWZ";
	public static final String DBUSER = "root";
	public static final String DBPASSWORD = "1";

	public void doGet(HttpServletRequest request, HttpServletResponse response)
               throws ServletException,java.io.IOException{
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
               throws ServletException,java.io.IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html");		// 设置回应的MIME
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		PrintWriter out = response.getWriter();		// 接收验证的userid
		String account = request.getParameter("account");
		try{
			Class.forName(DBDRIVER);	// 加载驱动
			conn = DriverManager.
				getConnection(DBURL, DBUSER, DBPASSWORD);	// 连接数据库

			String sql = "SELECT COUNT(id) FROM seeker WHERE account=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, account);
			rs = pstmt.executeQuery();
			if (rs.next()){
				if (rs.getInt(1) > 0){		// 判断ID是否已存在
					out.print("true");		// 已存在
				}else {
					out.print("false");
				}
			}
			out.close();
			
		}catch (Exception e){
			e.printStackTrace();
		}finally {
			try{
				conn.close();
			}catch (Exception e){
				e.printStackTrace();
			}
		}
	}

}

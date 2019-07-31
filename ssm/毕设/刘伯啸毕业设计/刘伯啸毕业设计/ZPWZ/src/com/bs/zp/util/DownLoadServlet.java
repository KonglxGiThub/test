package com.bs.zp.util;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class DownLoadServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = "D:\\workspace\\bishe\\Upload\\WebRoot\\uploadFile";
		String fileName = request.getParameter("filename");
		File file = new File(path + "/" + fileName);
		//如果文件存在
		if (file.exists()) {
			//设置响应类型及响应头
			response.setContentType("application/x-msdownload");
			response.addHeader("Content-Disposition", "attachment; filename=\""
					+ fileName + "\"");
			//读取文件
			InputStream inputStream = new FileInputStream(file);
			BufferedInputStream bis = new BufferedInputStream(inputStream);
			byte[] bytes = new byte[1024];
			ServletOutputStream outStream = response.getOutputStream();
			BufferedOutputStream bos = new BufferedOutputStream(outStream);
			int readLength = 0;
			while ((readLength = bis.read(bytes)) != -1) {
				bos.write(bytes, 0, readLength);
			}
			//释放资源
			inputStream.close();
			bis.close();
			bos.flush();
			outStream.close();
			bos.close();
		}
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
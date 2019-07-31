package com.bs.xyl.util;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.bs.xyl.bean.Student;
import com.bs.xyl.dao.StuDao;

public class FileUploadFromEditServlet extends HttpServlet {
	private static final long serialVersionUID = 2598654810371467006L;

	private String saveDirectoryName;

	private static final String address = "D:\\workspace\\2016\\XYL\\WebRoot\\images\\upload\\";

	@Override
	public void init() throws ServletException {
		saveDirectoryName = getInitParameter("saveDirectoryName");
	}

	@SuppressWarnings("unchecked")
	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 设置字符编码
		request.setCharacterEncoding("UTF-8");

		// 创建'DiskFileItemFactory'对象
		DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();

		// 创建'ServletFileUpload'对象
		ServletFileUpload servletFileUpload = new ServletFileUpload(
				diskFileItemFactory);

		try {
			// 获取Http请求消息 ('Request') 中的所有请求参数 (包括普通参数以及上传的内容)
			List<FileItem> fileItems = servletFileUpload.parseRequest(request);
			Student stu = new Student();
			Class<?> objectClass = stu.getClass();
			// 循环取出Http请求消息 ('Request') 中的所有请求参数
			for (FileItem fileItem : fileItems) {
				// 如果该Http请求消息中的参数是普通参数 (表单中的一个普通值)
				if (fileItem.isFormField()) {
					// 获得表单中的普通参数值 (上传者, 文件的等级), 使用UTF-8的编码格式获取该普通参数的值
					String requestOfValue = fileItem.getString("UTF-8");
					System.out.println("表单中的普通参数: 上传人的姓名|文件等级 ("
							+ requestOfValue + "), 表单中的名字为'"
							+ fileItem.getFieldName() + "'");
					Class<?> type = null;
					// 获得表单中的普通参数在请求中所对应的名字
					Method method = null;
					String methodName = Change.getMethodName(fileItem
							.getFieldName());
					if (methodName.equals("setState")
							|| methodName.equals("setClass_id")
							|| methodName.equals("setId")) {
						type = Integer.class;
						method = objectClass.getMethod(methodName, type);
						method.invoke(stu, Integer.valueOf(requestOfValue));
					} else {
						type = String.class;
						method = objectClass.getMethod(methodName, type);
						method.invoke(stu, requestOfValue);
					}
				}
			}
			StuDao dao = new StuDao();
			int num = dao.update2(stu);
			if (num == 1) {
				response.sendRedirect("AdminViewStuServlet");
			}
			System.out.println("num:" + num);
		} catch (FileUploadException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
}

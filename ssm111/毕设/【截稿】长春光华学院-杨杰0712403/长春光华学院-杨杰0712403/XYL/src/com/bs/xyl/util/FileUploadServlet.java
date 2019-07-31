package com.bs.xyl.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
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

public class FileUploadServlet extends HttpServlet
{
	private static final long serialVersionUID = 2598654810371467006L;

	private String saveDirectoryName;

	private static final String address="D:\\workspace\\2016\\XYL\\WebRoot\\images\\upload\\";
	@Override
	public void init() throws ServletException
	{
		saveDirectoryName = getInitParameter("saveDirectoryName");
	}

	@SuppressWarnings("unchecked")
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException,
	        IOException
	{
		// 设置字符编码
		request.setCharacterEncoding("UTF-8");

		// 创建'DiskFileItemFactory'对象
		DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();

		// 创建'ServletFileUpload'对象
		ServletFileUpload servletFileUpload = new ServletFileUpload(diskFileItemFactory);

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
					System.out.println("表单中的普通参数: 上传人的姓名|文件等级 (" + requestOfValue + "), 表单中的名字为'" + fileItem.getFieldName()
							+ "'");
					Class<?> type = null;
					// 获得表单中的普通参数在请求中所对应的名字
					Method method = null;
					String methodName = Change.getMethodName(fileItem.getFieldName());
					if(methodName.equals("setState")||methodName.equals("setClass_id")||methodName.equals("setId")){
						type = Integer.class;
						method=objectClass.getMethod(methodName, type);
						method.invoke(stu, Integer.valueOf(requestOfValue));
					}else{
						type = String.class;
						method=objectClass.getMethod(methodName, type);
						method.invoke(stu, requestOfValue);
					}
				}
				else {
					// 获得上传文件的名字 (文件上传框中, 上传文件的名字, 注意: 该名字已被截取, 并不是文件的完整路径)
					String fileName = fileItem.getName();
					// 用户选择了上传的文件, 并且该文件的名字不为空
					if (fileItem.getName() != null && !"".equals(fileItem.getName())) {
						// 获得上传文件的类型
						String contentType = fileItem.getContentType();

						// 获得上传文件的大小
						long fileSize = fileItem.getSize();

						// 打印Http请求消息 ('Request') 中上传文件的信息
						System.out.println("上传文件名" + fileName);
						System.out.println("上传文件类型" + contentType);
						System.out.println("上传文件大小" + fileSize);

						// 获得项目的根目录
						String rootDirProject = getServletContext().getRealPath("/")+"images\\upload\\";
						// 拼接保存的上传文件的目录
						File saveFileUploadFile = new File(rootDirProject);
						File saveFileUploadFile2 = new File(address);
						// 如果保存上传文件的目录不存在, 创建
						if (!saveFileUploadFile.exists()) {
							saveFileUploadFile.mkdirs();
						}
						if (!saveFileUploadFile2.exists()) {
							saveFileUploadFile2.mkdirs();
						}
						SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
						String newName = df.format(new Date());
						SimpleDateFormat df2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
						String time = df2.format(new Date());
						// 拼接保存上传内容的文件
						String str = fileName.substring(fileName.lastIndexOf("."));
						newName = newName+str;
						File saveTheFileUpload = new File(rootDirProject, newName);
						// 保存上传的文件
						fileItem.write(saveTheFileUpload);
						System.out.println("??:"+saveTheFileUpload);
						File   file=new   File(saveFileUploadFile+"\\"+fileName);
						file.renameTo(new  File(newName));
						//放到本地
						int bytesum = 0;
						int byteread = 0;
						InputStream inStream = new FileInputStream(saveFileUploadFile+"\\"+newName); 
						FileOutputStream fs = new FileOutputStream(address+newName);
						byte[] buffer = new byte[1444];
						while ( (byteread = inStream.read(buffer)) != -1) {
							bytesum += byteread; //字节数 文件大小
							fs.write(buffer, 0, byteread);
						}
						inStream.close();
						stu.setImg(newName);
						request.setAttribute("uploadTips", "文件上传成功");
					}
				}
			}
			StuDao dao = new StuDao();
			int num = dao.addNew(stu);
			if(num==1){
				response.sendRedirect("AdminViewStuServlet");
			}
			System.out.println("num:"+num);
		}
		catch (FileUploadException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
}

package upload.servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.Request;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

public class UploadServlet extends HttpServlet {
//没用的这个
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//
		SmartUpload su = new SmartUpload();
		//初始化方法
		su.initialize(getServletConfig(),req,resp);
		try {
			//上传
			su.upload();
			
		} catch (SmartUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//当前项目的运行路径
		String path = req.getServletContext().getRealPath("/");
		System.out.println(path);
		//定义存放文件的类,引入io包
		File dir = new File(path+"/image");
		//判断该文件夹是否存在
		if(!dir.exists()){
			//创建文件夹
			dir.mkdirs();
		}
		//获得传入文件的个数
		int fileCount = su.getFiles().getCount();
		for(int i=0;i<fileCount;i++){
			//获得文件
			com.jspsmart.upload.File file = su.getFiles().getFile(i);
			//上传文件
			try {
				file.saveAs(dir.getAbsolutePath()+"/"+file.getFileName());
			} catch (SmartUploadException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}

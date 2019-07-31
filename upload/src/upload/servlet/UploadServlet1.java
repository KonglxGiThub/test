package upload.servlet;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

/**
 * Servlet implementation class UploadServlet1
 */
@WebServlet("/UploadServlet1")
public class UploadServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		SmartUpload su = new SmartUpload();
		//初始化方法
		su.initialize(getServletConfig(),request,response);
		try {
			//上传
			su.upload();
			
		} catch (SmartUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//当前项目的运行路径
		String path = request.getServletContext().getRealPath("/");
//		String path = request.getServletContext().getRealPath("/");
		System.out.println("当前项目的运行路径 "+path);
		//定义存放文件的类,引入io包
		File dir = new File(path+"/image");
		//判断该文件夹是否存在
		if(!dir.exists()){
			//创建文件夹
			dir.mkdirs();
		}
		//获得传入文件的个数
		int fileCount = su.getFiles().getCount();
		//接收图片名字的list
		ArrayList<String> urlList = new ArrayList<String>();
		for(int i=0;i<fileCount;i++){
			//获得文件
			com.jspsmart.upload.File file = su.getFiles().getFile(i);
			//判断用户是否选择了用户
			if(file.getSize()==0){
				//接着执行下一次循环
				continue;
			}
			//上传文件
			try {
				//file.saveAs(dir.getAbsolutePath()+"/"+file.getFileName());
				file.saveAs(dir.getAbsolutePath()+"/"+file.getFileName());
				//把图片名字加入到list集合
				urlList.add(file.getFileName());
			} catch (SmartUploadException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		//获得传入的名字,不能用request获取，要用su获取
		String name = su.getRequest().getParameter("name");
		//图片名字的集合放人页面
		request.setAttribute("uList",urlList);
		request.getRequestDispatcher("img.jsp").forward(request, response);
	}
	

}

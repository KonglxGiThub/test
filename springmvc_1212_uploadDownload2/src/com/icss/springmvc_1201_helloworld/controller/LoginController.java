package com.icss.springmvc_1201_helloworld.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.RequestContext;

@Controller
public class LoginController{
	@RequestMapping("download.action")
	public ResponseEntity<byte[]> downLoad(HttpServletRequest request) throws IOException{
		System.out.println(request.getParameter("img"));
		String path = request.getParameter("img");
		File file = new File(path);
		//定义头
		HttpHeaders header = new HttpHeaders();
		//定义为附件类型
		header.setContentDispositionFormData("attachment", path);
		header.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),header,HttpStatus.CREATED);
	}
	@RequestMapping("upload.action")
	public String upload(@RequestParam MultipartFile pic,HttpServletRequest request,Model model) throws IOException{
		//判断是否为空
		if(pic !=null &&!pic.isEmpty()){
			byte[] byteArr = pic.getBytes();
			//定义输出流,上传到服务器的什么位置
			OutputStream ops = new FileOutputStream("f:/test/"+pic.getOriginalFilename());
			System.out.println(pic.getOriginalFilename());
			ops.write(byteArr);
			model.addAttribute("path",pic.getOriginalFilename());
			//刷新缓存
			ops.flush();
			ops.close();
		}
		return "success";
	}

}

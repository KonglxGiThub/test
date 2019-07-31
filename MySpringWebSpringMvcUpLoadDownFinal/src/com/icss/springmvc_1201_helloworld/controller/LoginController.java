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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class LoginController {
	//下载
	@RequestMapping("download.action")
	public ResponseEntity<byte[]> downLoad(HttpServletRequest request) throws IOException {
		System.out.println(request.getParameter("img"));
		String path = request.getParameter("img");
		File file = new File(path);
		// 定义头
		HttpHeaders header = new HttpHeaders();
		// 定义为附件类型固定写法
		header.setContentDispositionFormData("attachment", path);
		header.setContentType(MediaType.APPLICATION_OCTET_STREAM);

		return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file), header, HttpStatus.CREATED);
	}
	//上传
	@RequestMapping("upload.action")
	public String upload(@RequestParam MultipartFile pic) throws IOException {
		// 判断是否为空
		if (pic!=null&&!pic.isEmpty()) {
			byte[] byteArr = pic.getBytes();
			// 定义输出流，上传的服务器到什么位置
			OutputStream ops = new FileOutputStream("d:/qqq/" + pic.getOriginalFilename());
			ops.write(byteArr);
			// 刷新缓存
			ops.flush();
			ops.close();
			return "success";
		}
		return "welcome";
	}

}

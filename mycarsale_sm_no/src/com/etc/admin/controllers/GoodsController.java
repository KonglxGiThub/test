 package com.etc.admin.controllers;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.etc.admin.models.CarBrand;
import com.etc.admin.models.CarGoods;
import com.etc.admin.models.CarImg;
import com.etc.admin.models.CarType;
import com.etc.admin.services.ICarBrandService;
import com.etc.admin.services.ICarGoodsService;
import com.etc.admin.services.ICarImgService;
import com.etc.admin.services.ICarTypeService;


@Controller
@RequestMapping("/car/")
public class GoodsController {
	@Resource(name="carImgImpl")
	private ICarImgService iservice;
	@Resource(name="carGoodsServiecImpl")
	private ICarGoodsService service;
	@Resource(name="carTypeServiceImpl")
	private ICarTypeService tservice; 	
	@Resource(name="carBrandImpl")
	private  ICarBrandService bservice;

	public ICarImgService getIservice() {
		return iservice;
	}

	public void setIservice(ICarImgService iservice) {
		this.iservice = iservice;
	}

	public ICarTypeService getTservice() {
		return tservice;
	}

	public void setTservice(ICarTypeService tservice) {
		this.tservice = tservice;
	}

	public ICarBrandService getBservice() {
		return bservice;
	}

	public void setBservice(ICarBrandService bservice) {
		this.bservice = bservice;
	}

	public ICarGoodsService getService() {
		return service;
	}

	public void setService(ICarGoodsService service) {
		this.service = service;
	}
	
	/*==========下载===================*/
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
	/*==========上传===================*/
	@RequestMapping("upload.action")
	public String upload(@RequestParam MultipartFile pic,HttpServletRequest request,Model model) throws IOException{
		//判断是否为空
		if(pic !=null &&!pic.isEmpty()){
			byte[] byteArr = pic.getBytes();
			//定义输出流,上传到服务器的什么位置,工作空间的绝对路径
			OutputStream ops = new FileOutputStream("E:\\MyWorkSpace\\mycarsale_sm_no\\WebContent\\XXX\\"+pic.getOriginalFilename());
			System.out.println(pic.getOriginalFilename()+"=======pic.getOriginalFilename()===========");
			ops.write(byteArr);
			//图片的名
			String name=pic.getOriginalFilename();
			//图片的路径
			String path= "/XXX/"+pic.getOriginalFilename();
			//图片的商品最大id
			int gid = service.selectCarGoodsMaxId();
			//图片的最大id
			int id1 = iservice.selectCarImgMaxId()+1;
			String id = String.valueOf(gid);
			
			boolean f = iservice.insertCarImg(new CarImg(id1,id,path,name));
			int ff = service.insertCarGoodsImgId();
			//刷新缓存
			ops.flush();
			ops.close();
		}
		return "forward:CarGoodsView.action";
	}
	

	/*=================================*/
	//添加商品
	@RequestMapping("addCarGoodsSubmit.action")
	public String addCarGoodsSubmit(CarGoods car,Model model){
		boolean falg= service.insertCarGoods(car);
		//System.out.println(falg);
		if(falg){
			return "downAndLoad";
			}
		return "addCarGoodsView.action";
		
	}
	//添加商品页面
	@RequestMapping("addCarGoodsView.action")
	public String addCarGoodsView(Model model){
	     List<CarType> typelist = tservice.selectAllCarType();
		 List<CarBrand> brandlist = bservice.selectCarBrandAll();
		 model.addAttribute("typelist", typelist);
		 model.addAttribute("brandlist", brandlist);
		 
	
		return "addCarGoods";
	}
	//根据id删除
	@RequestMapping("deleteById.action")
	public String deleteById(Integer id){
		boolean f = service.deleteCarGoodsById(id);
		System.out.println(f+"=======last====="+id+"==id====");
		if(f){
			return "forward:CarGoodsView.action";	
		}
		return "forward:CarGoodsView.action";
	}
	
	
	//ajax分页操作上下页，首尾页
	@RequestMapping("page.action")
	@ResponseBody
	public Map<String,Object> getEmps(Integer nextpage,Model model,HttpServletRequest request){
		Integer nextpageindex = (nextpage-1)*3;
		Map<String,Object> map = new HashMap<String, Object>();
		//显示下一页的3条记录
		List<CarGoods> list = service.selectcarGoodsPaging(nextpageindex);
		//传当前页码
	for(CarGoods s:list){
		System.out.println(s.getCarImg().getImgPath()+"====path="+s.getCarImg().getImgName()+"==========name====="+s.getCarImg().getId()+"=id==");
	}
		map.put("list",list );
		return map;
	}
	
	//商品页面，分页出示页面
	@RequestMapping("CarGoodsView.action")
	public String CarGoodsView(Model model){
		//车商品总条数
		Integer count = service.selectcarGoodsCountPaging();
		//总页数
		Integer page=0;
		if(count>0){
			if(count%3==0){
			page = count/3;	
			model.addAttribute("page", page);
			}else{
				page = count/3+1;
				model.addAttribute("page", page);
			}
		}
		//每页显示三条记录,输入要查询的下标，第几页
		List<CarGoods> list = service.selectcarGoodsPaging(0);
	/*	for(CarGoods s:list){
			System.out.println(s.getCarImg().getImgPath()+"====path="+s.getCarImg().getImgName()+"==========name====="+s.getCarImg().getId()+"=id==");
		}*/
		/*model.addAttribute("nowpageindex", 0);*/
		model.addAttribute("nowpage", 1);
		model.addAttribute("count", count);
		model.addAttribute("list", list);
		return "CarGoodsShow";
	}
}












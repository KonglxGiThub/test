package com.etc.admin.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.etc.admin.models.CarType;
import com.etc.admin.services.ICarTypeService;

@Controller
@RequestMapping("/type/")
public class CarTypeController {
	@Resource(name="carTypeServiceImpl")
	private ICarTypeService service;
	
	public ICarTypeService getService() {
		return service;
	}

	public void setService(ICarTypeService service) {
		this.service = service;
	}

	
	
	//车系列删除根据id
	@RequestMapping("deleteCarType.action")
	public String deleteCarType(Integer id){
		boolean falg = service.deleteCarTypeById(new CarType(id));
		if(falg){
			return "forward:CarTypeShowview.action";
		}
		return "forward:CarTypeShowview.action";
	}
	
	
	//车系列添加确定
	@RequestMapping("CarTypeAddSubmit.action")
	public String CarTypeAddSubmit(CarType car){
		boolean falg = service.insertCarType(car);
		if(falg){
			return "forward:CarTypeShowview.action";
		}
		return "addCarType";
	}
	
	//车系列管理，添加页面
	@RequestMapping("CarTypeAddView.action")
	public String CarTypeAddView(){
		return "addCarType";
	}
	
	//车系列管理，进入显示页面
	@RequestMapping("CarTypeShowview.action")
	public String CarTypeShowview(Model model){
		List<CarType> list=service.selectAllCarType();
		System.out.println(list.size());
		model.addAttribute("list",list);
		return "CarTypeShow";
	}
}

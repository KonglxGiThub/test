package com.etc.admin.controllers;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.etc.admin.models.CarBrand;
import com.etc.admin.services.ICarBrandService;

@Controller
@RequestMapping("/brand/")
public class CarBrandController {
	@Resource(name="carBrandImpl")
	private ICarBrandService service;
	

	public ICarBrandService getService() {
		return service;
	}


	public void setService(ICarBrandService service) {
		this.service = service;
	}


	//车品牌删除根据id
	@RequestMapping("deleteCarBrand.action")
	public String deleteCarBrand(Integer id){
		boolean falg = service.deleteCarBrandById(new CarBrand(id));
		
		if(falg){
			return "forward:CarBrandShowview.action";
		}
		return "forward:CarBrandShowview.action";
	}
	
	
	//车品牌添加确定
	@RequestMapping("CarBrandAddSubmit.action")
	public String CarTypeAddSubmit(CarBrand car){
		boolean falg = service.insertCarBrand(car);
		if(falg){
			return "forward:CarBrandShowview.action";
		}
		return "addCarBrand";
	}
	
	//车品牌管理，添加页面
	@RequestMapping("CarBrandAddView.action")
	public String CarBrandAddView(){
		return "addCarBrand";
	}
	
	//车品牌管理，进入显示页面
	@RequestMapping("CarBrandShowview.action")
	public String CarBrandShowview(Model model){
		List<CarBrand> list=service.selectCarBrandAll();
		//System.out.println(list.size());
		model.addAttribute("list",list);
		return "CarBrandShow";
	}
}

package com.icss.springmvc_1201_helloworld.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.icss.springmvc_1201_helloworld.vo.Emp;

public class EmpValidator implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		//返回faslevalidator方法就不执行,EMP是emp类，arg0是logicontroller里传入的emp
		return Emp.class.equals(arg0);
	}

	@Override
	public void validate(Object arg0, Errors arg1) {
		// TODO Auto-generated method stub
		//name表示EMP类里的name属性，验证 name，pass是否为空
		//表示根据国际化，如果验证失败，要显示的内容
		//emp.name需要跟messages_en.properties里的内容一致，如果国际化存在，就执行国际化的错误信息，
		//否则执行---"如果验证失败，要显示的内容"---的信息
		//第一种方式只能接收类类型
/*		ValidationUtils.rejectIfEmpty(arg1, "name", "emp.name", "如果验证失败，要显示的内容");
		ValidationUtils.rejectIfEmpty(arg1, "pass", "emp.name", "如果验证失败，要显示的内容");
*/		
		//第二种方式可以对具体属性做判断
		Emp emp = (Emp)arg0;
		if(emp.getName().length()==0){			
			arg1.rejectValue("name","如果验证失败，要显示的内容");
		}
		
	}

}

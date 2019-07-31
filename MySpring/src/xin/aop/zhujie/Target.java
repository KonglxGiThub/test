package xin.aop.zhujie;

import org.springframework.stereotype.Component;

@Component
public class Target {
	public void add(){
		System.out.println("add");
	}
}

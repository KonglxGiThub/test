package springproperty.zhujie;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
//相当于<bean id="b" class="springproperty.zhujie.Body"></bean> 不写vaule默认是类名首字母小写
//@Component相当于@Component(value="dog")
@Component(value="dd")
public class Dog {
	//相当于<property name="name" value="金毛">
	@Value(value="金毛")
	private String name;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Dog(){
		System.out.println("dog ==== function");
	}
	//初始化方法注解
	@PostConstruct
	public void begin(){
		System.out.println("====begin====");
	}
	//销毁方法注解
	@PreDestroy
	public void over(){
		System.out.println("====over=======");
	}
}

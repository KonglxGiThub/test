package springproperty.zhujie;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
////相当于<bean id="b" class="springproperty.zhujie.Body"></bean> 不写vaule默认是类名首字母小写
//@Component相当于@Component(value="body")
@Component(value="b")
public class Body {
	//ref="dd";
	@Resource(name="dd")
	private Dog dog;
	@Value(value="tom")
	private String name;

	private List<Girl> GiirlFriends;


	public List<Girl> getGiirlFriends() {
		return GiirlFriends;
	}
	public void setGiirlFriends(List<Girl> giirlFriends) {
		GiirlFriends = giirlFriends;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Body(){}
	public Dog getDog() {
		return dog;
	}

	public void setDog(Dog dog) {
		this.dog = dog;
	}
	public void myDog(){
		System.out.println(name+"和"+dog.getName());
	}
}

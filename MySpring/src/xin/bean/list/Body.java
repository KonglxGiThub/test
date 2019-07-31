package xin.bean.list;

import java.util.List;
import java.util.Map;

public class Body {
	private Dog dog;
	private String name;
	private Map<String,Room> roomMap;
	public Map<String, Room> getRoomMap() {
		return roomMap;
	}
	public void setRoomMap(Map<String, Room> roomMap) {
		this.roomMap = roomMap;
	}
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

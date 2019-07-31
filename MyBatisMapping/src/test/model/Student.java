package test.model;

import java.util.Date;

public class Student {
    private Integer id;

    private String name;

    private String sex;

    private Date birthday;

    private Integer age;

    private Integer classid;

    private String likes;
    //以下属性非table所有
    private String calssname;
    


    public String getCalssname() {
		return calssname;
	}
	public void setCalssname(String calssname) {
		this.calssname = calssname;
	}
	public Student() {
		super();
	}
	public Student(Integer id, String name,Integer age) {
		super();
		this.id = id;
		this.name = name;
		this.age=age;

	}
	public Student(Integer id, String name) {
		super();
		this.id = id;
		this.name = name;

	}
	public Student(Integer age,Integer id) {
		super();
		this.id = id;
		this.age=age;

	}









	public Student(Integer id, String name, String sex, Date birthday, Integer age, Integer classid, String likes) {
		super();
		this.id = id;
		this.name = name;
		this.sex = sex;
		this.birthday = birthday;
		this.age = age;
		this.classid = classid;
		this.likes = likes;
	}

    
    
    
    
    
    
    
    
    
    
	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Integer getClassid() {
        return classid;
    }

    public void setClassid(Integer classid) {
        this.classid = classid;
    }

    public String getLikes() {
        return likes;
    }

    public void setLikes(String likes) {
        this.likes = likes == null ? null : likes.trim();
    }
}
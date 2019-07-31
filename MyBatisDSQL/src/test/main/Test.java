package test.main;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import test.dao.StudentMapper;
import test.model.Student;

public class Test {

	public static void main(String[] args) throws IOException, ParseException {
		InputStream is = Resources.getResourceAsStream("mybatis-config.xml");
		SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(is);
		SqlSession session = sf.openSession();
		
		StudentMapper map = session.getMapper(StudentMapper.class);
		
		Student stu = map.selectByPrimaryKey(15);
		//System.out.println(stu.getName());
		//System.out.println(stu.getLikes().length);
		for(String str:stu.getLikes()){
			System.out.println(str);
		}
//		System.out.println(stu.getName());
//		SimpleDateFormat st = new SimpleDateFormat("yyyy-MM-dd");
//		String str ="2000-11-22";
//		Date d = st.parse(str);
		//System.out.println(d);
		//map.insert(new Student(105,"jack","man",d,23,1,new String[]{"1","2"}));
//		for(Student s:map.selectAll()){
//			System.out.print(s.getName()+" ");
//		}
	//session.commit();
		

	}

}

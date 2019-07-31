package test.main;

import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import test.dao.StudentMapper2;
import test.model.Student;
public class Test2 {

	public static void main(String[] args) throws IOException, ParseException {
		InputStream is = Resources.getResourceAsStream("mybatis-config.xml");
		SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(is);
		SqlSession session = sf.openSession();
		
		StudentMapper2 map = session.getMapper(StudentMapper2.class);
//		Student s = new Student();
//		s.setId(2);	
		List<Student> list= map.selectByForEach((new Integer[]{1,2}));
		
		

	}

}

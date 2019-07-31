package test.main;

import java.io.IOException;
import java.io.InputStream;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import test.dao.StudentMapper;
import test.model.Student;

public class Test {

	public static void main(String[] args) throws IOException{
		InputStream is = Resources.getResourceAsStream("mybatis-config.xml");
		SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(is);
		SqlSession session = sf.openSession();
		
		StudentMapper map = session.getMapper(StudentMapper.class);
		
		Student stu = map.selectByPrimaryKey(15);
		System.out.println(stu.getName());


	}

}

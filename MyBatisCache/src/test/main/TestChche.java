package test.main;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Ignore;
import org.junit.Test;

import test.dao.StudentMapper;
import test.model.Student;

public class TestChche {
	//@Ignore
	@org.junit.Test
	//1级       同一session --------SqlSession session = sf.openSession();
	public void testCache1() throws IOException{
		InputStream is = Resources.getResourceAsStream("mybatis-config.xml");
		SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(is);
		SqlSession session = sf.openSession();
		
		StudentMapper map = session.getMapper(StudentMapper.class);

		Student stu1 = map.selectByPrimaryKey(1);
		Student stu = map.selectByPrimaryKey(1);
		System.out.println(stu.getName());
		System.out.println(stu1.getName());
	}
	@Ignore
	@Test
	//2级缓存     同一map-------StudentMapper，需要在studentmapper.xml里配置缓存机制，配置true只打印一条sql语句，
	public void testCache2() throws IOException{
		InputStream is = Resources.getResourceAsStream("mybatis-config.xml");
		SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(is);
		SqlSession session = sf.openSession();
		
		StudentMapper map = session.getMapper(StudentMapper.class);

		
		Student stu = map.selectByPrimaryKey(1);
		System.out.println(stu.getName());
		session.close();//可以close和commit测试
		
		SqlSession session1 = sf.openSession();
		StudentMapper map1 = session1.getMapper(StudentMapper.class);
		Student stu1 = map1.selectByPrimaryKey(1);
		System.out.println(stu1.getName());
	}
	
}

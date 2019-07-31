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

import test.dao.ClazzMapper;
import test.dao.StudentMapper;
import test.dao.StudentMapper2;
import test.model.Clazz;
import test.model.Student;

public class Test {

	public static void main(String[] args) throws IOException, ParseException {
		InputStream is = Resources.getResourceAsStream("mybatis-config.xml");
		SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(is);
		SqlSession session = sf.openSession();
		ClazzMapper map = session.getMapper(ClazzMapper.class);
		Clazz clazz = map.selectClazzAndStudents(1);
		for(Student s:clazz.getStudent()){
			System.out.println(s.getName());
		}
//		StudentMapper2 map = session.getMapper(StudentMapper2.class);
		
//		Student stu = map.selectStudentAndClassName(15);
//		System.out.println(stu.getName()+"=="+stu.getClazz().getClassname());
		//System.out.println(stu.getName());
		//System.out.println(stu.getLikes().length);
//		for(String str:stu.getLikes()){
//			System.out.println(str);
//		}

		

	}

}

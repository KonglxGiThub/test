package test.main;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import test.dao.StudentMapper2;
import test.model.Student;
public class TestDUI {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		InputStream is = Resources.getResourceAsStream("mybatis-config.xml");
		SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(is);
		SqlSession session = sf.openSession();		
		StudentMapper2 map = session.getMapper(StudentMapper2.class);
//		map.deleteById(1);
		
		//map.insertStudent(new Student(1,"xxx",18));
//		map.updateNameById("ooo", 1);
		List<Student> slist = map.selectAllStudentAndClassName();
		for(Student s:slist){
			System.out.println(s.getName()+"=="+s.getCalssname());
		}
		
		session.commit();
	}

}

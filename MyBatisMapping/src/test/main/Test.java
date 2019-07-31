package test.main;


import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import test.dao.StudentMapper;
public class Test {

	public static void main(String[] args) throws IOException, ParseException {
		InputStream is = Resources.getResourceAsStream("mybatis-config.xml");
		SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(is);
		SqlSession session = sf.openSession();
		
		StudentMapper map = session.getMapper(StudentMapper.class);
		//HashMap m = map.selectByNameReturnHashMap("jack");
		List<HashMap> list = map.selectByNameReturnHashMap("jack");
		for(HashMap map1:list){
			//取得是类里的属性id
			System.out.println(map1.get("id"));
			}

		}
//		System.out.println(m.get("name"));
/*		Student s = map.selectByNameAndId(new Student(13,"jack"));
		System.out.println(s.getName());*/
/*		List<Student> s = map.selectByLikeName("j");
		for(Student ss:s){
			System.out.println(ss.getName());
			
		}
		*/
/*	selectOne只对返回的一行数据有效，多行的不可以
 * Student s = (Student)session.selectOne("test.dao.StudentMapper.selectByName","Mary");
		Student s = (Student)session.selectOne("test.dao.StudentMapper.selectByPrimaryKey",1);
		
		session.selectOne("test.dao.StudentMapper.selectByPrimaryKey",1);
*/
//		Student stu = map.selectByPrimaryKey(15);
//		System.out.println(stu.getName());
		//System.out.println(stu.getLikes().length);
//		for(String str:stu.getLikes()){
//			System.out.println(str);
//		}
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

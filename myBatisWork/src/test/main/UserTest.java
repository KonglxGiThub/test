package test.main;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import test.dao.UserMapper;
import test.model.Product;
import test.model.User;

public class UserTest {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		InputStream is = Resources.getResourceAsStream("mybatis-config.xml");
		SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(is);
		SqlSession session = sf.openSession();

		
	UserMapper map = session.getMapper(UserMapper.class);
		User u =map.selectUserAndProductByID(1);
		
	for(Product p:u.getProductList()){
		System.out.println(p.getProductname());	
	}
			

		
	}

}

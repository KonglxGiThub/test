package test.main;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import test.dao.ProductMapper;
import test.dao.UserMapper;
import test.model.Product;
import test.model.User;


public class Test {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		InputStream is = Resources.getResourceAsStream("mybatis-config.xml");
		SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(is);
		SqlSession session = sf.openSession();
		ProductMapper map = session.getMapper(ProductMapper.class);
		int i = map.addProduct(new Product(3,"jack",1));
		System.out.println(i);
		
/*		UserMapper map = session.getMapper(UserMapper.class);
		User u =map.selectUserAndProductByID(1);
		
	for(Product p:u.getProductList()){
		System.out.println(p.getProductname());	
	}
		*/	

		
	}

}

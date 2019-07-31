package test.handler;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;

public class StringArrayTypeHandler extends BaseTypeHandler<String[]> {

	
	public String[] getNullableResult(ResultSet rs, String columnName) throws SQLException {
		// TODO Auto-generated method stub
		String like = rs.getString(columnName);
		String arr[] = like.split(",");
		System.out.println(rs+"=== "+columnName);
		return arr;
	}

	@Override
	public String[] getNullableResult(ResultSet rs, int columnIndex) throws SQLException {
		// TODO Auto-generated method stub
		String likes = rs.getString(columnIndex);
		String arr[] = likes.split(",");
		System.out.println(rs+"=== "+columnIndex);
		
		return arr;
	}

	@Override
	public String[] getNullableResult(CallableStatement cs, int columnIndex) throws SQLException {
		// TODO Auto-generated method stub
		String likes = cs.getString(columnIndex);
		String arr[] = likes.split(",");
		
		return arr;
	}

	@Override
	public void setNonNullParameter(PreparedStatement ps, int columnIndex, String[] likes, JdbcType arg3)
			throws SQLException {
		// TODO Auto-generated method stub
		//根据student里的String[] likes属性与数据库里的likes对应，必须是varchar
		String tar="";
		for(String s:likes){
			tar+=s+",";
		}
		ps.setString(columnIndex, tar.substring(0,tar.length()-1));
	}

}

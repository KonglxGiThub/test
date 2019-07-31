package com.neusoft.system.tools;

import java.util.*;
import java.sql.*;

import javax.servlet.http.HttpServletRequest;

import com.neusoft.system.db.DBUtils;


public final class Tools 
{
	public static void main(String[] args) 
	{
        try 
        {
			List rows=Tools.getOptions("MINZU");
			System.out.println(rows);
		}
        catch (Exception e) 
        {
			e.printStackTrace();
		}
	}
	
	
	public static Map createDto(HttpServletRequest request)
	{
		Map<String,String[]> tem=request.getParameterMap();
		Set<Map.Entry<String, String[]>> entrySet=tem.entrySet();
		
		String val[]=null;
		Map dto=new HashMap();
		for(Map.Entry<String, String[]> entry:entrySet)
		{
			val=entry.getValue();
			if(val.length==1)
			{
				dto.put(entry.getKey(), val[0]);
			}
			else
			{
				dto.put(entry.getKey(),val);
			}	
		}
		return dto;
	}
	
    public static List<Map<String,String>> getOptions(String fname)throws Exception
    {
    	Connection conn=null;
    	PreparedStatement pstm=null;
    	ResultSet rs=null;
    	try
    	{
    		StringBuilder sql=new StringBuilder()
    		.append("SELECT A.FCODE,A.FVALUE")
    		.append("  FROM SYSCODE A")
    		.append(" WHERE A.FNAME=?")
    		.append(" ORDER BY A.FCODE")
    		;
    		conn=DBUtils.getConnection();
    		pstm=conn.prepareStatement(sql.toString());
    		pstm.setObject(1,fname);
    		rs=pstm.executeQuery();
    		
    		
    		List<Map<String,String>> rows=new ArrayList<Map<String,String>>();
    		Map<String,String> ins=null;
    		
    		while(rs.next())
    		{
    			ins=new HashMap();
    			ins.put("code", rs.getString(1));
    			ins.put("label", rs.getString(2));
    			rows.add(ins);
    		}
      	    return rows;
    	}
    	finally
    	{
    		DBUtils.close(rs);
    		DBUtils.close(pstm);
    		DBUtils.close(conn);
    	}
    	
    }
}

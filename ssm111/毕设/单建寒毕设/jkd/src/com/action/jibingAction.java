package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TAdminDAO;
import com.dao.TJibingDAO;
import com.dao.TRenyuanDAO;
import com.dao.TTijianDAO;
import com.model.TAdmin;
import com.model.TJibing;
import com.model.TRenyuan;
import com.model.TTijian;
import com.opensymphony.xwork2.ActionSupport;

public class jibingAction extends ActionSupport
{
	private Integer id;
	private String mingcheng;
	private String zhengzhuang;
	private int renyuanId;

	private String huanshijian;
	private String yisheng;
	private String del;
	 
	private String message;
	private String path;
	

	private TJibingDAO jibingDAO;
	private TRenyuanDAO renyuanDAO;
	
	public String jibingAdd()
	{
		TJibing jibing=new TJibing();
		
		jibing.setMingcheng(mingcheng);
		jibing.setZhengzhuang(zhengzhuang);
		jibing.setRenyuanId(renyuanId);
		jibing.setHuanshijian(huanshijian);
		
		jibing.setYisheng(yisheng);
		
		jibingDAO.save(jibing);
		this.setMessage("操作成功");
		this.setPath("jibingMana.action");
		return "succeed";
	}
	
	
	
	public String jibingMana()
	{
		List jibingList=jibingDAO.findAll();
		for(int i=0;i<jibingList.size();i++)
		{
			TJibing jibing=(TJibing)jibingList.get(i);
			jibing.setRenyuan(renyuanDAO.findById(jibing.getRenyuanId()));
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("jibingList", jibingList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String jibingDel()
	{
		jibingDAO.delete(jibingDAO.findById(id));
		this.setMessage("删除成功");
		this.setPath("jibingMana.action");
		return "succeed";
	}
	
	public String jibing_search()
	{
		String sql="from TJibing where mingcheng like '%"+mingcheng.trim()+"%'";

		List jibingList=jibingDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<jibingList.size();i++)
		{
			TJibing jibing=(TJibing)jibingList.get(i);
			jibing.setRenyuan(renyuanDAO.findById(jibing.getRenyuanId()));
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("jibingList", jibingList);
		return ActionSupport.SUCCESS;
	}



	public String getDel()
	{
		return del;
	}
	public void setDel(String del)
	{
		this.del = del;
	}
	public String getHuanshijian()
	{
		return huanshijian;
	}
	public void setHuanshijian(String huanshijian)
	{
		this.huanshijian = huanshijian;
	}
	public Integer getId()
	{
		return id;
	}
	public void setId(Integer id)
	{
		this.id = id;
	}
	public TJibingDAO getJibingDAO()
	{
		return jibingDAO;
	}
	public void setJibingDAO(TJibingDAO jibingDAO)
	{
		this.jibingDAO = jibingDAO;
	}
	public String getMessage()
	{
		return message;
	}
	public void setMessage(String message)
	{
		this.message = message;
	}
	public String getMingcheng()
	{
		return mingcheng;
	}
	public void setMingcheng(String mingcheng)
	{
		this.mingcheng = mingcheng;
	}
	public String getPath()
	{
		return path;
	}
	public void setPath(String path)
	{
		this.path = path;
	}
	public TRenyuanDAO getRenyuanDAO()
	{
		return renyuanDAO;
	}
	public void setRenyuanDAO(TRenyuanDAO renyuanDAO)
	{
		this.renyuanDAO = renyuanDAO;
	}
	public int getRenyuanId()
	{
		return renyuanId;
	}
	public void setRenyuanId(int renyuanId)
	{
		this.renyuanId = renyuanId;
	}
	public String getYisheng()
	{
		return yisheng;
	}
	public void setYisheng(String yisheng)
	{
		this.yisheng = yisheng;
	}
	public String getZhengzhuang()
	{
		return zhengzhuang;
	}
	public void setZhengzhuang(String zhengzhuang)
	{
		this.zhengzhuang = zhengzhuang;
	}
}

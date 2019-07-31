package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TAdminDAO;
import com.dao.TRenyuanDAO;
import com.dao.TTijianDAO;
import com.model.TAdmin;
import com.model.TRenyuan;
import com.model.TTijian;
import com.opensymphony.xwork2.ActionSupport;

public class tijianAction extends ActionSupport
{
	private Integer id;
	private Integer renyuanId;
	private String shijian;
	private String yisheng;

	private String xueya;
	private String tizhong;
	private String kouchun;
	private String chilie;
	
	private String shili;
	private String tingli;
	 
	private String message;
	private String path;
	

	private TTijianDAO tijianDAO;
	private TRenyuanDAO renyuanDAO;
	
	public String tijianAdd()
	{
		TTijian tijian=new TTijian();
		
		tijian.setRenyuanId(renyuanId);
		tijian.setShijian(shijian);
		tijian.setYisheng(yisheng);
		tijian.setXueya(xueya);
		
		tijian.setTizhong(tizhong);
		tijian.setKouchun(kouchun);
		tijian.setChilie(chilie);
		tijian.setShili(shili);
		tijian.setTingli(tingli);
		
		tijianDAO.save(tijian);
		this.setMessage("操作成功");
		this.setPath("tijianMana.action");
		return "succeed";
	}
	
	
	
	public String tijianMana()
	{
		List tijianList=tijianDAO.findAll();
		for(int i=0;i<tijianList.size();i++)
		{
			TTijian tijian=(TTijian)tijianList.get(i);
			tijian.setRenyuan(renyuanDAO.findById(tijian.getRenyuanId()));
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("tijianList", tijianList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String tijianDel()
	{
		tijianDAO.delete(tijianDAO.findById(id));
		this.setMessage("删除成功");
		this.setPath("tijianMana.action");
		return "succeed";
	}
	
	public String getChilie()
	{
		return chilie;
	}



	public void setChilie(String chilie)
	{
		this.chilie = chilie;
	}



	public Integer getId()
	{
		return id;
	}



	public TRenyuanDAO getRenyuanDAO()
	{
		return renyuanDAO;
	}



	public void setRenyuanDAO(TRenyuanDAO renyuanDAO)
	{
		this.renyuanDAO = renyuanDAO;
	}



	public void setId(Integer id)
	{
		this.id = id;
	}

	public TTijianDAO getTijianDAO()
	{
		return tijianDAO;
	}



	public void setTijianDAO(TTijianDAO tijianDAO)
	{
		this.tijianDAO = tijianDAO;
	}



	public String getKouchun()
	{
		return kouchun;
	}



	public void setKouchun(String kouchun)
	{
		this.kouchun = kouchun;
	}



	public String getMessage()
	{
		return message;
	}



	public void setMessage(String message)
	{
		this.message = message;
	}



	public String getPath()
	{
		return path;
	}



	public void setPath(String path)
	{
		this.path = path;
	}



	public Integer getRenyuanId()
	{
		return renyuanId;
	}



	public void setRenyuanId(Integer renyuanId)
	{
		this.renyuanId = renyuanId;
	}



	public String getShijian()
	{
		return shijian;
	}



	public void setShijian(String shijian)
	{
		this.shijian = shijian;
	}



	public String getShili()
	{
		return shili;
	}



	public void setShili(String shili)
	{
		this.shili = shili;
	}



	public String getTingli()
	{
		return tingli;
	}



	public void setTingli(String tingli)
	{
		this.tingli = tingli;
	}



	public String getTizhong()
	{
		return tizhong;
	}



	public void setTizhong(String tizhong)
	{
		this.tizhong = tizhong;
	}



	public String getXueya()
	{
		return xueya;
	}



	public void setXueya(String xueya)
	{
		this.xueya = xueya;
	}



	public String getYisheng()
	{
		return yisheng;
	}



	public void setYisheng(String yisheng)
	{
		this.yisheng = yisheng;
	}
	
}

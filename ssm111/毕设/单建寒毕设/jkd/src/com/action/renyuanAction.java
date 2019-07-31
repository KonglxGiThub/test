package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TAdminDAO;
import com.dao.TRenyuanDAO;
import com.model.TAdmin;
import com.model.TRenyuan;
import com.opensymphony.xwork2.ActionSupport;

public class renyuanAction extends ActionSupport
{
	private Integer id;
	private String xingming;
	private String xingbie;
	private String nianling;

	private String dizhi;
	private String chusheng;
	private String shenfenzheng;
	private String lianxi;

	private String danwei;
	private String menzu;
	private String wenhua;
	private String hunyin;
	
	private String beizhu;
	 
	private String message;
	private String path;
	

	private TRenyuanDAO renyuanDAO;
	
	public String renyuanAdd()
	{
		TRenyuan renyuan=new TRenyuan();
		
		renyuan.setXingming(xingming);
		renyuan.setXingbie(xingbie);
		renyuan.setNianling(nianling);
		renyuan.setDizhi(dizhi);
		
		renyuan.setChusheng(chusheng);
		renyuan.setShenfenzheng(shenfenzheng);
		renyuan.setLianxi(lianxi);
		renyuan.setDanwei(danwei);
		
		renyuan.setMenzu(menzu);
		renyuan.setWenhua(wenhua);
		renyuan.setHunyin(hunyin);
		renyuan.setBeizhu(beizhu);
		
		renyuanDAO.save(renyuan);
		this.setMessage("操作成功");
		this.setPath("renyuanMana.action");
		return "succeed";
	}
	
	
	
	public String renyuanMana()
	{
		List renyuanList=renyuanDAO.findAll();
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("renyuanList", renyuanList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String renyuanDel()
	{
		renyuanDAO.delete(renyuanDAO.findById(id));
		this.setMessage("删除成功");
		this.setPath("renyuanMana.action");
		return "succeed";
	}
	
	public String renyuanDetail()
	{
		TRenyuan renyuan=renyuanDAO.findById(id);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("renyuan", renyuan);
		return ActionSupport.SUCCESS;
	}

	public String renyuanAll()
	{
		List renyuanList=renyuanDAO.findAll();
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("renyuanList", renyuanList);
		return ActionSupport.SUCCESS;
	}

	public String getBeizhu()
	{
		return beizhu;
	}



	public void setBeizhu(String beizhu)
	{
		this.beizhu = beizhu;
	}



	public String getChusheng()
	{
		return chusheng;
	}



	public void setChusheng(String chusheng)
	{
		this.chusheng = chusheng;
	}



	public String getDanwei()
	{
		return danwei;
	}



	public void setDanwei(String danwei)
	{
		this.danwei = danwei;
	}



	public String getDizhi()
	{
		return dizhi;
	}



	public void setDizhi(String dizhi)
	{
		this.dizhi = dizhi;
	}



	public String getHunyin()
	{
		return hunyin;
	}



	public void setHunyin(String hunyin)
	{
		this.hunyin = hunyin;
	}



	public Integer getId()
	{
		return id;
	}



	public void setId(Integer id)
	{
		this.id = id;
	}



	public String getLianxi()
	{
		return lianxi;
	}



	public void setLianxi(String lianxi)
	{
		this.lianxi = lianxi;
	}



	public String getMenzu()
	{
		return menzu;
	}



	public void setMenzu(String menzu)
	{
		this.menzu = menzu;
	}



	public String getMessage()
	{
		return message;
	}



	public void setMessage(String message)
	{
		this.message = message;
	}



	public String getNianling()
	{
		return nianling;
	}



	public void setNianling(String nianling)
	{
		this.nianling = nianling;
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



	public String getShenfenzheng()
	{
		return shenfenzheng;
	}



	public void setShenfenzheng(String shenfenzheng)
	{
		this.shenfenzheng = shenfenzheng;
	}



	public String getWenhua()
	{
		return wenhua;
	}



	public void setWenhua(String wenhua)
	{
		this.wenhua = wenhua;
	}



	public String getXingbie()
	{
		return xingbie;
	}



	public void setXingbie(String xingbie)
	{
		this.xingbie = xingbie;
	}



	public String getXingming()
	{
		return xingming;
	}



	public void setXingming(String xingming)
	{
		this.xingming = xingming;
	}
	
}

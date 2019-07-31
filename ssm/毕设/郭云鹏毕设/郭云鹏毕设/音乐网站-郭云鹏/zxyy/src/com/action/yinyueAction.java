package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TCatelogDAO;
import com.dao.TYinyueDAO;
import com.model.TCatelog;
import com.model.TYinyue;
import com.opensymphony.xwork2.ActionSupport;

public class yinyueAction extends ActionSupport
{
	private int id;
	private int catelogId;
	private String name;
	private String fujian;
	
	private String fujianYuanshiming;
	private String geshou;
	private String shijian;
	private Integer userId=0;
	private String del;
	
	
	private String message;
	private String path;
	
	private TCatelogDAO catelogDAO;
	private TYinyueDAO yinyueDAO;
	
	
	
	public String yinyueAdd()
	{
		TYinyue yinyue=new TYinyue();
		yinyue.setCatelogId(catelogId);
		yinyue.setName(name);
		yinyue.setFujian(fujian);
		yinyue.setFujianYuanshiming(fujianYuanshiming);
		yinyue.setGeshou(geshou);
		yinyue.setShijian(shijian);
		yinyue.setUserId(userId);//dianjilv
		yinyue.setDel("no");
		yinyueDAO.save(yinyue);
		this.setMessage("操作成功");
		this.setPath("yinyueMana.action");
		return "succeed";
	}
	
	public String yinyueMana()
	{
		String sql="from TYinyue where del='no'";
		List yinyueList=yinyueDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("yinyueList", yinyueList);
		return ActionSupport.SUCCESS;
	}
	
	public String yinyueDel()
	{
		    TYinyue yinyue=yinyueDAO.findById(id);
		    yinyue.setDel("yes");
		    yinyueDAO.attachDirty(yinyue);
			this.setMessage("操作成功");
			this.setPath("yinyueMana.action");
		    return "succeed";
	}
	
	public String yinyueDetailQian()
	{
		    TYinyue yinyue=yinyueDAO.findById(id);
		    yinyue.setUserId(yinyue.getUserId()+1);
		    yinyueDAO.attachDirty(yinyue);
		    Map request=(Map)ServletActionContext.getContext().get("request");
			request.put("yinyue", yinyue);
			return ActionSupport.SUCCESS;
	}
	
	
	public String yinyueMoreByCatelog()
	{
		String sql="from TYinyue where del='no' and catelogId="+catelogId;;
		List yinyueList=yinyueDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("yinyueList", yinyueList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String yinyueSearch()
	{
		StringBuffer sql=new StringBuffer("from TYinyue where del='no' and name like '%"+name+"%'" +" and geshou like '%"+geshou+"%'");
		System.out.println(sql.toString());
		List yinyueList=yinyueDAO.getHibernateTemplate().find(sql.toString());
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("yinyueList", yinyueList);
		return ActionSupport.SUCCESS;
	}
	
	public String yinyuePaihang()
	{
		String sql="from TYinyue where del='no' order by userId desc";
		List yinyueList=yinyueDAO.getHibernateTemplate().find(sql);
		if(yinyueList.size()>6)
		{
			yinyueList=yinyueList.subList(0, 6);
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("yinyueList", yinyueList);
		return ActionSupport.SUCCESS;
	}
	

	public TCatelogDAO getCatelogDAO()
	{
		return catelogDAO;
	}

	public void setCatelogDAO(TCatelogDAO catelogDAO)
	{
		this.catelogDAO = catelogDAO;
	}

	public int getCatelogId()
	{
		return catelogId;
	}

	public void setCatelogId(int catelogId)
	{
		this.catelogId = catelogId;
	}

	public String getDel()
	{
		return del;
	}

	public void setDel(String del)
	{
		this.del = del;
	}

	public String getFujian()
	{
		return fujian;
	}

	public void setFujian(String fujian)
	{
		this.fujian = fujian;
	}

	public String getFujianYuanshiming()
	{
		return fujianYuanshiming;
	}

	public void setFujianYuanshiming(String fujianYuanshiming)
	{
		this.fujianYuanshiming = fujianYuanshiming;
	}

	public String getGeshou()
	{
		return geshou;
	}

	public void setGeshou(String geshou)
	{
		this.geshou = geshou;
	}

	public int getId()
	{
		return id;
	}

	public TYinyueDAO getYinyueDAO()
	{
		return yinyueDAO;
	}

	public void setYinyueDAO(TYinyueDAO yinyueDAO)
	{
		this.yinyueDAO = yinyueDAO;
	}

	public void setId(int id)
	{
		this.id = id;
	}

	public String getMessage()
	{
		return message;
	}

	public void setMessage(String message)
	{
		this.message = message;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String getPath()
	{
		return path;
	}

	public void setPath(String path)
	{
		this.path = path;
	}

	public String getShijian()
	{
		return shijian;
	}

	public void setShijian(String shijian)
	{
		this.shijian = shijian;
	}

	public Integer getUserId()
	{
		return userId;
	}

	public void setUserId(Integer userId)
	{
		this.userId = userId;
	}
	
}

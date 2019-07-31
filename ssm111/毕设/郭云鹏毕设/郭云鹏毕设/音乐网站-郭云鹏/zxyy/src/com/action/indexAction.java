package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TCatelogDAO;
import com.dao.TYinyueDAO;
import com.model.TCatelog;
import com.opensymphony.xwork2.ActionSupport;

public class indexAction extends ActionSupport
{
	private TCatelogDAO catelogDAO;
	private TYinyueDAO yinyueDAO;
	
	public String index()
	{
		Map request=(Map)ServletActionContext.getContext().get("request");
		String sql="from TCatelog where catelogDel='no'";
		List cateLogList=catelogDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<cateLogList.size();i++)
		{
			TCatelog catelog=(TCatelog)cateLogList.get(i);
			String sql1="from TYinyue where del='no' and catelogId="+catelog.getCatelogId();
			List yinyueList=yinyueDAO.getHibernateTemplate().find(sql1);
			catelog.setYinyueList(yinyueList);
		}
		
		request.put("cateLogList", cateLogList);
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

	public TYinyueDAO getYinyueDAO()
	{
		return yinyueDAO;
	}

	public void setYinyueDAO(TYinyueDAO yinyueDAO)
	{
		this.yinyueDAO = yinyueDAO;
	}

}

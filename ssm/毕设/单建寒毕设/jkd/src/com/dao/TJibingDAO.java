package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TJibing;

/**
 * Data access object (DAO) for domain model class TJibing.
 * 
 * @see com.model.TJibing
 * @author MyEclipse Persistence Tools
 */

public class TJibingDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TJibingDAO.class);

	// property constants
	public static final String MINGCHENG = "mingcheng";

	public static final String ZHENGZHUANG = "zhengzhuang";

	public static final String RENYUAN_ID = "renyuanId";

	public static final String HUANSHIJIAN = "huanshijian";

	public static final String YISHENG = "yisheng";

	public static final String DEL = "del";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TJibing transientInstance)
	{
		log.debug("saving TJibing instance");
		try
		{
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re)
		{
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TJibing persistentInstance)
	{
		log.debug("deleting TJibing instance");
		try
		{
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re)
		{
			log.error("delete failed", re);
			throw re;
		}
	}

	public TJibing findById(java.lang.Integer id)
	{
		log.debug("getting TJibing instance with id: " + id);
		try
		{
			TJibing instance = (TJibing) getHibernateTemplate().get(
					"com.model.TJibing", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TJibing instance)
	{
		log.debug("finding TJibing instance by example");
		try
		{
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re)
		{
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value)
	{
		log.debug("finding TJibing instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TJibing as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByMingcheng(Object mingcheng)
	{
		return findByProperty(MINGCHENG, mingcheng);
	}

	public List findByZhengzhuang(Object zhengzhuang)
	{
		return findByProperty(ZHENGZHUANG, zhengzhuang);
	}

	public List findByRenyuanId(Object renyuanId)
	{
		return findByProperty(RENYUAN_ID, renyuanId);
	}

	public List findByHuanshijian(Object huanshijian)
	{
		return findByProperty(HUANSHIJIAN, huanshijian);
	}

	public List findByYisheng(Object yisheng)
	{
		return findByProperty(YISHENG, yisheng);
	}

	public List findByDel(Object del)
	{
		return findByProperty(DEL, del);
	}

	public List findAll()
	{
		log.debug("finding all TJibing instances");
		try
		{
			String queryString = "from TJibing";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TJibing merge(TJibing detachedInstance)
	{
		log.debug("merging TJibing instance");
		try
		{
			TJibing result = (TJibing) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TJibing instance)
	{
		log.debug("attaching dirty TJibing instance");
		try
		{
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TJibing instance)
	{
		log.debug("attaching clean TJibing instance");
		try
		{
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TJibingDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TJibingDAO) ctx.getBean("TJibingDAO");
	}
}
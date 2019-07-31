package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TTijian;

/**
 * Data access object (DAO) for domain model class TTijian.
 * 
 * @see com.model.TTijian
 * @author MyEclipse Persistence Tools
 */

public class TTijianDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TTijianDAO.class);

	// property constants
	public static final String RENYUAN_ID = "renyuanId";

	public static final String SHIJIAN = "shijian";

	public static final String YISHENG = "yisheng";

	public static final String XUEYA = "xueya";

	public static final String TIZHONG = "tizhong";

	public static final String KOUCHUN = "kouchun";

	public static final String CHILIE = "chilie";

	public static final String SHILI = "shili";

	public static final String TINGLI = "tingli";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TTijian transientInstance)
	{
		log.debug("saving TTijian instance");
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

	public void delete(TTijian persistentInstance)
	{
		log.debug("deleting TTijian instance");
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

	public TTijian findById(java.lang.Integer id)
	{
		log.debug("getting TTijian instance with id: " + id);
		try
		{
			TTijian instance = (TTijian) getHibernateTemplate().get(
					"com.model.TTijian", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TTijian instance)
	{
		log.debug("finding TTijian instance by example");
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
		log.debug("finding TTijian instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TTijian as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByRenyuanId(Object renyuanId)
	{
		return findByProperty(RENYUAN_ID, renyuanId);
	}

	public List findByShijian(Object shijian)
	{
		return findByProperty(SHIJIAN, shijian);
	}

	public List findByYisheng(Object yisheng)
	{
		return findByProperty(YISHENG, yisheng);
	}

	public List findByXueya(Object xueya)
	{
		return findByProperty(XUEYA, xueya);
	}

	public List findByTizhong(Object tizhong)
	{
		return findByProperty(TIZHONG, tizhong);
	}

	public List findByKouchun(Object kouchun)
	{
		return findByProperty(KOUCHUN, kouchun);
	}

	public List findByChilie(Object chilie)
	{
		return findByProperty(CHILIE, chilie);
	}

	public List findByShili(Object shili)
	{
		return findByProperty(SHILI, shili);
	}

	public List findByTingli(Object tingli)
	{
		return findByProperty(TINGLI, tingli);
	}

	public List findAll()
	{
		log.debug("finding all TTijian instances");
		try
		{
			String queryString = "from TTijian";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TTijian merge(TTijian detachedInstance)
	{
		log.debug("merging TTijian instance");
		try
		{
			TTijian result = (TTijian) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TTijian instance)
	{
		log.debug("attaching dirty TTijian instance");
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

	public void attachClean(TTijian instance)
	{
		log.debug("attaching clean TTijian instance");
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

	public static TTijianDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TTijianDAO) ctx.getBean("TTijianDAO");
	}
}
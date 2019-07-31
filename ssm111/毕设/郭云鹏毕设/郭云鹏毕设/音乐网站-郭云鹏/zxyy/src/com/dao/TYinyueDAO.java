package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TYinyue;

/**
 * Data access object (DAO) for domain model class TYinyue.
 * 
 * @see com.model.TYinyue
 * @author MyEclipse Persistence Tools
 */

public class TYinyueDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TYinyueDAO.class);

	// property constants
	public static final String CATELOG_ID = "catelogId";

	public static final String NAME = "name";

	public static final String FUJIAN = "fujian";

	public static final String FUJIAN_YUANSHIMING = "fujianYuanshiming";

	public static final String GESHOU = "geshou";

	public static final String SHIJIAN = "shijian";

	public static final String USER_ID = "userId";

	public static final String DEL = "del";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TYinyue transientInstance)
	{
		log.debug("saving TYinyue instance");
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

	public void delete(TYinyue persistentInstance)
	{
		log.debug("deleting TYinyue instance");
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

	public TYinyue findById(java.lang.Integer id)
	{
		log.debug("getting TYinyue instance with id: " + id);
		try
		{
			TYinyue instance = (TYinyue) getHibernateTemplate().get(
					"com.model.TYinyue", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TYinyue instance)
	{
		log.debug("finding TYinyue instance by example");
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
		log.debug("finding TYinyue instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TYinyue as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByCatelogId(Object catelogId)
	{
		return findByProperty(CATELOG_ID, catelogId);
	}

	public List findByName(Object name)
	{
		return findByProperty(NAME, name);
	}

	public List findByFujian(Object fujian)
	{
		return findByProperty(FUJIAN, fujian);
	}

	public List findByFujianYuanshiming(Object fujianYuanshiming)
	{
		return findByProperty(FUJIAN_YUANSHIMING, fujianYuanshiming);
	}

	public List findByGeshou(Object geshou)
	{
		return findByProperty(GESHOU, geshou);
	}

	public List findByShijian(Object shijian)
	{
		return findByProperty(SHIJIAN, shijian);
	}

	public List findByUserId(Object userId)
	{
		return findByProperty(USER_ID, userId);
	}

	public List findByDel(Object del)
	{
		return findByProperty(DEL, del);
	}

	public List findAll()
	{
		log.debug("finding all TYinyue instances");
		try
		{
			String queryString = "from TYinyue";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TYinyue merge(TYinyue detachedInstance)
	{
		log.debug("merging TYinyue instance");
		try
		{
			TYinyue result = (TYinyue) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TYinyue instance)
	{
		log.debug("attaching dirty TYinyue instance");
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

	public void attachClean(TYinyue instance)
	{
		log.debug("attaching clean TYinyue instance");
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

	public static TYinyueDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TYinyueDAO) ctx.getBean("TYinyueDAO");
	}
}
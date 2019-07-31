package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TRenyuan;

/**
 * Data access object (DAO) for domain model class TRenyuan.
 * 
 * @see com.model.TRenyuan
 * @author MyEclipse Persistence Tools
 */

public class TRenyuanDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TRenyuanDAO.class);

	// property constants
	public static final String XINGMING = "xingming";

	public static final String XINGBIE = "xingbie";

	public static final String NIANLING = "nianling";

	public static final String DIZHI = "dizhi";

	public static final String CHUSHENG = "chusheng";

	public static final String SHENFENZHENG = "shenfenzheng";

	public static final String LIANXI = "lianxi";

	public static final String DANWEI = "danwei";

	public static final String MENZU = "menzu";

	public static final String WENHUA = "wenhua";

	public static final String HUNYIN = "hunyin";

	public static final String BEIZHU = "beizhu";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TRenyuan transientInstance)
	{
		log.debug("saving TRenyuan instance");
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

	public void delete(TRenyuan persistentInstance)
	{
		log.debug("deleting TRenyuan instance");
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

	public TRenyuan findById(java.lang.Integer id)
	{
		log.debug("getting TRenyuan instance with id: " + id);
		try
		{
			TRenyuan instance = (TRenyuan) getHibernateTemplate().get(
					"com.model.TRenyuan", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TRenyuan instance)
	{
		log.debug("finding TRenyuan instance by example");
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
		log.debug("finding TRenyuan instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TRenyuan as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByXingming(Object xingming)
	{
		return findByProperty(XINGMING, xingming);
	}

	public List findByXingbie(Object xingbie)
	{
		return findByProperty(XINGBIE, xingbie);
	}

	public List findByNianling(Object nianling)
	{
		return findByProperty(NIANLING, nianling);
	}

	public List findByDizhi(Object dizhi)
	{
		return findByProperty(DIZHI, dizhi);
	}

	public List findByChusheng(Object chusheng)
	{
		return findByProperty(CHUSHENG, chusheng);
	}

	public List findByShenfenzheng(Object shenfenzheng)
	{
		return findByProperty(SHENFENZHENG, shenfenzheng);
	}

	public List findByLianxi(Object lianxi)
	{
		return findByProperty(LIANXI, lianxi);
	}

	public List findByDanwei(Object danwei)
	{
		return findByProperty(DANWEI, danwei);
	}

	public List findByMenzu(Object menzu)
	{
		return findByProperty(MENZU, menzu);
	}

	public List findByWenhua(Object wenhua)
	{
		return findByProperty(WENHUA, wenhua);
	}

	public List findByHunyin(Object hunyin)
	{
		return findByProperty(HUNYIN, hunyin);
	}

	public List findByBeizhu(Object beizhu)
	{
		return findByProperty(BEIZHU, beizhu);
	}

	public List findAll()
	{
		log.debug("finding all TRenyuan instances");
		try
		{
			String queryString = "from TRenyuan";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TRenyuan merge(TRenyuan detachedInstance)
	{
		log.debug("merging TRenyuan instance");
		try
		{
			TRenyuan result = (TRenyuan) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TRenyuan instance)
	{
		log.debug("attaching dirty TRenyuan instance");
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

	public void attachClean(TRenyuan instance)
	{
		log.debug("attaching clean TRenyuan instance");
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

	public static TRenyuanDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TRenyuanDAO) ctx.getBean("TRenyuanDAO");
	}
}
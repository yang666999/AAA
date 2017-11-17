package demo.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.stereotype.Component;

@Component("basedao")
public class BaseDao extends HibernateDaoSupport{
	@Resource(name="sessionFactory")
	public void setfactory(SessionFactory factory) {
		super.setSessionFactory(factory);
	}
	
	public void add(Object object) {
		super.getHibernateTemplate().save(object);
	}
	
	public void update(Object object) {
		super.getHibernateTemplate().update(object);
	}
	
	public void delete(Object object) {
		super.getHibernateTemplate().delete(object);
	}
	
	public Object load(Class claxx,Integer id) {
		return super.getHibernateTemplate().get(claxx, id);
	}
	
	public List<Object> find(String hql) {

	return  (List<Object>) super.getHibernateTemplate().find(hql);
	  
		 
	}
	
}

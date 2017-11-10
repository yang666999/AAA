package demo.dao;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.stereotype.Component;
@Component("empdao")
public class Empdao extends HibernateDaoSupport{
    @Resource(name="sessionFactory")
    public void session(SessionFactory factory) {
    	super.setSessionFactory(factory);
    }
    @Transactional
    public void add(Object obj) {
		super.getHibernateTemplate().save(obj);
	}
    @Transactional
    public List find(String hql) {
		return super.getHibernateTemplate().find(hql);
	}
    
}

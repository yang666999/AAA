package demo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import demo.bean.Admin;
import demo.dao.BaseDao;

@Service("baseservice")
public class BaseService {
    @Autowired
	private BaseDao dao;
    
    @Transactional
    public void add(Object object) {
		dao.add(object);
	}
    @Transactional
	public void update(Object object) {
		dao.update(object);
	}
    @Transactional
	public void delete(Object object) {
		dao.delete(object);
	}
    @Transactional
	public Object load(Class claxx,Integer id) {
		return dao.load(claxx, id);
	}
    @Transactional
	public List<Object> find(String hql) {
		return dao.find(hql);
	
	}
	
	public static void main(String[] args) {
ApplicationContext app = new ClassPathXmlApplicationContext("/app-core.xml");
		
		BaseService service = (BaseService)app.getBean("baseservice");
		
         Admin admin = new Admin();
         admin.setAdminName("ztr");
         admin.setPassword("123");
         admin.setPermissions(1);
         service.add(admin);
		
          
		for (Object object : service.find(" from Admin")) {
			System.out.println(object);
		}
		
	
	}
}

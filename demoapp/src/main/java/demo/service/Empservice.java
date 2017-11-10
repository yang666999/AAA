package demo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import demo.dao.Empdao;

@Service("service")
public class Empservice {
  @Autowired
  private Empdao empdao;
  @Transactional
  public void add(Object obj) {
	  empdao.add(obj);
  }
  @Transactional
  public List find(String hql) {
	return empdao.find(hql);
}
 
}

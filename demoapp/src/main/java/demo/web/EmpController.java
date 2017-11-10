package demo.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import demo.service.Empservice;

@Controller
public class EmpController {
   @Autowired
   private Empservice service;
   @RequestMapping(value="/list")
   public ModelAndView list() {
	   System.out.println("--------------------");
	ModelAndView mv=new ModelAndView();
	mv.addObject("emp", service.find(" from Emp"));
	mv.setViewName("list");
	return mv;
}

}

package org.jsp;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.hibernate.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EducationController {
	
	static EntityManager em = Persistence.createEntityManagerFactory("dev").createEntityManager();
	
	static EntityTransaction et = em.getTransaction();
	
	@RequestMapping("/savepage")
	public ModelAndView navtosave(ModelAndView mv) {
		mv.setViewName("save.jsp");
		return mv;
	}
	
	@RequestMapping("/savedetails")
	public ModelAndView save(ModelAndView mv,
							@RequestParam String uname,
							@RequestParam String cname,
							@RequestParam int yrofp,
							@RequestParam double cgpa
			) {
		
		mv.setViewName("index.jsp");
		
		et.begin();
		em.persist(new Education(0,uname,cname,yrofp,cgpa));
		et.commit();
		return mv;
	}
	
	@RequestMapping("/alledu")
	public ModelAndView navtoalled(ModelAndView mv) {
		mv.setViewName("viewall.jsp");
		List<Education> el = em.createQuery("from Education").getResultList();
		mv.addObject("e",el);
		return mv;
	}
	
	@RequestMapping("/delete")
	public ModelAndView deleteEdu(ModelAndView mv,@RequestParam int id) {
		mv.setViewName("viewall.jsp");
		
		Education e = em.find(Education.class,id);
		
		if(e!=null) {
			et.begin();
			em.remove(e);
			et.commit();
			
			return navtoalled(mv);
		}
		else {
			System.out.println("id not present");
			
		}
		return mv;
	}
	
	@RequestMapping("/update")
	public ModelAndView updatePage(ModelAndView mv,@RequestParam int id) {
		mv.setViewName("updatepage.jsp");
		Education e = em.find(Education.class,id);
		mv.addObject("ed",e);
		return mv;
	}
	
	@RequestMapping("/updatedetails")
	public ModelAndView updateDetails(ModelAndView mv,
			@RequestParam String uname,
			@RequestParam String cname,
			@RequestParam int yrofp,
			@RequestParam double cgpa,
			@RequestParam int id
			
			) {
		mv.setViewName("viewall.jsp");
		
		Education e = em.find(Education.class,id);
		e.setCgpa(cgpa);
		e.setCname(cname);
		e.setId(id);
		e.setUname(uname);
		e.setYop(yrofp);
		
		if(e!=null) {
			et.begin();
			em.merge(e);
			et.commit();
			
			return navtoalled(mv);
		}
		
		return mv;
	}
	
	

}

package org.jsp;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController {
	static EntityManager em = Persistence.createEntityManagerFactory("dev").createEntityManager();
	
	static EntityTransaction et = em.getTransaction();

	@RequestMapping("/addprod")
	public ModelAndView addProduct() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addproduct.jsp");
		return mv;
	}
	
	@RequestMapping("/addproduct")
	public ModelAndView addProd(@RequestParam String name,
								@RequestParam double price,
								@RequestParam float rating,
								@RequestParam int mfyear,
								@RequestParam String brand
								) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index.jsp");
		et.begin();
		Product p = em.merge(new Product(mfyear, name, price, rating, mfyear, brand));
		et.commit();
		
		mv.addObject("res",p.getId());
		return mv;
	}
	
	@RequestMapping("/viewproduct")
	public ModelAndView navigatetoProduct() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewall.jsp");
		List<Product> pl = em.createQuery("from Product").getResultList();
		mv.addObject("p",pl);
		for(Product p :pl) {
			System.out.println(p.getBrand());
		}
		return mv;
	}
	
	@RequestMapping("/delete")
	public ModelAndView deleteProduct(@RequestParam int id) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewall.jsp");
		Query q = em.createQuery("from Product");
		
		List<Product> p = q.getResultList();
		
		if(p!=null) {
			for(Product pl : p) {
				if(pl.getId() == id) {
					et.begin();
					em.remove(pl);
					et.commit();
					
					return navigatetoProduct();
				}
			}
		}
		else {
			System.out.println("not exist");
		}
		return mv;
	}
	
}

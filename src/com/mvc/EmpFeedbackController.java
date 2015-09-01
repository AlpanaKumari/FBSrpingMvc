package com.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmpFeedbackController {

	
	
	
	
	   @RequestMapping(value = "/employee", method = RequestMethod.GET)
	   public ModelAndView employee() {
	      return new ModelAndView("Employee", "command", new Employee());
	      
	   }
	   
	   @RequestMapping(value = "/addFeedback", method = RequestMethod.POST)
	   public String addFeedback(@ModelAttribute("SpringWeb")Employee emp, ModelMap model) {
	      model.addAttribute("id", emp.getEmpId());
	      model.addAttribute("name", emp.getEmpName());
	      model.addAttribute("feedback", emp.getFeedback());
	      
	      return "Result";
	   }
	}

package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MerchantController extends BaseFormController{

	@ModelAttribute
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public ModelAndView save(){
		Model model = new ExtendedModelMap();
		return new ModelAndView("/merchantForm", model.asMap());
	}
}

package com.fjsnorman.ae.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/home")
public class HomeController {

	@RequestMapping(method = RequestMethod.GET)
    public String showHome(ModelMap model) {
		System.out.println("########################### In home controller default method");
        model.addAttribute("schoolName", "Escuela ABC");
        return "home";
    }
}

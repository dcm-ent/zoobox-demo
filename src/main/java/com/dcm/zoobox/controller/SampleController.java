package com.dcm.zoobox.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dcm.zoobox.model.Actor;
import com.dcm.zoobox.service.SampleService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/sample/*")
@Log4j
public class SampleController {
	
	@Autowired
	private SampleService sampleService;
	
	@RequestMapping("/home")
	public String sample(Model model) {
		log.info("success");
		
		List<Actor> actorList = sampleService.getList();
		
		model.addAttribute("actorList", actorList);
		
		return "home";
	
	}
	
	

}

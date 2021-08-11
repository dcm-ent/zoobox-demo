package com.dcm.zoobox.main.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dcm.zoobox.community.service.BoardService;
import com.dcm.zoobox.main.model.Main;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class MainController {
	
	@Autowired
	private BoardService boardService;
	
	@GetMapping("/")
	public ModelAndView init(@RequestParam Map<String, Object> model) {
//		List<Main> portletList = boardService.getPortletList();
//		model.put("portletList", portletList);
		
		return new ModelAndView("home_test", model);
	}
	
	@GetMapping("/header")
	public ModelAndView header(@RequestParam Map<String, Object> model) {
		List<Main> portletList = boardService.getPortletList();
		model.put("portletList", portletList);
		
		return new ModelAndView("common/header", model);
	}
	
	
	@GetMapping("/leftMenu")
	public ModelAndView leftMenu(@RequestParam Map<String, Object> model) {
		List<Main> portletList = boardService.getPortletList();
		model.put("portletList", portletList);
		
		return new ModelAndView("common/leftMenu", model);
	}
	
	
	@GetMapping("/footer")
	public ModelAndView footer(@RequestParam Map<String, Object> model) {
		
		return new ModelAndView("common/footer", model);
	}
	
	
	@GetMapping("/place")
	public String goPlace(){
		return "place/place";
	}
}

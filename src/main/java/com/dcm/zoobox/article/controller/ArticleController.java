package com.dcm.zoobox.article.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/article/*")
@Log4j
public class ArticleController {
	
	@GetMapping("/article")
	public void article() {
		log.info("============article===========");
	}
}

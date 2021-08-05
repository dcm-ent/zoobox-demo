package com.dcm.zoobox.community.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dcm.zoobox.community.model.Article;
import com.dcm.zoobox.community.service.ArticleService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/article/*")
@Log4j
public class ArticleController {
	
	@Autowired
	private ArticleService articleService;
	
	@RequestMapping("/editForm.do")
	public ModelAndView editForm(@RequestParam Map<String, Object> model) {
		String articleId = (String) model.get("articleId");
		Article article;
		
		if(StringUtils.isEmpty(articleId)) {
			article = new Article();
		} else {
			article = articleService.getArticle(Long.valueOf(articleId));
		}
		
		model.put("article", article);
		return new ModelAndView("community/editForm", model);
	}
}

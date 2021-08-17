package com.dcm.zoobox.community.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dcm.zoobox.community.service.BoardService;


@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("/main")
	public ModelAndView boardMain(@RequestParam Map<String, Object> model) {
//		List<Board> portletList = boardService.getPortletList();
//		model.put("portletList", portletList);
		
		return new ModelAndView("community/board/main", model);
	}
}
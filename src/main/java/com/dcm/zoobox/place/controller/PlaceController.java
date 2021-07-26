package com.dcm.zoobox.place.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/place/*")
@Log4j
public class PlaceController {
	@GetMapping("/place")
	public void place() {
		log.info("============place===========");
	}
}

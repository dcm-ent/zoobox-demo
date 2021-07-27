package com.dcm.zoobox.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/user/*")
@Log4j
public class UserController {
	@GetMapping("/user")
	public void user() {
		log.info("============user===========");
	}
	@GetMapping("/forms")
	public void forms() {
		log.info("join form");
	}
	@GetMapping("/login")
	public void login() {
		log.info("login form");
	}
}

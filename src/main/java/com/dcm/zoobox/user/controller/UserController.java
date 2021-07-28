package com.dcm.zoobox.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dcm.zoobox.user.model.User;
import com.dcm.zoobox.user.service.UserService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/user/*")
@Log4j
public class UserController {
	
	private UserService service;
	
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
	@PostMapping("/create")
	public void createUser(User user) {
		service.createUser(user);
	}
}

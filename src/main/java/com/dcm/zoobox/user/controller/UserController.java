package com.dcm.zoobox.user.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dcm.zoobox.user.model.User;
import com.dcm.zoobox.user.service.UserService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/user/*")
@Log4j
public class UserController {
	
	@Setter(onMethod_ = @Autowired)
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
	public String createUser(User user, RedirectAttributes rttr) {
		service.createUser(user);
		
		return "redirect:/home";
	}
	
	//이메일 중복확인
	@PostMapping(value = "/emailcheck")
	@ResponseBody 
		public HashMap<String, Object>emailDuplicatedCheck( Model model, @RequestParam String email) {
			log.info("고객이 입력한 이메일:"+email);
			
			return  service.checkDuplicatedEmail(email);
		}
	//아이디 중복확인
		@PostMapping(value = "/nicknamecheck")
		@ResponseBody
			public HashMap<String, Object>nicknameDuplicatedCheck( Model model, @RequestParam String nickname) {
				log.info("고객이 입력한 닉네임:"+nickname);
				
				return service.checkDuplicatedNickname(nickname);
			}
		
		
		//test

}

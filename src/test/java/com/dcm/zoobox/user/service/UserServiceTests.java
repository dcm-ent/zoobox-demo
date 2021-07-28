package com.dcm.zoobox.user.service;

import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class UserServiceTests {
	
	@Setter(onMethod_ = @Autowired)
	private UserService service;
	
	@Test
	public void testCheckEmail() {
		Map<String,Object> map =service.checkDuplicatedEmail("xodls1003@naver.com");
		log.info(map+"===============================");
	}

	
	@Test
	public void testCheckNickname() {
		Map<String,Object> map =service.checkDuplicatedNickname("팡구");
		log.info(map+"===============================");
	}
	
}

package com.dcm.zoobox.user.mapper;

import org.junit.Test;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.dcm.zoobox.user.model.User;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class UserMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private UserMapper mapper;
	
	/*
	 * @Test public void testGetUser() { User user = mapper.getUser(1L);
	 * if(user.getUserRole()==null) { log.info("noooooop"); }else { log.info(user);
	 * log.info(user.getUserRole().getAuthority()); }}
	 */
	@Test
	public void testEmailDuplicate() {
		String email="xodls1003@naver.com";
		int i= mapper.checkDuplicatedEmail(email);
		log.info(i);
	}
	@Test
	public void testNicknameDuplicate() {
		String nickname="핑구";
		int i = mapper.checkDuplicatedNickname(nickname);
		log.info(i);
	}
}

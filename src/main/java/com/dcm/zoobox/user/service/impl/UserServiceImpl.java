package com.dcm.zoobox.user.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dcm.zoobox.user.mapper.UserMapper;
import com.dcm.zoobox.user.model.User;
import com.dcm.zoobox.user.service.UserService;


import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class UserServiceImpl implements UserService{
	
	@Setter(onMethod_ = @Autowired)
	private UserMapper mapper;
	
	@Override
	public void createUser(User user) {
		Long userId = mapper.createUser(user);
		mapper.createUserDetails(userId);
		log.info("등록완료 ");
		
	}

	@Override
	public User getUser(Long userId) {
	log.info("유저등록");
	return mapper.getUser(userId);
	
}

}

package com.dcm.zoobox.user.service;

import java.util.HashMap;

import com.dcm.zoobox.user.model.User;

public interface UserService {
	public void createUser(User user);
	public User getUser(Long userId);
	public HashMap<String, Object> checkDuplicatedEmail(String email);
	public HashMap<String, Object> checkDuplicatedNickname(String nickname);
}

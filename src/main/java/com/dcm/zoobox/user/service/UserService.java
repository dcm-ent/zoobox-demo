package com.dcm.zoobox.user.service;

import com.dcm.zoobox.user.model.User;

public interface UserService {
	public void createUser(User user);
	public User getUser(Long userId);
}

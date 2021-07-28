package com.dcm.zoobox.user.mapper;

import com.dcm.zoobox.user.model.User;

public interface UserMapper {
	public Long createUser(User user);
	public void createUserDetails(Long userId);
	public User getUser(Long userId);
	public int checkDuplicatedEmail(String email);
	public int checkDuplicatedNickname(String nickname);
}

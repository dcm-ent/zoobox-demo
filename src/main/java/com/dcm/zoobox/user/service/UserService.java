package com.dcm.zoobox.user.service;

import java.util.HashMap;
import java.util.List;

import com.dcm.zoobox.user.model.PetBreed;
import com.dcm.zoobox.user.model.User;

public interface UserService {
	public void createUser(User user);
	public User getUser(Long userId);
	public HashMap<String, Object> checkDuplicatedEmail(String email);
	public HashMap<String, Object> checkDuplicatedNickname(String nickname);
	public List<PetBreed> getPetBreed(int cateNum);
}

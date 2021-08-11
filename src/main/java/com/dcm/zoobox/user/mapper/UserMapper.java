package com.dcm.zoobox.user.mapper;

import java.util.List;

import com.dcm.zoobox.user.model.PetBreed;
import com.dcm.zoobox.user.model.User;

public interface UserMapper {
	public void createUser(User user);
	public void createUserDetails(Long userId);
	public User getUser(Long userId);
	public int checkDuplicatedEmail(String email);
	public int checkDuplicatedNickname(String nickname);
	public List<PetBreed> getPetBreed(int cateNum);
}

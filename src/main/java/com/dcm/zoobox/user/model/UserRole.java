package com.dcm.zoobox.user.model;

import lombok.Data;

@Data
public class UserRole {
	private Long userId;
	private int authority;
	
}

package com.dcm.zoobox.user.model;

import java.util.Date;

import lombok.Data;

@Data
public class UserInfo {
	private Long userInfoId;
	private Long userId;
	private int exp;
	private int status;
	private int count;
	private Date startDate;
	
}

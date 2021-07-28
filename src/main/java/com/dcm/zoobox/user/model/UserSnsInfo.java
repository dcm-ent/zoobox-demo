package com.dcm.zoobox.user.model;

import lombok.Data;

@Data
public class UserSnsInfo {
	private Long userSnsInfoId;
	private Long userId;
	private String snsEmail;
	private String type;
}

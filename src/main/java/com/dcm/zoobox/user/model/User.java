package com.dcm.zoobox.user.model;


import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class User {
	private Long userId;
	private String password;
	private String username;
	private String email;
	private String nickname;
	private String birthdate;
	private String phone;
	private Date regDate;
	private Date updateDate;
	private String gender;
	private Long bizId;
	private Long expertId;
	private List<UserInfo> userInfoList;
	private List<UserRole> userRoleList;
	private List<UserSnsInfo> userSnsInfoList;
	
}

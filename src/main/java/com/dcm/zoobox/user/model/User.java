package com.dcm.zoobox.user.model;


import lombok.*;

import java.util.Date;

@Data
public class User {
	private Long userId;
	private String password;
	private String username;
	private String email;
	private String nickname;
	private String birthdate;
	private String phone;
	private String address;
	private String roadAddress;
	private Date regDate;
	private Date updateDate;
	private String gender;
	private Long bizId;
	private Long expertId;
	private UserInfo userInfo;
	private UserRole userRole;
	private UserSnsInfo userSnsInfo;
	
	private String zipcode;
	private String detailAddress;
	private String yearValue;
	private String monthValue;
	private String dayValue;
	private String emailInfo;

}

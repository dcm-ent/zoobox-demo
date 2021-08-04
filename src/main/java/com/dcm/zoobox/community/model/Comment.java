package com.dcm.zoobox.community.model;

import java.util.Date;

import lombok.Data;

@Data
public class Comment {

	private int commentId;
	private int userId;
	private int articleId;
	private int placeId;
	private int reservationId;
	private String content;
	private Date regDate;
	private Date updateDate;
	
}

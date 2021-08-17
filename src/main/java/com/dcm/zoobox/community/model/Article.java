package com.dcm.zoobox.community.model;

import java.util.Date;

import lombok.Data;

@Data
public class Article {

	private int articleId;
	private int mainId;
	private int boardId;
	private int userId;
	private String title;
	private String content;
	private String nickname;
	private Date regDate;
	private Date updateDate;
	private int clickCnt;
	private int replyCnt;
	private int delYn;
	private int fileId;
	
}

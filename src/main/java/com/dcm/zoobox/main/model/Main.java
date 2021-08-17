package com.dcm.zoobox.main.model;

import java.util.Date;

import lombok.Data;

@Data
public class Main {
	private int mainId;
	private int userId;
	private String name;
	private Date regDate;
	private Date updateDate;
	private int delYn;
	private String gubun;
	private String url;
}

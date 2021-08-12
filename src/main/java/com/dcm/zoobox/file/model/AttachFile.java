package com.dcm.zoobox.file.model;

import lombok.Data;

@Data
public class AttachFile {
	public Long fileId;
	public String realName;
	public String saveName;
	public String path;
	public Long size;
	public String type;
	
}

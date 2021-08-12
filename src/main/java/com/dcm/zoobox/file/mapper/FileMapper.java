package com.dcm.zoobox.file.mapper;

import java.util.List;

import com.dcm.zoobox.file.model.AttachFile;

public interface FileMapper {
	
	public void insert(AttachFile profile);
	public void delete(String saveName);
	public AttachFile petProfile(Long file_id);
	public void deleteAll(Long file_id);
	
	public List<AttachFile> getOldFIles();
	
}

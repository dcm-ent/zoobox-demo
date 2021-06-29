package com.dcm.zoobox.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.dcm.zoobox.model.Actor;

@Mapper
public interface SampleMapper {
	
	List<Actor> getList(int i);
}

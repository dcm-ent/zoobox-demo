package com.dcm.zoobox.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dcm.zoobox.mapper.SampleMapper;
import com.dcm.zoobox.model.Actor;
import com.dcm.zoobox.service.SampleService;

@Service
public class SampleServiceImpl implements SampleService {
	
	@Autowired
	private SampleMapper sampleMapper;
	
	@Override
	public List<Actor> getList() {
		
		return sampleMapper.getList(10);
	}

}

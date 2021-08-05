package com.dcm.zoobox.community.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dcm.zoobox.community.mapper.BoardMapper;
import com.dcm.zoobox.community.service.BoardService;
import com.dcm.zoobox.main.model.Main;


@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardMapper boardMapper;
	

	@Override
	public List<Main> getPortletList() {
		return boardMapper.getPortletList();
	}

}

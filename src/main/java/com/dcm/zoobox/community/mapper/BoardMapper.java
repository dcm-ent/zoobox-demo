package com.dcm.zoobox.community.mapper;

import java.util.List;

import com.dcm.zoobox.main.model.Main;
import org.springframework.stereotype.Repository;


public interface BoardMapper {

	List<Main> getPortletList();

}

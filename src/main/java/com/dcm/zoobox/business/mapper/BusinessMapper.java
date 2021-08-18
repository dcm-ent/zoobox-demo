package com.dcm.zoobox.business.mapper;

import com.dcm.zoobox.business.model.Business;
import com.dcm.zoobox.user.model.User;
import org.springframework.web.multipart.MultipartFile;


public interface BusinessMapper {



    int update(Business business);

    Business getInfo(User userId);


    int buziEnllo(Business business);

    int saveFile(MultipartFile[] file);
}

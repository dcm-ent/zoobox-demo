package com.dcm.zoobox.business.service;

import com.dcm.zoobox.business.model.Business;
import com.dcm.zoobox.user.model.User;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

public interface BusinessService {
    String searchNumber(String b_no) throws IOException;



    int update(Business business);

    Business getInfo(User userId);

    int buziEnllo(Business business, MultipartFile[] file );
}

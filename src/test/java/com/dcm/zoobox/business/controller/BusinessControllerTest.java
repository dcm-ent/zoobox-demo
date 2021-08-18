package com.dcm.zoobox.business.controller;

import com.dcm.zoobox.business.model.Business;
import com.dcm.zoobox.business.service.BusinessServiceImpl;
import junit.framework.TestCase;
import lombok.Setter;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

public class BusinessControllerTest extends TestCase {

    @Setter(onMethod_ = @Autowired)
    private BusinessServiceImpl businessService;
    @Test
    public void testBusisave() {

        Business biz=new Business();
        biz.setUser_id(2222L);
        biz.setBusi_name("코코 병원");
        biz.setBusi_Address("서울시 강남구");
        biz.setBusi_Number("4445556666");
        biz.setBusi_Phone("02011112222");
        biz.setBusi_ownerName("이재용");
        biz.setBusi_roadAddress("서울시 테헤란로");
        biz.setBusi_work_time("9:00 ~ 7:00");
        biz.setContent("고양이 전문 병원입니다.");
        biz.setCode_no("01");
        biz.setCode_name("병원");
        biz.setFile_id(11111L);

        System.out.println(biz);
        MultipartFile[]  file=null;
        int result=businessService.buziEnllo(biz,file);
        String msg= result>0 ? "성공입니다.":"실패입니다.";
        System.out.println(msg);

    }

    public void testBuziEnllo() {
    }

    public void testBuziUpdate() {
    }
}
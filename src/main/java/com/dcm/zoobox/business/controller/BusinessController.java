package com.dcm.zoobox.business.controller;

import com.dcm.zoobox.business.service.BusinessService;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;

@Controller
@Slf4j
public class BusinessController {

    @Setter(onMethod_ = @Autowired)
    private BusinessService service;

    @RequestMapping("/businesshome")
    public String go(){
        log.info("go가자~!");
        return "business/businessEnllo";
    }
    //국세청 사업자등록조회 api
    @RequestMapping("/rest/validate")
    public ModelAndView busisave() throws IOException {
        ModelAndView mv=new ModelAndView();


        String b_no="8108600658";
        service.searchNumber(b_no);

        return mv;
    }
}

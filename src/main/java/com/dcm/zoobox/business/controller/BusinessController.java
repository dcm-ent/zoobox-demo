package com.dcm.zoobox.business.controller;

import com.dcm.zoobox.business.service.BusinessService;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import java.io.IOException;
import java.net.URI;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

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


        String bno="8108600658";
        String b_no = URLEncoder.encode(bno, "UTF-8");
        service.searchNumber(b_no);


        return mv;
    }
}

package com.dcm.zoobox.business.controller;

import com.dcm.zoobox.business.model.Business;
import com.dcm.zoobox.business.service.BusinessService;
import com.dcm.zoobox.user.mapper.UserMapper;
import com.dcm.zoobox.user.model.User;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;
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
    @RequestMapping(value="/rest/validate",method = RequestMethod.POST)
    @ResponseBody
    public String busisave( String number) throws IOException {

        System.out.println(number);
       String result= service.searchNumber(number);

        return result;
    }

    //비지니스 등록 폼
    @RequestMapping(value = "/busi/enllo", method = RequestMethod.POST)
    public ModelAndView buziEnllo(Business business,@RequestParam(required = false) MultipartFile[] file
            ,@RequestParam String timestart, @RequestParam String timeend,@RequestParam String extraAdress ){

        System.out.println(business);
        StringBuilder sb=new StringBuilder();
        StringBuilder sb1=new StringBuilder();
        StringBuilder sb2=new StringBuilder();
        System.out.println(timestart);
        System.out.println(timeend);
        System.out.println(extraAdress);


         String extra=extraAdress.replace("()","");
        sb.append(timestart.trim()+" - ").append(timeend.trim());
        business.setBusi_work_time(sb.toString());
        sb1.append(business.getBusi_Address()+extra);
        business.setBusi_Address(sb1.toString());
        sb2.append(business.getBusi_roadAddress()+extra);
        business.setBusi_roadAddress(sb2.toString());
        System.out.println("business: "+business);

        ModelAndView mv=new ModelAndView();
        int result=service.buziEnllo(business,file);
        mv.addObject("");
        mv.setViewName("home");
        return mv;
    }

    //수정 페이지
    @RequestMapping(value = "/busi/go/update",method = RequestMethod.POST)
    public  ModelAndView updatePage(User userId){
        ModelAndView mv=new ModelAndView();
        Business business=service.getInfo(userId);
        mv.addObject("business",business);
        mv.setViewName("busiUpdate");
        return mv;
    }
    //수정하기
    @RequestMapping(value = "/busi/update",method = RequestMethod.POST)
    public int buziUpdate(Business business){

        int result=service.update(business);

        return result;
    }
}

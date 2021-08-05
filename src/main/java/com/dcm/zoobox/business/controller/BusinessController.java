package com.dcm.zoobox.business.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Slf4j
public class BusinessController {

    @RequestMapping("/businesshome")
    public String go(){
        log.info("go가자~!");
        return "business/businessEnllo";
    }
    //��� api
    @RequestMapping("/busiEnllo")
    public ModelAndView busisave(){
        ModelAndView mv=new ModelAndView();

        return mv;
    }
}

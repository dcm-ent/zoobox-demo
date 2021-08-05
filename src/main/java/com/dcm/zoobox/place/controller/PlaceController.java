package com.dcm.zoobox.place.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/place/*")
@Log4j
public class PlaceController {
	@GetMapping("/place")
	public String place() {

		log.info("============place===========");
		return "place";
	}



	//키워드로 다음 지도 검색

	/*
	GET /v2/local/search/address.{format} HTTP/1.1
	Host: dapi.kakao.com
	Authorization: KakaoAK {REST_API_KEY}
	*/
	@GetMapping("/searchPlace")
	@ResponseBody
	public ModelAndView searchKeyword(@RequestParam String searchWord){
		ModelAndView mv= new ModelAndView();


		return mv;
	}

}

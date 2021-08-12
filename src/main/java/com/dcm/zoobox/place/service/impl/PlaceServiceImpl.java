package com.dcm.zoobox.place.service.impl;

import com.dcm.zoobox.place.mapper.PlaceMapper;

import com.dcm.zoobox.place.model.AnimalBusi;
import lombok.Setter;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Service;

import com.dcm.zoobox.place.service.PlaceService;

import lombok.extern.log4j.Log4j;
import org.springframework.web.client.RestTemplate;
import sun.net.www.protocol.http.HttpURLConnection;

import javax.net.ssl.HttpsURLConnection;
import java.io.*;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.Buffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

@Service
@Log4j
public class PlaceServiceImpl implements PlaceService {

    @Setter(onMethod_ = @Autowired)
    private PlaceMapper placeMapper;


    @Override
    public void save(ArrayList<AnimalBusi> list) {
        placeMapper.save(list);

    }

    @Override
    public void search(String query) throws MalformedURLException, UnsupportedEncodingException {
        log.info("service"+query);
        String encoder=URLEncoder.encode(query,"UTF-8");
        System.out.println(encoder);
        String serviceKey="4bf2c94a72779e50c52e5c383a67b1f0";
        String kakaoUrl="https://dapi.kakao.com/v2/local/search/keyword.json?query="+ encoder +"&page=1&size=10";

        RestTemplate restTemplate=new RestTemplate();
        HttpHeaders headers=new HttpHeaders();

        headers.add("Authorization","KakaoAK "+serviceKey);
        headers.add("Accept", MediaType.APPLICATION_JSON_VALUE);
        headers.add("Content-Type",MediaType.APPLICATION_JSON_UTF8_VALUE);


        URI uri=URI.create(kakaoUrl);

        RequestEntity<String> rque=new RequestEntity<>(headers, HttpMethod.GET,uri);
        System.out.println(rque.getHeaders());
        System.out.println(rque.getBody());
        ResponseEntity<String> res=restTemplate.exchange(rque,String.class);


        while(true){
           

        }



    }
}

package com.dcm.zoobox.place.service.impl;

import com.dcm.zoobox.place.mapper.PlaceMapper;
import com.dcm.zoobox.place.model.AnimalBusi;
import com.dcm.zoobox.place.model.kakao.ResDocuments;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Service;

import com.dcm.zoobox.place.service.PlaceService;

import lombok.extern.log4j.Log4j;
import org.springframework.web.client.RestTemplate;


import java.io.*;
import java.net.URI;
import java.net.URLEncoder;
import java.util.*;

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
    public List<ResDocuments> search(String query) throws UnsupportedEncodingException {


        RestTemplate restTemplate = new RestTemplate();

        log.info("service" + query);
        String encoder = URLEncoder.encode(query, "UTF-8");
        Map<String, String> map = new HashMap<>();
        map.put("query", query);
        map.put("page", "1");
        map.put("size", "10");
        String serviceKey = "4bf2c94a72779e50c52e5c383a67b1f0";
        String kakaoUrl = "https://dapi.kakao.com/v2/local/search/keyword.json?query=" + encoder + "&page=1&size=10";

        HttpHeaders headers = new HttpHeaders();

        headers.add("Authorization", "KakaoAK " + serviceKey);
        headers.add("Accept", MediaType.APPLICATION_JSON_VALUE);
        headers.add("Content-Type", MediaType.APPLICATION_JSON_UTF8_VALUE);

        URI uri = URI.create(kakaoUrl);

        RequestEntity<Map> rque = new RequestEntity<>(headers, HttpMethod.GET, uri);

        ResponseEntity<Map> res = restTemplate.exchange(rque, Map.class);
        System.out.println("res: " + res.getBody().get("documents"));
        System.out.println("===================" + res.getBody().get("documents").getClass().getName() + "========================");

        ArrayList<Map> list = (ArrayList<Map>) res.getBody().get("documents");
        List<ResDocuments> Reqlist=new ArrayList<>();
        for(int i=0;i<list.size();i++){
            ResDocuments resDocuments=new ResDocuments();
            System.out.println("+++++시작++++");
            resDocuments.setAddress_name((String) list.get(i).get("address_name"));
            resDocuments.setCategory_group_code((String) list.get(i).get("category_group_code"));
            resDocuments.setCategory_group_name((String) list.get(i).get("category_group_name"));
            resDocuments.setCategory_name((String) list.get(i).get("category_name"));
            resDocuments.setDistance((String) list.get(i).get("distance"));
            resDocuments.setId((String) list.get(i).get("id"));
            resDocuments.setPhone((String) list.get(i).get("phone"));
            resDocuments.setPlace_name((String) list.get(i).get("place_name"));
            resDocuments.setPlace_url((String) list.get(i).get("place_url"));
            resDocuments.setRoad_address_name((String) list.get(i).get("road_address_name"));
            resDocuments.setX((String) list.get(i).get("x"));
            resDocuments.setY((String) list.get(i).get("y"));

            Reqlist.add(new ResDocuments(resDocuments.getId(),resDocuments.getPlace_name(),
                            resDocuments.getCategory_name(),resDocuments.getCategory_group_code(),resDocuments.getCategory_group_name(),
                            resDocuments.getPhone(),resDocuments.getAddress_name(),resDocuments.getRoad_address_name(), resDocuments.getX(),
                            resDocuments.getY(), resDocuments.getPlace_url(), resDocuments.getDistance()));

        }
        System.out.println("ReqList: "+Reqlist);
        return Reqlist;
    }
}


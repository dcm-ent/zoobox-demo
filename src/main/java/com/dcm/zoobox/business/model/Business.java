package com.dcm.zoobox.business.model;

import java.util.Map;

import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Business {

    private String user_id;
    private String busi_Name;
    private String busi_Number;
    private String busi_Phone;
    private String busi_Address;
    private String busi_work_time;//운영시간 시작시간
    private String code_no;
    private String code_name;
    private String file_id;

    public MultiValueMap<String,String> toMultiValueMap(){
        Map map=new LinkedMultiValueMap<String,String>();
        map.put("number",busi_Number);
        map.put("name",busi_Name);
        map.put("address",busi_Address);

        return (MultiValueMap<String, String>) map;
    }
}
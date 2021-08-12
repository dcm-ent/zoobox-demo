package com.dcm.zoobox.business.service;

import com.google.gson.JsonParser;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.http.*;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import javax.net.ssl.HttpsURLConnection;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;

@Service
public class BusinessServiceImpl implements BusinessService {


    @Override
    public void searchNumber(String bno) throws IOException {

        String serviceKey="XlNVunWdX7nHPurouFfkPI1BREzio73ddq5aNscHWr3VUk267GRLsUyeVVkGdVhUgDqkHEpsAoVBF6V5Dk4%2F2w%3D%3D";
        String searchUrl="https://api.odcloud.kr/api/nts-businessman/v1/status?";

        //post방식으로 스트링을 통한 json전송
        JSONObject jsonObject=new JSONObject();
        JSONObject jsonBody=new JSONObject();
        JSONArray jsonArray=new JSONArray();
        jsonArray.add(bno);
        System.out.println("jsonarray --->"+jsonArray.toString());
        jsonObject.put("b_no",jsonArray.toString());
        jsonBody.put("body",jsonObject.toString());
        System.out.println("jsonBody --->"+jsonBody.toString());


        System.out.println("json: "+jsonObject.toString());

        URL searchURL=new URL(searchUrl);
        HttpsURLConnection con=null;
        BufferedReader br=null;

        try{
            con=(HttpsURLConnection) searchURL.openConnection();
            con.setConnectTimeout(3000);
            con.setReadTimeout(3000);
            con.setRequestMethod("POST");
            con.setRequestProperty("Content-Type","application/json");
            con.setRequestProperty("Accept","application/json");
            con.setDoOutput(true);
            int responseCodes=con.getResponseCode();
            System.out.println("res: "+responseCodes);

            //post방식으로 스트링을 통한 json전송

            BufferedWriter bw=new BufferedWriter(new OutputStreamWriter(con.getOutputStream()));
            //OutputStreamWriter bw=new OutputStreamWriter(con());

            bw.write(jsonBody.toString());
            bw.flush();
            bw.close();
            //서버에서 보낸 응답데이터 수신 받기
            BufferedReader in =new BufferedReader(new InputStreamReader(con.getInputStream()));
           String returnMsg=in.readLine();
           System.out.println("응답메시지: "+con.getResponseMessage());

            //http응답 수신 코드

            int responseCode=con.getResponseCode();
            if(responseCode == 200){
                System.out.println("성공적인 메시지: ");
            }else{
                System.out.println("responseCode: "+responseCode);
            }

        }catch(Exception e){
         e.printStackTrace();
        }
    }
}

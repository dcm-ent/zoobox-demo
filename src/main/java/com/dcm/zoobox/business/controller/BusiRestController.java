package com.dcm.zoobox.business.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.json.JSONObject;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

@RestController
@RequestMapping("/rest")
public class BusiRestController {

    @GetMapping("/validate")
    @ResponseBody
    public String searchBusinessNumber(@PathVariable String number) throws Exception {
        System.out.println("실행"+number);
        //사업자 번호
       // String number="8108600658";
        String EncodingKey="n9dAG9GLBclIr6pTa1ONRq4D7DJMgtONggPCq7Hn7p53X0W2cfaH9GaESxKRyqxmB8md07hNTg30b9sdkzqZYg%3D%3D";
        String DecodingKey="n9dAG9GLBclIr6pTa1ONRq4D7DJMgtONggPCq7Hn7p53X0W2cfaH9GaESxKRyqxmB8md07hNTg30b9sdkzqZYg==";
        String url="api.odcloud.kr/api/nts-businessman/v1/status?serviceKey="+EncodingKey+"&b_no="+number+"&returnType=JSON";


        //   1회 호출 시 최대 100개에 해당하는 사업자등록정보의 진위확인 또는 사업자등록 상태조회가 가능합니다.
        //  100개 초과 시에는 Too Large Request Error 가 발생합니다. (* 하단의 Too Large Request Error 부분을 참고해주세요)
        //returnType=JSON (Default)
        // http://api.odcloud.kr/api/nts-businessman/v1/validate?serviceKey=[서비스키]&returnType=XML

        ModelAndView mv=new ModelAndView();

        HashMap<String,Object> businessCheckMap=getDataFromJson(url,"UTF-8","get","");
        System.out.println(businessCheckMap);

        JSONObject jsonObject=new JSONObject();
        jsonObject.put("businessCheckMap",businessCheckMap);
        System.out.println("검색 결과: "+jsonObject.toString());

        //화면 주소

        return jsonObject.toString();
    }
    public HashMap<String,Object> getDataFromJson(String url,String encoding,String type,String jsonStr) throws Exception {
        boolean isPost=false;
        if("post".equals(type)){
            isPost=true;
        }else{
            url="".equals(jsonStr)?url:url+"?request="+jsonStr;

        }
        return getStringFromURL(url,encoding,isPost,jsonStr,"application/json");
    }

    private HashMap<String, Object> getStringFromURL(String url, String encoding, boolean isPost, String jsonStr, String contentType) throws Exception {
        URL ApiUrl=new URL(url);
        HttpURLConnection con=null;
        BufferedReader br=null;
        BufferedWriter bw=null;

        HashMap<String, Object> resultMap=new HashMap<>();
        try{
            con=(HttpURLConnection) ApiUrl.openConnection();
            con.setConnectTimeout(5000);
            con.setReadTimeout(5000);
            con.setDoOutput(true);

            if(isPost){
                con.setRequestMethod("POST");
                con.setRequestProperty("Content-Type",contentType);
                con.setRequestProperty("Accept","*/*");

            }else{
                con.setRequestMethod("GET");
            }
            con.connect();

            if(isPost){
                bw=new BufferedWriter(new OutputStreamWriter(con.getOutputStream(),"UTF-8"));
                bw.write(jsonStr);
                bw.flush();
                bw=null;

            }
            br=new BufferedReader(new InputStreamReader(con.getInputStream(),encoding));
            String line=null;
            StringBuffer result=new StringBuffer();

            while((line=br.readLine()) != null) result.append(line);
            ObjectMapper mapper=new ObjectMapper();
            resultMap=mapper.readValue(result.toString(),HashMap.class);

        } catch (IOException e) {
            e.printStackTrace();
            throw new Exception(url+"interface failed"+e.toString());

        }finally {
            if(con !=null) con.disconnect();
            if(br !=null ) br.close();
            if(bw !=null) bw.close();
        }
        return resultMap;


    }
}
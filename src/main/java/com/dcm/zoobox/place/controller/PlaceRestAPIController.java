package com.dcm.zoobox.place.controller;


import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.*;


import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@RestController
public class PlaceRestAPIController {

    private final Logger logger= LoggerFactory.getLogger(this.getClass());


    /*
    * 동물 샵 조회해서 반환하기
    * */
    @ResponseBody
    @RequestMapping(value="/html",method = RequestMethod.POST)
    public Map<String, String> getBusinessName(@RequestParam Map<String,Object> names, HttpServletRequest request){

        System.out.println("name"+names);
        String name=(String) names.get("number");
        System.out.println("---->"+name);


        return getBusinessAll(name);
    }

    public Map<String,String>getBusinessAll(String name){
        if( null == name || "".equals(name)){
            throw new RuntimeException("조회할 이름을 입력해주세요");
        }

        String url="https://www.animal.go.kr/front/awtis/shop/hospitalList.do?bizKnCd=&boardId=shop&pageSize=0\n" +
                "&latitude=&longitude=&checkGeoloc=Y&menuNo=6000000002&searchUprCd=&searchOrgCd=\n" +
                "&searchCoNm=&searchPmsnNo=";

        String menuNo="6000000002";
        Map<String,String> headers=new HashMap<>();
        headers.put("Accept","text/html,application/xhtml+xml,application/xml; charset=UTF-8");
        headers.put("Accept-Encoding","gzip, deflate, br");
        headers.put("Accept-Language","ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7");
        headers.put("Connection","keep-alive");
        headers.put("Content-Type","text/html;charset=UTF-8");
        headers.put("Host","https://www.animal.go.kr");
        headers.put("Referer","https://www.animal.go.kr/front/awtis/shop/hospitalList.do?bizKnCd=&boardId=shop&pageSize=0&latitude=&longitude=&checkGeoloc=Y&menuNo=6000000002&searchUprCd=&searchOrgCd=&searchCoNm=&searchPmsnNo=");
        headers.put("Sec-Fetch-Mode","navigate");
        headers.put("Sec-Fetch-Site","same-origin");
        headers.put("User-Agent"," Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36");

        final String CRLF="\n";

        StringBuffer sb=new StringBuffer();
        sb.append("<map boardId=\"shop\">"+CRLF);
        sb.append("    <pageSize/"+CRLF);
        sb.append("    <latitude/>");
        sb.append("     <longitude/>");
        sb.append(     "<checkGeoloc></checkGeoloc>");
        sb.append(     "<menuNo>"+menuNo+"</menuNo>");
        sb.append(     "<searchUprCd></searchUprCd>");
        sb.append(     "<searchOrgCd></searchOrgCd>");
        sb.append(     "<searchCoNm>"+name+"</searchCoNm>");
        sb.append(     "<searchPmsnNo></searchPmsnNo>");
        sb.append("</map>"+CRLF);

        String body=sb.toString();
        Map<String,String> map=new HashMap<>();
        try{
            Connection.Response res=Jsoup.connect(url)
                    .headers(headers)
                    .requestBody(body)
                    .timeout(2000)
                    .method(Connection.Method.POST)
                    .execute();

            if(logger.isDebugEnabled()){
                logger.debug(res.body());
            }

            org.dom4j.Document document= DocumentHelper.parseText(res.body());
            String searchCoNm=document.valueOf("//map/searchCoNm");
            if(logger.isDebugEnabled()){
                logger.debug("searchCoNm["+searchCoNm+"]");
            }
            map.put(name,searchCoNm);
        }catch (IOException e){
            logger.error("Jsoup 오류",e);
        }catch(DocumentException e){
            logger.error("Document parse 오류",e);
        }
        System.out.println("map: "+map);
        return map;
    }
}

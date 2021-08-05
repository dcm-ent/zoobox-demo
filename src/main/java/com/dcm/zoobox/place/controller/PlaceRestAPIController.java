package com.dcm.zoobox.place.controller;

import com.dcm.zoobox.place.model.AnimalBusi;
import com.dcm.zoobox.place.service.PlaceService;
import lombok.Setter;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@RestController
 class PlaceRestApiController {

    private final Logger logger= LoggerFactory.getLogger(this.getClass());

    @Setter(onMethod_ = @Autowired)
    private PlaceService placeService;

    /*
     * 동물 샵 조회해서 반환하기
     * */
    @RequestMapping(value="/html",method = RequestMethod.POST)
    public void getNameInfo() throws InterruptedException {

        //병원
        String Url = "https://www.animal.go.kr/front/awtis/shop/hospitalList.do?totalCount=5037&pageSize=500&menuNo=6000000002&&page=1";
        //장묘업
        String Url2 = "https://www.animal.go.kr/front/awtis/shop/undertaker1List.do?totalCount=57&pageSize=500&menuNo=6000000131&&page=1";
        //미용업
        String Url3 = "https://www.animal.go.kr/front/awtis/shop/salesList.do?totalCount=7982&pageSize=500&sWrkCd=F&menuNo=6000000130&&page=1";
        //운송업
        String Url4 = "https://www.animal.go.kr/front/awtis/shop/salesList.do.do?totalCount=785&pageSize=500&sWrkCd=G&menuNo=6000000129&&page=1";
        //위탁 관리업
        String Url5 = "https://www.animal.go.kr/front/awtis/shop/salesList.do?totalCount=4743&pageSize=500&sWrkCd=E&menuNo=6000000128&&page=1";
        //전시업
        String Url6 = "https://www.animal.go.kr/front/awtis/shop/salesList.do?totalCount=677&pageSize=500&sWrkCd=D&menuNo=6000000010&&page=1";
        //판매업
        String Url7 = "https://www.animal.go.kr/front/awtis/shop/salesList.do?totalCount=4132&pageSize=500&sWrkCd=A&menuNo=6000000009&&page=1";
        //수입업
        String Url8 = "https://www.animal.go.kr/front/awtis/shop/salesList.do?totalCount=122&pageSize=500&sWrkCd=B&menuNo=6000000005&&page=1";
        //생산업
        String Url9 = "https://www.animal.go.kr/front/awtis/shop/salesList.do?totalCount=2047&pageSize=500&sWrkCd=C&menuNo=6000000004&&page=1";

        List<String> urlList=new ArrayList<>();
        urlList.add(new String(Url));
        urlList.add(new String(Url2));
        urlList.add(new String(Url3));
        urlList.add(new String(Url4));
        urlList.add(new String(Url5));
        urlList.add(new String(Url6));
        urlList.add(new String(Url7));
        urlList.add(new String(Url8));
        urlList.add(new String(Url9));


        int to=0;
        int pa=0;
        int toNumber=0;
        int paNumber=500;
        int totalCount=0;
        int c=0;
        for( String li: urlList){


            System.out.println(to=li.indexOf("Count="));
            System.out.println(pa=li.indexOf("&pageSize="));

            System.out.println("toNumber:");
            System.out.println(toNumber= Integer.parseInt(li.substring((to+6),pa)));

            totalCount=(toNumber/paNumber)+1;
            int length=li.length();

            System.out.println("length: " + length);
            System.out.println("count:  " + totalCount);
            System.out.println("=========== End =============");

            c++;
            System.out.println(c+"번째 URL: "+li.toString());
            switch (c){
                case 1: saveInfo1(li,length,totalCount,"동물 병원");break;
                case 2: saveInfo(li,length,totalCount,"동물 장묘업");break;
                case 3: saveInfo(li,length,totalCount,"동물 미용업");break;
                case 4: saveInfo(li,length,totalCount,"동물 운송업");break;
                case 5: saveInfo(li,length,totalCount,"동물 위탁관리업");break;
                case 6: saveInfo(li,length,totalCount,"동물 전시업");break;
                case 7: saveInfo(li,length,totalCount,"동물 판매업");break;
                case 8: saveInfo(li,length,totalCount,"동물 수입업");break;
                case 9: saveInfo(li,length,totalCount,"동물 생산업");break;
                default: System.out.println("더 이상 없습니다."); break;
            }
        }
    }

    public void saveInfo(String li,int length,int totalCount,String name){
        int two=2;
        int tree=3;
        int four=4;
        eachfor(li,length, totalCount, name,two,tree,four);
    }
    public void saveInfo1(String li,int length,int totalCount,String name){
        int one=1;
        int two=2;
        int tree=3;
        eachfor(li,length,totalCount,name,one,two,tree);
    }

    public void eachfor(String li,int length,int totalCount,String name,int one,int two,int tree){
        AnimalBusi animalBusi = new AnimalBusi();
        ArrayList<AnimalBusi> list = new ArrayList<>();

        for(int i=1;i <= totalCount;i ++){
            String str=String.valueOf(i);
            StringBuffer sb=new StringBuffer(li.toString());
            sb.replace((length-1),length,str);

            System.out.println("url: "+sb.toString());

            Connection conn= Jsoup.connect(sb.toString()).timeout(5000);
            try{
                Document document=conn.get();
                Elements tds=document.getElementsByTag("tr");

                for(Element td: tds){

                    animalBusi.setWorkPlaceName(name);
                    animalBusi.setBusiName(td.child(one).text());
                    animalBusi.setBusiPhone(td.child(two).text());
                    animalBusi.setBusiAddress(td.child(tree).text());

                    System.out.println(animalBusi.toString());
                    list.add(new AnimalBusi(animalBusi.getWorkPlaceName(), animalBusi.getBusiName(), animalBusi.getBusiPhone(), animalBusi.getBusiAddress()));
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        placeService.save(list);
    }

}
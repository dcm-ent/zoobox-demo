package com.dcm.zoobox.business.service;

import com.dcm.zoobox.business.mapper.BusinessMapper;
import com.dcm.zoobox.business.model.Business;
import com.dcm.zoobox.file.controller.FileController;
import com.dcm.zoobox.file.model.AttachFile;
import com.dcm.zoobox.user.model.User;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnailator;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.*;

@Service
@Log4j
public class BusinessServiceImpl implements BusinessService {

    @Setter(onMethod_ =@Autowired)
    private BusinessMapper mapper;


	private static final String serviceKey="XlNVunWdX7nHPurouFfkPI1BREzio73ddq5aNscHWr3VUk267GRLsUyeVVkGdVhUgDqkHEpsAoVBF6V5Dk4%2F2w%3D%3D";
	private static final String searchUrl="https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey="+serviceKey;

	
    @Override
    public String searchNumber(String bno) throws IOException {
        int i=0;

        JSONObject body = new JSONObject();
        JSONArray bnoList = new JSONArray();
        String jsonStr;
        
        bnoList.add(bno);
        body.put("b_no", bnoList);
        jsonStr = body.toJSONString();
        
        System.out.println(jsonStr);
        
        URL url = new URL (searchUrl);
        HttpURLConnection con = (HttpURLConnection)url.openConnection();
        
        con.setRequestMethod("POST");
        con.setRequestProperty("Content-Type", "application/json; utf-8");
        con.setRequestProperty("Accept", "application/json");
        con.setDoOutput(true);
        
        try(OutputStream os = con.getOutputStream()) {
            byte[] input = jsonStr.getBytes("utf-8");
            os.write(input, 0, input.length);			
        }
        HashMap<String ,Object> resultMap= new HashMap<>();
        String list= "";
        String str="";
		try (BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"))) {
            StringBuilder response = new StringBuilder();
            String responseLine = null;
            while ((responseLine = br.readLine()) != null) {
                response.append(responseLine.trim());


            }
            System.out.println(response.toString());
            ObjectMapper mapper = new ObjectMapper();
            resultMap = mapper.readValue(response.toString(), HashMap.class);
            System.out.println("resultMap" + resultMap);
            str = (String) resultMap.getOrDefault("tax_type", "부가가치세 일반과세자");
            System.out.println("str" + str);


            return str;
        }

    }

    @Override
    public int buziEnllo(Business business,  MultipartFile[] file
    ) {
        System.out.println("여기"+business);
            uploadFile(file);
        System.out.println("코드네임 "+business.getCode_name());
        switch ( business.getCode_name()){
            case "미용": business.setCode_no("1"); break;
            case "호텔": business.setCode_no("3"); break;
            case "유치원":business.setCode_no("4"); break;
            case "병원":business.setCode_no("5"); break;
            case "식료품":business.setCode_no("6"); break;
            case "장난감":business.setCode_no("7"); break;
            case "스튜디오":business.setCode_no("8"); break;
            case "패션":business.setCode_no("9"); break;
            case "기타":business.setCode_no("10"); break;

        }
        System.out.println(business.getCode_no());




        int re = mapper.saveFile(file);

       int result= mapper.buziEnllo(business);
        System.out.println(result);
       return result;
    }

    public List<AttachFile> uploadFile(MultipartFile[] file){
        List<AttachFile> list=new ArrayList<>();
        String uploadFolder = "C:\\upload";
        String uploadFolderPath= getFolder();

        File uploadPath= new File(uploadFolder,getFolder());

        if(uploadPath.exists() == false){
            uploadPath.mkdirs();
        }
        // yyyy/MM/dd folder
        for(MultipartFile multipartFile : file){
            AttachFile attachFile=new AttachFile();
            System.out.println(attachFile);
            String uploadFileName= multipartFile.getOriginalFilename();

            uploadFileName=uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);

            attachFile.setRealName(uploadFileName);
            UUID uuid=UUID.randomUUID();

            uploadFileName=uuid.toString()+"_"+uploadFileName;

            try{
                File saveFile= new File(uploadPath, uploadFileName);
                multipartFile.transferTo(saveFile);
                attachFile.setSaveName(uuid.toString());
                attachFile.setPath(uploadFolderPath.toString());
                Long fileSize=saveFile.length();
                attachFile.setSize(fileSize);

                if (checkImageType(saveFile)){
                    attachFile.setType("Image");

                    FileOutputStream thumbnail=new FileOutputStream(
                            new File(uploadPath,
                            "s_"+uploadFileName));
                    Thumbnailator.createThumbnail(multipartFile.getInputStream(),thumbnail,100,100);
                    thumbnail.close();
                }
                System.out.println("attachFile: "+attachFile);
                list.add(attachFile);



            } catch (IOException e) {
                e.printStackTrace();
            }


        }
        return list;

    }

    @Override
    public int update(Business business) {
       int result= mapper.update(business);
        return result;
    }

    @Override
    public Business getInfo(User userId) {
        Business business=mapper.getInfo(userId);
        return business;
    }




    public static String  getFolder(){
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        Date date= new Date();
        String str=sdf.format(date);
        return str.replace("-",File.separator);
    }
    public static boolean checkImageType(File file){
        try{
            String contentType= Files.probeContentType(file.toPath());
            return  contentType.startsWith("image");
        }catch (IOException e){
            e.printStackTrace();
        }
        return false;
    }


}

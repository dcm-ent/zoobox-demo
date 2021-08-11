package com.dcm.zoobox.file.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.dcm.zoobox.file.model.AttachFile;

import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnailator;

@Controller
@Log4j
public class UploadController {

	@PostMapping(value = "fileUpload", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<AttachFile>> fileUpload(MultipartFile[] uploadFile) {

		List<AttachFile> list = new ArrayList<>();

		String uploadFolder = "C:\\upload";
		String uploadFolderPath = getFolder();
		
		File uploadPath = new File(uploadFolder,getFolder());
		
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		//make yyyy/MM/dd folder
		for(MultipartFile multipartFile : uploadFile) {
			
			AttachFile attachFile = new AttachFile();
			
			String uploadFileName = multipartFile.getOriginalFilename();
			
			//ie has file path
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
			
			attachFile.setRealName(uploadFileName);
			UUID uuid = UUID.randomUUID();
			
			uploadFileName = uuid.toString() +"_"+uploadFileName;
			
			try {
				File saveFile = new File(uploadPath, uploadFileName);
				multipartFile.transferTo(saveFile);
				attachFile.setSaveName(uuid.toString());
				attachFile.setPath(uploadFolderPath.toString());
				Long fileSize = saveFile.length();
				attachFile.setSize(fileSize);
				
				if(checkImageType(saveFile)) {
					
					attachFile.setType("Image");
					
					FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath,"s_"+uploadFileName));
					
					Thumbnailator.createThumbnail(multipartFile.getInputStream(),thumbnail,100,100);
					thumbnail.close();
				}
				list.add(attachFile);
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return new ResponseEntity<>(list,HttpStatus.OK);

	}

	private String getFolder() {

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-", File.separator);
	}

	private boolean checkImageType(File file) {
		try {
			String contentType = Files.probeContentType(file.toPath());
			return contentType.startsWith("image");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return false;
	}
}

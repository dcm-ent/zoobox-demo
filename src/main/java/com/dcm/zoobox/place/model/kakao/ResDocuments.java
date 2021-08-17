package com.dcm.zoobox.place.model.kakao;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ResDocuments {

    private String id;//장소아이디
    private String place_name;//장소명
    private String category_name;//카테고리 이름
    private String category_group_code;//중요 카테고리만 그룹핑한 카테고리 그룹 코드
    private String category_group_name; //중요 카테고리만 그룹핑한 카테고리 그룹명
    private String phone;//전화번호
    private String address_name;//전체 지번주소
    private String road_address_name;//전체 도로명 주소
    private String x; //좌표값
    private String y; //y좌표값 경위도인 경우 latitude(위도)
    private String place_url;//장소 상세페이지 url
    private String distance; //중시 좌표까지의 거리(단 x,y파라미터를 준경우에만 존재) 단위 meter


}
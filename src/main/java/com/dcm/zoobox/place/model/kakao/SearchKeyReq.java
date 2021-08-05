package com.dcm.zoobox.place.model.kakao;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.util.LinkedMultiValueMap;

import java.util.Map;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class SearchKeyReq {

   // GET /v2/local/search/keyword.{format} HTTP/1.1
   // Host: dapi.kakao.com
   // Authorization: KakaoAK {REST_API_KEY}

    //meta
    private String query;//검색을 원하는 질의어
    private String category_group_code;//카테고리 그룹 코드 결과를 카테고리로 필터링을 원하는 경우사용
    private String x;//중심 좌쿄의 x값 혹은 longitude 특정지역을 중심으로 검색하려고 할경우 radisu와 함께 사용가능
    private String y;//중심 좌표의 y값혹은 latitude 특정지역을 중심으로 검색하려고 할경우 radius와 함께 사용가능
    private Integer radius; //중심 좌표부터의 변경거리 특정지역을 중심으로 검색할경우 중심좌표로 쓰일 x,y와 함께 사용 단위 ,0~20000사이의 값
    private String rect;//사각형 범위내에서 제한 검색을 위한 좌표, 지도화면 내 검색시등 제한검색에서 사용가능 좌측 X 좌표,좌측 Y 좌표, 우측 X 좌표, 우측 Y 좌표 형식
    private Integer page;//결과 페이지 번호
    private Integer size=15; //한페이지에서 보여질 문서의 갯수 기본값 15
    private String sort; // 결과 정렬 순서 , distance 정렬을 원할때는 기준좌표로 쓰일 x,y와 함께 사용 distance 또는 accuracy (기본값: accuracy)

    public Map<String,String> category(){
        LinkedMultiValueMap map=new LinkedMultiValueMap<String,String>();
        map.add("query",query);
        map.add("category_group_code",category_group_code);
        map.add("x",x);
        map.add("y",y);
        map.add("radius",radius);
        map.add("rect",rect);
        map.add("page",page);
        map.add("size",size);
        map.add("sort",sort);


        return map;
    }
 }

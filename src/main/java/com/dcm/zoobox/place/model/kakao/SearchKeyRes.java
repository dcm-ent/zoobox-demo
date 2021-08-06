package com.dcm.zoobox.place.model.kakao;


import lombok.AllArgsConstructor;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SearchKeyRes {


   /*
   curl -v -X GET "https://dapi.kakao.com/v2/local/search/keyword.json?y=37.514322572335935&x=127.06283102249932&radius=20000" \
            --data-urlencode "query=카카오프렌즈" \
            -H "Authorization: KakaoAK {REST_API_KEY}"

            */

    private String total_count;//검색어에 검색된 문서수
    private Integer pageable_count;//total_count중 노출 가능 문서수 최대값 45
    private boolean is_end;//마지막 페이지인지 여부 값이 false면 page를 증가시켜 다음 페이지를 요청
    private List<RegionInfo> same_name;// 질의어의 지역맛 키워드 분석정보

    @Data
    @AllArgsConstructor
    @NoArgsConstructor
    public static class RegionInfo{
        private String[] region;//질의어에서 인식된 지역의리스트 중앙로맛집에서 중앙로에 대항하는 지역리스트
        private String keyword;//질의어에서 지역정보를 제외한 키워드 --'중앙로 맛집' 에서 맛집
        private String selected_region;//인식된 지역 리스트중 현재 검색에 사용된 지역정보

    }

}
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
   <link rel="stylesheet" href="<c:url value='/resources/css/comm.css' />"/>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=acd386cc1841a251291253da3ad9e396"></script>
    <!-- services와 clusterer, drawing 라이브러리 불러오기 -->
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>
    <title>ZOOBOX</title>
</head>
<body>
<header>
    <div class="header_box">
        <figure><img src="/zoobox/resources/img/logo.png" alt=""/></figure>
        <ul class="menu">
            <li>홈</li>
            <li>플레이스</li>
            <li>커뮤니티</li>
            <li>에듀</li>
            <li>스토어</li>
        </ul>
        <input type="search" placeholder="Search"/>
        <ul class="alarm">
            <li><img src="/zoobox/resources/img/icon1.png" alt=""/></li>
            <li><img src="/zoobox/resources/img/icon2.png" alt=""/></li>
            <li><img src="/zoobox/resources/img/icon3.png" alt=""/></li>
            <li><img src="/zoobox/resources/img/icon4.png" alt=""/></li>
        </ul>
    </div>
</header>
<div class="main_bg">
    <div></div>
    <div class="main_bg_t">
        <h2>All About Pet</h2>
        <h3>동물의 관한 모든 장소, 쥬박스에 다 모였다.</h3>
    </div>
</div>
<div class="main_contents">
    <div class="facility">
        <h3>쥬박스에서 현재 찾아볼 수 있는 업체</h3>
        <div>
            <p>
                병원 4,057건 | 호텔&유치원 105건 | 기타시설 8,356건 | 펫서비스
                8,356건
            </p>
        </div>
    </div>
    <div class="area">
        <h3>지역별 검색</h3>
        <h3>키워드  검색</h3>
        <div>
            <input type="text" id="query" placeholder="검색하실 키워드 입력해주세요"/>
            <button type="button" id="search_Place" onclick="search_Place();">검색</button>
        </div>

        <div class="area_example">
            <button onclick="search_ani_hopital">동물병원</button>
            <button>반려동물 분양</button>
            <button>반려동물 호텔</button>
            <button>용품점</button>
            <button>반려동물 미용</button>
            <button>훈련/유치원</button>
            <button>산책/공원</button>
            <button>카페/음식점</button>
            <button>펜션</button>
            <button>스튜디오</button>
            <button>장례</button>
        </div>
        <div class="area_map">
            <div id="map" style="width:500px;height:400px;"></div>
            <div>
                <div>
                    <h4>서울</h4>
                    <button>
                        <img src="/zoobox/resources/img/plus.png" alt=""/>
                    </button>
                </div>
                <div class="area_data">
                    <div>
                        <h6>유림동물안과병원</h6>
                        <p>평일 09:00 ~ 21:00</p>
                        <p>서초구</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="new_place">
        <div>
            <h3>신규 등록 장소</h3>
            <ul>
                <li>
                    <img src="/zoobox/resources/img/new_place1_1.png" alt=""/>
                    <p>서울특별시 강북구</p>
                    <h6>카페 달세뇨</h6>
                    <p>
                        맛있는 커피와 깨끗한 인테리어, 인스타 감성 예쁜 카페입니다.
                    </p>
                </li>
            </ul>
        </div>
        <div>
            <h3>서울권 추천 장소! 이런 장소는 어떠세요?</h3>
            <ul>
                <li>
                    <img src="/zoobox/resources/img/new_place2_1.png" alt=""/>
                    <p>서울특별시 서대문구</p>
                    <h6>카페 드 에덴</h6>
                    <p>에덴은 여러분의 반려견들을 언제나 환영합니다.</p>
                </li>
            </ul>
        </div>
    </div>
    <div class="banner">
        <img src="/zoobox/resources/img/banner.png" alt=""/>
    </div>
    <div class="tips">
        <div></div>
    </div>
    <div class="review"></div>
</div>
</div>
<footer></footer>
</body>

<script>
    //다음 지도 를 뛰우는 코드 작성
    var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
    var options = { //지도를 생성할 때 필요한 기본 옵션 center는 지도를 생성하는데 반드시 필요함
        center: new kakao.maps.LatLng(33.450701, 126.570667), //생성인자는 위도 (latitude),경도(longitude)순으로 넣어야함
        //지도의 중심좌표.center에 할당할 값은 Lating클래스를 사용하여 생성
        level: 3 //지도의 레벨(확대, 축소 정도)
    };
    var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴


    //키워드로 검색

    function search_Place(){
        const searchKeyword=$("#query").val();
        alert("키워드:  "+searchKeyword);
        $.ajax({
            type:'get',
            url:'${path}/place/serachPlace',
            data:{"query":searchKeyword},
            success:function(data){
                alert("햇다")
            }
        })
    };
</script>
</html>

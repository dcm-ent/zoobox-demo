<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
	<%@ include file="/WEB-INF/views/common/head.jsp" %>

    <title>ZOOBOX</title>
  </head>
  <body>
	
     <header>
     
     	<jsp:include page="/header"></jsp:include>
    </header> 
	
    <div class="main_bg">
      <div></div>
      <div class="main_bg_t">
        <h2>All About Pet</h2>
        <h3>동물의 관한 모든 장소, 쥬박스에 다 모였다.</h3>
      </div>
    </div>
    <div class="main_contents">
      <div class="left_content">
        <figure><img src="<c:url value='/resources/img/side_menu.png' />" alt="" /></figure>
        <button>
          <img src="<c:url value='/resources/img/side_menu_bt.png' />" alt="" />
          <p>전체</p>
        </button>
        <button>
          <img src="<c:url value='/resources/img/side_menu_dog.png' />" alt="" />
          <p>강아지</p>
        </button>
        <button>
          <img src="<c:url value='/resources/img/side_menu_cat.png' />" alt="" />
          <p>고양이</p>
        </button>
        <button>
          <img src="<c:url value='/resources/img/side_menu_etc.png' />" alt="" />
          <p>기타동물</p>
        </button>
        <button>
          <img src="<c:url value='/resources/img/side_menu_event.png' />" alt="" />
          <p>이벤트</p>
        </button>
        <button>
          <img src="<c:url value='/resources/img/side_menu_notice.png' />" alt="" />
          <p>공지사항</p>
        </button>
        <button>
          <img src="<c:url value='/resources/img/side_menu_setting.png' />" alt="" />
          <p>설정</p>
        </button>
      </div>
      <div class="right_content">
        <div class="place">
          <div class="hot">
            <h3>추천 핫 플레이스</h3>
            <ul>
              <li>
                <figure>
                  <img src="<c:url value='/resources/img/place1.png' />" alt="" />
                </figure>
                <p>경기도 이천시</p>
                <h6>시몬스 테라스점</h6>
                <p>
                  시몬스가 제안하는 라이프스타일을 만날 수 있는 플래그십
                  스토어입니다.
                </p>
              </li>
              <li>
                <figure>
                  <img src="<c:url value='/resources/img/place2.png' />" alt="" />
                </figure>
                <p>경기도 포천시</p>
                <h6>달빛 애견글램핑</h6>
                <p>
                  포천달빛 글램핑은 계곡과 개울을 따라 캠핑 사이트를 구성하여
                  일상의 스트레스를 날리세요
                </p>
              </li>
              <li>
                <figure>
                  <img src="<c:url value='/resources/img/place3.png' />" alt="" />
                </figure>
                <p>경기도 여주시</p>
                <h6>플러피펍</h6>
                <p>애견동반 카페 겸 운동장입니다. 월 - 화는 12:00 - 19:00,</p>
              </li>
            </ul>
          </div>
          <div class="inquiry">
            <h3>금주 최다 조회</h3>
            <div class="most_view">
              <div>
                <h5>래플레즈 동물병원</h5>
                <p>경기도 구리시</p>
              </div>
              <img src="<c:url value='/resources/img/star.png' />" alt="" />
              <h6>5.0</h6>
            </div>
          </div>
        </div>
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
          <div class="area_example">
            <button>동물병원</button>
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
            <div></div>
            <div>
              <div>
                <h4>서울</h4>
                <button>
                  <img src="<c:url value='/resources/img/plus.png' />" alt="" />
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
                <img src="<c:url value='/resources/img/new_place1_1.png' />" alt="" />
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
                <img src="<c:url value='/resources/img/new_place2_1.png' />" alt="" />
                <p>서울특별시 서대문구</p>
                <h6>카페 드 에덴</h6>
                <p>에덴은 여러분의 반려견들을 언제나 환영합니다.</p>
              </li>
            </ul>
          </div>
        </div>
        <div class="banner">
         <img src="<c:url value='/resources/img/banner.png' />" alt="" />
        </div>
        <div class="tips">
          <div></div>
        </div>
        <div class="review"></div>
      </div>
    </div>
    
    <jsp:include page="/footer"></jsp:include>
  </body>
</html>
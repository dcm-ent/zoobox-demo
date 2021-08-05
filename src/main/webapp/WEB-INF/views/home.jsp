<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="<c:url value='/resources/dist/css/comm.css' />" />
    <title>ZOOBOX</title>
  </head>
  <body>
    <header>
      <div class="header_box">
        <figure><img src="/zoobox/resources/img/logo.png" alt="" /></figure>
        <ul class="menu">
          <li>홈</li>
          <li><a src="<c:"플레이스</li>
          <li>커뮤니티</li>
          <li>에듀</li>
          <li>스토어</li>
        </ul>
        <input type="search" placeholder="Search" />
        <ul class="alarm">
          <li><img src="/zoobox/resources/img/icon1.png" alt="" /></li>
          <li><img src="/zoobox/resources/img/icon2.png" alt="" /></li>
          <li><img src="/zoobox/resources/img/icon3.png" alt="" /></li>
          <li><img src="/zoobox/resources/img/icon4.png" alt="" /></li>
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
                  <img src="/zoobox/resources/img/plus.png" alt="" />
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
                <img src="/zoobox/resources/img/new_place1_1.png" alt="" />
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
                <img src="/zoobox/resources/img/new_place2_1.png" alt="" />
                <p>서울특별시 서대문구</p>
                <h6>카페 드 에덴</h6>
                <p>에덴은 여러분의 반려견들을 언제나 환영합니다.</p>
              </li>
            </ul>
          </div>
        </div>
        <div class="banner">
          <img src="/zoobox/resources/img/banner.png" alt="" />
        </div>
        <div class="tips">
          <div></div>
        </div>
        <div class="review"></div>
      </div>
    </div>
    <footer></footer>
  </body>
</html>

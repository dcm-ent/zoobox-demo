<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/zoobox/resources/dist/css/comm.css" />
    <title>ZOOBOX</title>
  </head>
  <body>
    <header>
      <div class="header_box">
        <figure><img src="/zoobox/resources/img/logo.png" alt="" /></figure>
        <ul class="menu">
          <li>홈</li>
          <li>플레이스</li>
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
      <div class="left_content">
        <figure><img src="/zoobox/resources/img/side_menu.png" alt="" /></figure>
        <button>
          <img src="/zoobox/resources/img/side_menu_bt.png" alt="" />
          <p>전체</p>
        </button>
        <button>
          <img src="/zoobox/resources/img/side_menu_dog.png" alt="" />
          <p>강아지</p>
        </button>
        <button>
          <img src="/zoobox/resources/img/side_menu_cat.png" alt="" />
          <p>고양이</p>
        </button>
        <button>
          <img src="/zoobox/resources/img/side_menu_etc.png" alt="" />
          <p>기타동물</p>
        </button>
        <button>
          <img src="/zoobox/resources/img/side_menu_event.png" alt="" />
          <p>이벤트</p>
        </button>
        <button>
          <img src="/zoobox/resources/img/side_menu_notice.png" alt="" />
          <p>공지사항</p>
        </button>
        <button>
          <img src="/zoobox/resources/img/side_menu_setting.png" alt="" />
          <p>설정</p>
        </button>
      </div>
      <div class="right_content">
        <div class="place">
          <div class="hot">
            <h3>추천 핫 플레이스</h3>
            <ul>
              <li>
                <figure><img src="/zoobox/resources/img/place1.png" alt="" /></figure>
                <p>경기도 이천시</p>
                <h6>시몬스 테라스점</h6>
                <p>
                  시몬스가 제안하는 라이프스타일을 만날 수 있는 플래그십
                  스토어입니다.
                </p>
              </li>
              <li>
                <figure><img src="/zoobox/resources/img/place2.png" alt="" /></figure>
                <p>경기도 포천시</p>
                <h6>달빛 애견글램핑</h6>
                <p>
                  포천달빛 글램핑은 계곡과 개울을 따라 캠핑 사이트를 구성하여
                  일상의 스트레스를 날리세요
                </p>
              </li>
              <li>
                <figure><img src="/zoobox/resources/img/place3.png" alt="" /></figure>
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
              <img src="/zoobox/resources/img/star.png" alt="" />
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
            <div><img src="/zoobox/resources/img/area.png" alt="" /></div>
            <div>
              <div>
                <h4>서울</h4>
                <button><img src="/zoobox/resources/img/plus.png" alt="" /></button>
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
        <div class="slide_bg"></div>
        <div class="banner"></div>
        <div class="tips"></div>
        <div class="review"></div>
      </div>
    </div>
    <footer></footer>
  </body>
</html>

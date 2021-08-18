<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %> <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <%@ include file="/WEB-INF/views/common/head.jsp" %>
    <title>ZOOBOX</title>
  </head>
  <body>
    <header>
      <jsp:include page="/header"></jsp:include>
    </header>
    <div class="main_bg">
      <div class="main_bg_t">
        <h2>All About Pet</h2>
        <h3>동물의 관한 모든 장소, 쥬박스에 다 모였다.</h3>
      </div>
    </div>
    <div class="white_bg"></div>
    <div class="join_bg"></div>
    <div class="join">
      <div>
        <h2>반갑습니다! <br />회원 가입을 도와드릴게요.</h2>
        <div class="email">
          <p>이메일(ID)</p>
          <div>
            <input type="text" placeholder="이메일 주소를 입력하세요." />
            <button>인증하기</button>
          </div>
          <div>
            <input type="text" placeholder="인증번호 코드를 입력하세요." />
            <button>확인</button>
          </div>
        </div>
        <div class="password">
          <p>비밀번호</p>
          <input type="text" placeholder="아래의 조합으로 입력해주세요." />
          <ul>
            <li>
              <img src="/zoobox/resources/img/icon_check_off.png" alt="" />
              <p>영문</p>
            </li>
            <li>
              <img src="/zoobox/resources/img/icon_check_off.png" alt="" />
              <p>숫자</p>
            </li>
            <li>
              <img src="/zoobox/resources/img/icon_check_off.png" alt="" />
              <p>특수문자</p>
            </li>
            <li>
              <img src="/zoobox/resources/img/icon_check_off.png" alt="" />
              <p>10~25자리</p>
            </li>
          </ul>
        </div>
      </div>
      <div class="password">
        <p>비밀번호 확인</p>
        <input type="text" placeholder="비밀번호를 다시 입력해주세요" />
      </div>
      <div class="birth">
        <p>생년월일</p>
        <input type="text" placeholder="YYYY-MM-DD" />
      </div>
      <div class="birth">
        <p>휴대전화</p>
        <input type="text" placeholder="000-0000-0000" />
      </div>
      <div class="adress">
        <p>주소</p>
        <div>
          <input
            type="text"
            id="sample4_postcode"
            placeholder="우편번호"
            name="zipcode"
          />
          <button onclick="sample4_execDaumPostcode()">주소검색</button>
        </div>
        <input
          type="text"
          id="sample4_roadAddress"
          placeholder="도로명주소"
          name="roadAddress"
        />
        <input
          type="hidden"
          id="sample4_jibunAddress"
          placeholder="지번주소"
          name="address"
        />
        <input
          type="text"
          id="sample4_detailAddress"
          placeholder="상세주소를 입력해 주세요."
          name="detailAddress"
        />
        <span id="guide" style="color: #999; display: none"></span>
        <input type="hidden" id="sample4_extraAddress" placeholder="참고항목" />
      </div>
      <div class="gender">
        <p>성별</p>
        <div>
          <input type="radio" name="gender" value="female" />
          <label for="female">여자</label>
          <input type="radio" name="gender" value="male" />
          <label for="male">남자</label>
        </div>
      </div>
      <div class="birth">
        <p>닉네임</p>
        <input type="text" placeholder="닉네임을 입력해 주세요." />
      </div>
      <div class="completion">
        <button>취소하기</button>
        <button>등록하기</button>
      </div>
    </div>
    <jsp:include page="/footer"></jsp:include>
    <!-- jQuery -->
    <script src="/zoobox/resources/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/zoobox/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/zoobox/resources/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="/zoobox/resources/dist/js/sb-admin-2.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

    <script>
      //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
      function sample4_execDaumPostcode() {
        new daum.Postcode({
          oncomplete: function (data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ""; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if (data.bname !== "" && /[동|로|가]$/g.test(data.bname)) {
              extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if (data.buildingName !== "" && data.apartment === "Y") {
              extraRoadAddr +=
                extraRoadAddr !== ""
                  ? ", " + data.buildingName
                  : data.buildingName;
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if (extraRoadAddr !== "") {
              extraRoadAddr = " (" + extraRoadAddr + ")";
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById("sample4_postcode").value = data.zonecode;
            document.getElementById("sample4_roadAddress").value = roadAddr;
            document.getElementById("sample4_jibunAddress").value =
              data.jibunAddress;

            // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
            if (roadAddr !== "") {
              document.getElementById("sample4_extraAddress").value =
                extraRoadAddr;
            } else {
              document.getElementById("sample4_extraAddress").value = "";
            }

            var guideTextBox = document.getElementById("guide");
            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if (data.autoRoadAddress) {
              var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
              guideTextBox.innerHTML =
                "(예상 도로명 주소 : " + expRoadAddr + ")";
              guideTextBox.style.display = "block";
            } else if (data.autoJibunAddress) {
              var expJibunAddr = data.autoJibunAddress;
              guideTextBox.innerHTML =
                "(예상 지번 주소 : " + expJibunAddr + ")";
              guideTextBox.style.display = "block";
            } else {
              guideTextBox.innerHTML = "";
              guideTextBox.style.display = "none";
            }
          },
        }).open();
      }
    </script>
  </body>
</html>

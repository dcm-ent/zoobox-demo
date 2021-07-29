<%--
  Created by IntelliJ IDEA.
  User: Window-10
  Date: 2021-07-29
  Time: 오후 12:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ page session="false" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script type="text/javascript" src="datepair.js"></script>
    <script type="text/javascript" src="jquery.datepair.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

    <title>Document</title>
</head>
<body>
<div class="business-container">
    <div class="business-container-box">
        <div>
            <div class="businessName_description" >사업자 번호 :</div>
            <input type="text" id="businessNumber" placeholder="예) 111-456-6666"/>
            <button class="business_Check_Btn" onclick="search_business_number();">확인</button>

        </div>

        <div class="business-container-box">
            <div class="businessName_description" >상호명</div>
            <input type="text" id="businessName" placeholder="동물 병원"/>
            <button class="businessNameCheck">중복확인</button>
        </div>
        <div class="business-container-box">
            <div class="businessName_description" >사업자 연락처: </div>
            <input type="text" id="businessPhone" placeholder="02-000-0000"/>

        </div>

        <div class="business-container-box">
            <div class="businessName_description" >업종 : </div>
            <select name="업종" id="kindOfWork" >
                <option value="미용">미용</option>
                <option value="호텔">호텔</option>
                <option value="유치원">유치원</option>
                <option value="병원">병원</option>
                <option value="식료품">식료품</option>
                <option value="장난감">장난감</option>
                <option value="스튜디오">장난감</option>
                <option value="패션">패션</option>
                <option value="기타">기타</option>


            </select>

        </div>

        <div class="business-container-box">
            <div class="businessName_description" >주소 :</div>
            <input type="text" id="businessAddress" placeholder="서울시 "/>
            <input type="button" onclick="businessAddressCheck()" value="우편번호찾기">검색</input>
        </div>
        <div class="business-container-box">
            <div class="businessName_description" >상세 주소 : </div>
            <input type="text" id="detailAddress" placeholder="강남구 강남역"/>
            <div class="businessName_description" >우편번호 </div>
            <input type="text" id="postCode" placeholder="01234"/>
            <input type="text" id="extraAdress" placeholder="참고사항"/>

        </div>

        <div class="business-container-box-time">
            <div class="businessName_description" >운영시간 : </div>
            <input type="text" id="time start" placeholder="시작시간"/>
            <input type="text" id="time end" placeholder="종료시간"/>


        </div>
        <div class="business-container-box">
            <div class="businessName_description" >상세 설명 : </div>
            <input type="text" id="detailContent" placeholder=""/>

        </div>
        <div class="business-container-box">
            <div class="businessName_description" >첨부파일 : </div>
            <input type="file" id="img-File" placeholder="파일"/>



        </div>
        <div>

            <button class="business-enllo-Btn">등록</button>
            <button class="business-enllo-Btn">취소</button>

        </div>


    </div>

</div>
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    $('.business-container-box-time .time').timepicker({
        'showDuration': true,
        'timeFormat': 'h:mm a'
    });

    function businessAddressCheck() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;

                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postCode').value = data.zonecode;
                document.getElementById("businessAddress").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detailAddress").focus();
            }
        }).open();
        // 국세청 사업자 번호 조회
        function search_business_number(){
            const businessNumber=document.getElementById("businessNumber").value;

        }


    }

    function search_business_number(){
        const number= $('#businessNumber').val();
        $.ajax({
            type:"POST",
            url:'${path}/rest/validate',
            contentType:"application/json",
            data:{number:number},
            success:function(data,status,xhr){
                const dataHeader=data.result.response.header.resultCode;
                if(dataHeader == "00"){
                    alert("여기있다.")
                }
        }

        })
    }
</script>
</html>
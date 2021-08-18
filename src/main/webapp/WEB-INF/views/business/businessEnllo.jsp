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
<%

    request.setCharacterEncoding("UTF-8");

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>


    <title>Document</title>
</head>
<body>
<div class="business-container">

    <form action="${path}/busi/enllo" name="buzi_enllo" method="post" enctype="multipart/form-data">


    <div class="business-container-box">
        <div>
            <div class="businessName_description" >사업자 번호 :</div>
            <input type="text" name="busi_Number" id="busi_Number" placeholder="예) 111-456-6666"/>
            <button class="business_Check_Btn" onclick="search_business_number();">확인</button>

        </div>

        <div class="business-container-box">
            <div class="businessName_description" >상호명</div>
            <input type="text" name="busi_name" id="busi_name" placeholder="동물 병원"/>
            <button class="businessNameCheck">중복확인</button>
        </div>
        <div class="business-container-box">
            <div class="businessName_description" >대표자 이름:</div>
            <input type="text" name="busi_ownerName" id="busi_ownerName" placeholder="대표자 이름"/>

        </div>
        <div class="business-container-box">
            <div class="businessName_description" >사업자 연락처: </div>
            <input type="text" name="busi_Phone"  id="busi_Phone" placeholder="02-000-0000"/>

        </div>

        <div class="business-container-box">
            <div class="businessName_description" >업종 : </div>
            <select name="code_name" id="code_name" >
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
            <input type="button"  onclick="businessAddressCheck()" value="우편번호찾기">검색</input>
        </div>
        <div class="business-container-box">
            <div class="businessName_description" >상세 주소 : </div>
            <input type="text" name="busi_roadAddress" id="busi_roadAddress" placeholder="도로명 주소"/>
            <input type="text" name="busi_Address" id="busi_Address" placeholder="지번주소 "/>
            <div class="businessName_description" >우편번호 </div>
            <span id="guide" style="color:#999;display:none"></span>
            <input type="text" name="postCode" id="postCode" placeholder="01234"/>
            <input type="text" name="extraAdress" id="extraAdress" placeholder="상세주소"/>

        </div>

        <div class="business-container-box-time">
            <div class="businessName_description" >운영시간 : </div>
            <input type="text" name="timestart" class="time start" id="timestart" placeholder="시작시간"/>
            <input type="text" name="timeend" class="time end" id="timeend" placeholder="종료시간"/>


        </div>
        <div class="business-container-box">
            <div class="businessName_description" >상세 설명 : </div>
            <input type="text" name="content" id="content" placeholder=""/>

        </div>
        <div class="business-container-box">
            <div class="businessName_description" >첨부파일 : </div>
            <input type="file" name="file" id="img-File" placeholder="파일"/>

        </div>
        <div>

            <button type="submit" class="business-enllo-Btn">등록</button>
            <button type="cancle" class="business-enllo-Btn">취소</button>

        </div>


    </div>
    </form>
</div>
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    $(document).ready(function(){
        $('.business-container-box-time .time').timepicker({
            'showDuration': true,
            'timeFormat': 'HH:mm '
        });
    })


    function businessAddressCheck() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postCode').value = data.zonecode;
                document.getElementById("busi_roadAddress").value = roadAddr;
                document.getElementById("busi_Address").value = data.jibunAddress;

                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("extraAdress").value = extraRoadAddr;
                } else {
                    document.getElementById("extraAdress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }

//국세청
    function search_business_number(){
        const number= $('#busi_Number').val();
        alert(number);
        $.ajax({
            type:"post",
            url:'${path}/rest/validate',
         //   contentType :"application/json",
            data:{"number":number},
           // dataType:"json",
            success:function(msg){
                    alert(msg);
        }
        })
    }
</script>
</html>
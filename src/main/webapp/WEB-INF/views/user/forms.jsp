<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %> <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>zoobox-JoinForm</title>

    <!-- Bootstrap Core CSS -->
    <link
      href="/zoobox/resources/vendor/bootstrap/css/bootstrap.min.css"
      rel="stylesheet"
    />

    <!-- MetisMenu CSS -->
    <link
      href="/zoobox/resources/vendor/metisMenu/metisMenu.min.css"
      rel="stylesheet"
    />

    <!-- Custom CSS -->
    <link href="/zoobox/resources/dist/css/sb-admin-2.css" rel="stylesheet" />

    <!-- Custom Fonts -->
    <link
      href="/zoobox/resources/vendor/font-awesome/css/font-awesome.min.css"
      rel="stylesheet"
      type="text/css"
    />
  </head>
  <style>
    #flex {
      display: flex;
    }
    #resetButton {
      float: right;
    }
  </style>
  <body>
    <div id="wrapper">
      <!-- Navigation -->
      <nav
        class="navbar navbar-default navbar-static-top"
        role="navigation"
        style="margin-bottom: 0"
      >
        <div class="navbar-header">
          <button
            type="button"
            class="navbar-toggle"
            data-toggle="collapse"
            data-target=".navbar-collapse"
          >
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">zoobox-test</a>
        </div>
        <!-- /.navbar-header -->

        <ul class="nav navbar-top-links navbar-right">
          <!-- /.dropdown -->
          <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
              <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-user">
              <li>
                <a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
              </li>
              <li class="divider"></li>
              <li>
                <a href="login.html"
                  ><i class="fa fa-sign-out fa-fw"></i> Logout</a
                >
              </li>
            </ul>
            <!-- /.dropdown-user -->
          </li>
          <!-- /.dropdown -->
        </ul>
        <!-- /.navbar-top-links -->
      </nav>

      <div id="page-wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h1 class="page-header">회원가입</h1>
          </div>
          <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
          <div class="col-lg-12">
            <div class="panel panel-default">
              <div class="panel-heading">회원가입 양식</div>
              <div class="panel-body">
                <div class="row">
                  <div class="col-lg-6">
                    <form role="form">
                      <label>이메일</label>
                      <div class="form-group" id="flex">
                        <input
                          class="form-control"
                          id="emailInput"
                          placeholder="이메일을 입력해주세요"
                          name="email"
                          maxlength="64"
                        />
                        <span class="input-group-addon">@</span>
                        <select class="form-control" id="emailInput2">
                          <option>naver.com</option>
                          <option>gmail.com</option>
                          <option>gmail.com</option>
                        </select>
                        <button
                          class="btn btn-default"
                          type="button"
                          id="emailBtn"
                        >
                          중복확인
                        </button>
                      </div>
                      <div class="form-group" id="emailConfirmDiv">
                        <label>이메일인증</label>
                        <input
                          class="form-control"
                          placeholder="인증번호를 입력해주세요"
                          id="emailConfirmInput"
                          name="emailConfirmInput"
                          maxlength="6"
                        />
                        <button
                          class="btn btn-default"
                          type="button"
                          id="emailSendBtn"
                        >
                          인증번호 발송
                        </button>
                        <button
                          class="btn btn-default"
                          type="button"
                          id="emailConfirmBtn"
                        >
                          인증번호 확인
                        </button>
                        <button
                          class="btn btn-default"
                          type="button"
                          id="emailResendBtn"
                        >
                          재전송
                        </button>
                        <div id="viewTimer"></div>
                      </div>
                      <div class="form-group">
                        <label>패스워드</label>
                        <input
                          type="password"
                          id="passwordInput1"
                          class="form-control"
                          placeholder="패스워드를 입력해주세요(10자이상,25자이하,특수문자포함)"
                          maxlength="25"
                        />
                        <div id="passwordNotice"></div>
                      </div>
                      <div class="form-group">
                        <label>패스워드 확인</label>
                        <input
                          type="password"
                          id="passwordInput2"
                          class="form-control"
                          placeholder="패스워드를 확인해주세요"
                          maxlength="25"
                        />
                        <div id="passwordNotice2"></div>
                      </div>
                      <label>이름</label>
                      <div class="form-group">
                        <input
                          id="nameInput"
                          class="form-control"
                          placeholder="이름을 입력해주세요"
                          maxlength="10"
                        />
                        <div id="nameCheck"></div>
                      </div>
                      <label>닉네임</label>
                      <div class="form-group" id="flex">
                        <input
                          class="form-control"
                          id="nicknameInput"
                          placeholder="닉네임을 입력해주세요"
                          maxlength="25"
                        />
                        <button
                          class="btn btn-default"
                          id="nicknameBtn"
                          type="button"
                        >
                          중복확인
                        </button>
                        <div id="nicknameCheck"></div>
                      </div>

                      <div class="form-group">
                        <label>휴대폰 번호</label>

                        <input
                          class="form-control"
                          placeholder="휴대폰 번호를 입력해주세요"
                          maxlength="20"
                          type="number"
                        />
                        <button class="btn btn-default" type="button">
                          휴대폰 인증
                        </button>
                      </div>

                      <input
                        type="text"
                        id="sample4_postcode"
                        placeholder="우편번호"
                        class="form-control"
                      />
                      <input
                        type="button"
                        onclick="sample4_execDaumPostcode()"
                        value="우편번호 찾기"
                        class="btn btn-default"
                      /><br />
                      <input
                        type="text"
                        id="sample4_roadAddress"
                        placeholder="도로명주소"
                        class="form-control"
                      />
                      <input
                        type="text"
                        id="sample4_jibunAddress"
                        placeholder="지번주소"
                        class="form-control"
                      />
                      <span
                        id="guide"
                        style="color: #999; display: none"
                      ></span>
                      <input
                        type="text"
                        id="sample4_detailAddress"
                        placeholder="상세주소"
                        class="form-control"
                      />
                      <input
                        type="text"
                        id="sample4_extraAddress"
                        placeholder="참고항목"
                        class="form-control"
                      />
                      <label>생년월일</label>
                      <div class="form-group" id="flex">
                        <input
                          class="form-control"
                          id="yearValue"
                          type="text"
                          name="inyear"
                          size="5"
                          class="inBorder"
                        />년
                        <select class="form-control" name="monthValue">
                          <option value="1">1</option>
                          <option value="2">2</option>
                          <option value="3">3</option>
                          <option value="4">4</option>
                          <option value="5">5</option>
                          <option value="6">6</option>
                          <option value="7">7</option>
                          <option value="8">8</option>
                          <option value="9">9</option>
                          <option value="10">10</option>
                          <option value="11">11</option>
                          <option value="12">12</option>
                        </select>

                        월
                        <select class="form-control" name="dayValue">
                          <option value="1">1</option>
                          <option value="2">2</option>
                          <option value="3">3</option>
                          <option value="4">4</option>
                          <option value="5">5</option>
                          <option value="6">6</option>
                          <option value="7">7</option>
                          <option value="8">8</option>
                          <option value="9">9</option>
                          <option value="10">10</option>
                          <option value="11">11</option>
                          <option value="12">12</option>
                          <option value="13">13</option>
                          <option value="14">14</option>
                          <option value="15">15</option>
                          <option value="16">16</option>
                          <option value="17">17</option>
                          <option value="18">18</option>
                          <option value="19">19</option>
                          <option value="20">20</option>
                          <option value="21">21</option>
                          <option value="22">22</option>
                          <option value="23">23</option>
                          <option value="24">24</option>
                          <option value="25">25</option>
                          <option value="26">26</option>
                          <option value="27">27</option>
                          <option value="28">28</option>
                          <option value="29">29</option>
                          <option value="30">30</option>
                          <option value="31">31</option>
                        </select>

                        일
                      </div>
                      <label>성별</label>
                      <div class="form-group">
                        <label class="radio-inline">
                          <input
                            type="radio"
                            name="optionsRadiosInline"
                            id="optionsRadiosInline1"
                            value="option1"
                            checked
                          />남성
                        </label>
                        <label class="radio-inline">
                          <input
                            type="radio"
                            name="optionsRadiosInline"
                            id="optionsRadiosInline2"
                            value="option2"
                          />여성
                        </label>
                      </div>
                      <button
                        type="submit"
                        id="submitJoinForm"
                        class="btn btn-primary"
                      >
                        작성 완료
                      </button>
                      <button
                        type="reset"
                        class="btn btn-danger"
                        id="resetButton"
                      >
                        초기화
                      </button>
                    </form>
                  </div>
                  <!-- /.col-lg-6 (nested) -->
                </div>
                <!-- /.row (nested) -->
              </div>
              <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
          </div>
          <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->

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
    <script>
      $(document).ready(function () {
        //이메일 체크
        var emailChk = false;
        $("#emailConfirmDiv").hide();
        $("#emailBtn").click(function () {
          var email = $("#emailInput").val() + "@" + $("#emailInput2").val();
          $.ajax({
            type: "post",
            url: "/zoobox/user/emailcheck",
            data: { email: email },
            dataType: "JSON",
            success: function (obj) {
              
            if (obj.mailCheck != 1) {
                emailChk = true;
                $("#emailConfirmDiv").show();
                alert("사용할 수 있는 이메일입니다.");
              } else {
            	emailChk=false;
                alert("이미 사용중인 이메일입니다.");
              }
            },
            error: function (e) {
              console.log(e);
            },
          });
        });

        //닉네임체크
        var nicknameChk = false;
        $("#nicknameBtn").click(function () {
          var nickname = $("#nicknameInput").val();
          var spec = nickname.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
          $.ajax({
            type: "post",
            url: "/zoobox/user/nicknamecheck",
            data: { nickname: nickname },
            dataType: "JSON",
            success: function (obj) {
              if(nickname.length<3){
            	  alert("닉네임은 3자이상 입력하셔야 합니다.");
            	  nicknameChk=false;
            	  return false;
            	  
              }
              if(spec >= 0){
            	  alert("닉네임은 특수문자를 포함할 수 없습니다.");
            	  nicknameChk=false;
            	  return false;
              }
              if(nickname.search(/\s/) != -1){
            	  alert("닉네임엔 공백이 들어갈 수 없습니다.");
            	  nicknameChk=false;
            	  return false;
              }
              
              if (obj.nicknameCheck != 1) {
                nicknameChk = true;
                alert("사용할 수 있는 닉네임입니다.");
              } else {
            	  nicknameChk=false;
            	  alert("이미 사용중인 닉네임입니다.");
                return false;
              }
              
            },
            error: function (e) {
              console.log(e);
            },
          });
        });
        var emailConfirmChk = false;
        $("#emailConfirmBtn").hide();
        $("#emailResendBtn").hide();
        $("#viewTimer").hide();

        //이메일 인증번호 전송시 이벤트
        $("#emailSendBtn").click(function () {
          $("#emailSendBtn").hide();
          $("#emailConfirmBtn").show();
          $("#emailResendBtn").show();
          $("#viewTimer").show();
          var emailConfirmNum = Math.floor(Math.random() * 900000 + 100000);

          //5분타이머
          var time = 300; //기준시간
          var min = "";
          var sec = "";
          var str = "";
          var timeinterval = setInterval(function () {
            min = parseInt(time / 60);
            sec = time % 60;

            str =
              "<span>" + "남은시간 : " + min + "분" + sec + "초" + "</span>";
            time--;
            if (time < 0) {
              clearInterval(timeinterval);
              var emailConfirmChk = false;
              str = "입력시간이 종료되었습니다.재전송버튼을 눌러주세요";
            }
            $("#viewTimer").html(str);
          }, 1000);

          console.log(emailConfirmNum);

          $("#emailResendBtn").click(function () {
            emailConfirmNum = Math.floor(Math.random() * 900000 + 100000);
            console.log(emailConfirmNum);
            time = 300;
            var emailConfirmChk = false;
            alert("인증번호가 재전송됬습니다.");
          });
          //인증번호 입력시 이벤트
          $("#emailConfirmBtn").click(function () {
            if ($("#emailConfirmInput").val() == emailConfirmNum) {
              console.log(emailConfirmNum);
              emailConfirmChk = true;
              alert("인증이 완료되었습니다.");
              clearInterval(timeinterval);
              $("#emailConfirmDiv").hide();
            } else {
            	var emailConfirmChk = false;
              alert("인증번호가 틀렸습니다 다시 확인해주세요.");
            }
          });
        });
        //닉네임 제약
        var nicknameChk2 = false;
        var nickname = "";
        var str3 = "";
        $("#nicknameInput").on("input", function () {
          str3 = "";
          nickname = $("#nicknameInput").val();
          var spec = nickname.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
          if (nickname.length < 3) {
            str3 = "";
            $("#nicknameInput").css("border-color", "#ff0000");
            str3 =
              "<span style='color:red'>" +
              "닉네임은 세글자 이상 입력하셔야 합니다." +
              "</span>";
               nicknameChk2 = false;
            $("#nicknameCheck").html(str3);
          } else if (spec >= 0) {
            str3 = "";
            $("#nicknameInput").css("border-color", "#ff0000");
            str3 =
              "<span style='color:red'>" +
              "닉네임은 특수문자를 포함할 수 없습니다." +
              "</span>";
               nicknameChk2 = false;
            $("#nicknameCheck").html(str3);
          } else if (nickname.search(/\s/) != -1) {
            str3 = "";
            $("#nicknameInput").css("border-color", "#ff0000");
            str3 =
              "<span style='color:red'>" +
              "닉네임은 공백없이 입력해주세요." +
              "</span>";
               nicknameChk2 = false;
            $("#nicknameCheck").html(str3);
          } else {
            str3 = "";

            $("#nicknameCheck").html(str3);
            nicknameChk2 = true;
            $("#nicknameInput").css("border-color", "#00ff2f");
          }
        });
        //이름 제약
        var nameChk = false;
        var name = "";
        var str4 = "";
        $("#nameInput").on("input", function () {
          str4 = "";
          name = $("#nameInput").val();
          var speci = name.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
          if (name.length < 2) {
            str4 = "";
            $("#nameInput").css("border-color", "#ff0000");
            str4 =
              "<span style='color:red'>" +
              "이름은 두글자 이상 입력하셔야 합니다." +
              "</span>";
               nameChk = false;
            $("#nameCheck").html(str4);
          } else if (speci >= 0) {
            str4 = "";
            $("#nameInput").css("border-color", "#ff0000");
            str4 =
              "<span style='color:red'>" +
              "이름은 특수문자를 포함할 수 없습니다." +
              "</span>";
               nameChk = false;
            $("#nameCheck").html(str4);
          } else if (name.search(/\s/) != -1) {
            str4 = "";
            $("#nameInput").css("border-color", "#ff0000");
            str4 =
              "<span style='color:red'>" +
              "이름은 공백없이 입력해주세요." +
              "</span>";
               nameChk = false;
            $("#nameCheck").html(str4);
          } else {
            str4 = "";

            $("#nameCheck").html(str4);
            nameChk = true;
            $("#nameInput").css("border-color", "#00ff2f");
          }
        });

        var password1 = "";
        var password2 = "";
        var passwordCheck1 = false;
        var passwordCheck2 = false;
        var str1 = "";
        //비밀번호 제약
        $("#passwordInput1").on("input", function () {
          str1 = "";
          password1 = $("#passwordInput1").val();
          password2 = $("#passwordInput2").val();
          var num = password1.search(/[0-9]/g);
          var eng = password1.search(/[a-z]/gi);
          var spe = password1.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
          if (password1.length < 10) {
            str1 = "";
            $("#passwordInput1").css("border-color", "#ff0000");
            str1 =
              "<span style='color:red'>" +
              "비밀번호는 10자 이상입력하셔야 합니다." +
              "</span>";
              passwordCheck1 = false;
            $("#passwordNotice").html(str1);
          } else if (password1.search(/\s/) != -1) {
            str1 = "";
            $("#passwordInput1").css("border-color", "#ff0000");
            str1 =
              "<span style='color:red'>" +
              "비밀번호는 공백없이 입력해주세요." +
              "</span>";
              passwordCheck1 = false;
            $("#passwordNotice").html(str1);
          } else if (num < 0 || eng < 0 || spe < 0) {
            str1 = "";
            $("#passwordInput1").css("border-color", "#ff0000");
            str1 =
              "<span style='color:red'>" +
              "영문,숫자, 특수문자를 혼합하여 입력해주세요." +
              "</span>";
              passwordCheck1 = false;
            $("#passwordNotice").html(str1);
          } else {
            str1 = "";
            $("#passwordNotice").html(str1);
            passwordCheck1 = true;
            $("#passwordInput1").css("border-color", "#00ff2f");
          }
        });
        //비밀번호 확인 제약
        var str2 = "";
        $("#passwordInput2").on("input", function () {
          str2 = "";
          password1 = $("#passwordInput1").val();
          password2 = $("#passwordInput2").val();

          if (password2 != password1) {
            str2 = "";
            $("#passwordInput2").css("border-color", "#ff0000");
            str2 =
              "<span style='color:red'>" +
              "패스워드가 일치하지 않습니다." +
              "</span>";
              passwordCheck2 = false;
            $("#passwordNotice2").html(str2);
          } else {
            $("#passwordInput2").css("border-color", "#00ff2f");
            str2 = "";
            $("#passwordNotice2").html(str2);
            passwordCheck2 = true;
          }
        });

        //초기화버튼 클릭시 이벤트
        $("#resetButton").click(function () {
          $("#emailConfirmDiv").hide();
          $("#nicknameInput").css("border-color", "#d5d5d5");
          $("#nameInput").css("border-color", "#d5d5d5");
          $("#passwordInput1").css("border-color", "#d5d5d5");
          $("#passwordInput2").css("border-color", "#d5d5d5");
          emailChk = false;
          nicknameChk = false;
          emailConfirmChk = false;
          passwordCheck1 == false;
          passwordCheck2 == false;
          nicknameChk2 = false;
          nameChk = false;
          str1 = "";
          str2 = "";
          str3 = "";
          str4 = "";
          $("#passwordNotice").html(str1);
          $("#passwordNotice2").html(str2);
          $("#nicknameCheck").html(str3);
          $("#nameCheck").html(str4);
        });

        //작성완료 버튼 이벤트
        $("#submitJoinForm").click(function () {
          password1 = $("#passwordInput1").val();
          password2 = $("#passwordInput2").val();
          console.log("emailChk = " + emailChk);
          console.log("nicknameChk = " + nicknameChk);
          console.log("emailConfirmChk = " + emailConfirmChk);
          console.log("passwordCheck1 = " + passwordCheck1);
          console.log("passwordCheck2 = " + passwordCheck2);
          if (emailChk == false) {
            alert("이메일 중복확인을 해주세요.");
            return false;
          }
          if (emailConfirmChk == false) {
            alert("이메일 인증을 해주세요.");
            return false;
          }
          if (passwordCheck1 == false) {
            alert("적절한 패스워드를 입력해주세요.");
            return false;
          }
          if (passwordCheck2 == false) {
            alert("패스워드를 확인하셔야 합니다.");
            return false;
          }
          if (nicknameChk == false) {
            alert("닉네임 중복확인을 해주세요.");
            return false;
          }
          if (nicnameChk == false) {
            alert("적절한 닉네임을 입력해주세요");
            return false;
          }
        });
      });
    </script>
  </body>
</html>

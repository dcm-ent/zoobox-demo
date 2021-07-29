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

    <title>SB Admin 2 - Bootstrap Admin Theme</title>

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
                      <div class="form-group">
                        <label>프로필 사진등록</label>
                        <input type="file" />
                      </div>
                      <label>이메일</label>
                      <div class="form-group" id="flex">
                        <input
                          class="form-control"
                          id="emailInput"
                          placeholder="이메일을 입력해주세요"
                          name="email"
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
                      <div class="form-group" id="emailSendDiv">
                        <label>이메일인증</label>
                        <input
                          class="form-control"
                          placeholder="인증번호를 입력해주세요"
                        />
                        <button
                          class="btn btn-default"
                          type="button"
                          id="emailBtn"
                        >
                          인증번호 발송
                        </button>
                      </div>
                      <div class="form-group">
                        <label>패스워드</label>
                        <input
                          class="form-control"
                          placeholder="패스워드를 입력해주세요(10자이상,특수문자포함)"
                        />
                      </div>
                      <div class="form-group">
                        <label>패스워드 확인</label>
                        <input
                          class="form-control"
                          placeholder="패스워드를 확인해주세요"
                        />
                      </div>
                      <label>닉네임</label>
                      <div class="form-group" id="flex">
                        <input
                          class="form-control"
                          id="nicknameInput"
                          placeholder="닉네임을 입력해주세요"
                        />
                        <button
                          class="btn btn-default"
                          id="nicknameBtn"
                          type="button"
                        >
                          중복확인
                        </button>
                      </div>

                      <div class="form-group">
                        <label>휴대폰 번호</label>

                        <input
                          class="form-control"
                          placeholder="휴대폰 번호를 입력해주세요"
                        />
                        <button class="btn btn-default" type="button">
                          휴대폰 인증
                        </button>
                      </div>

                      <label>주소 검색</label>

                      <input type="text" class="form-control" />
                      <span class="input-group-btn">
                        <button class="btn btn-default" type="button">
                          우편번호 찾기
                        </button>
                      </span>
                      <label>상세주소 입력</label>
                      <input type="text" class="form-control" />
                      <label>생년월일</label>
                      <div class="form-group" id="flex">
                        <input
                          class="form-control"
                          type="text"
                          name="inyear"
                          size="5"
                          class="inBorder"
                        />년
                        <select class="form-control">
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
                        <select class="form-control">
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
                      <button type="submit" class="btn btn-primary">
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

    <script>
      $(document).ready(function () {
        //이메일 체크
        var emailChk = false;

        $("#emailBtn").click(function () {
          var email = $("#emailInput").val() + "@" + $("#emailInput2").val();
          $.ajax({
            type: "post",
            url: "/zoobox/user/emailcheck",
            data: { email: email },
            dataType: "JSON",
            success: function (obj) {
              console.log(obj);
              if (obj.mailCheck != 1) {
                alert("사용할 수 있는 이메일입니다.");
                emailChk = true;
              } else {
                alert("이미 사용중인 이메일입니다.");
              }
            },
            error: function (e) {
              console.log(e);
            },
          });
        });

        var nicknameChk = false;
        $("#nicknameBtn").click(function () {
          var nickname = $("#nicknameInput").val();
          $.ajax({
            type: "post",
            url: "/zoobox/user/nicknamecheck",
            data: { nickname: nickname },
            dataType: "JSON",
            success: function (obj) {
              console.log(obj);
              if (obj.nicknameCheck != 1) {
                alert("사용할 수 있는 닉네임입니다.");
                nicknameChk = true;
              } else {
                alert("이미 사용중인 닉네임입니다.");
              }
            },
            error: function (e) {
              console.log(e);
            },
          });
        });
        if (emailChk == false) {
          $("#emailSendDiv").hide();
        }
      });
    </script>
  </body>
</html>

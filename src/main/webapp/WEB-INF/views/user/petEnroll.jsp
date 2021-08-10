<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <%@ include file="/WEB-INF/views/common/head.jsp" %>
    <title>zoobox-PetEnroll</title>
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
    <header>
      <jsp:include page="/header"></jsp:include>
    </header>
    <div id="wrapper">
      <div id="page-wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h1 class="page-header">마이펫 등록</h1>
          </div>
          <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
          <div class="col-lg-12">
            <div class="panel panel-default">
              <div class="panel-heading">등록 양식</div>
              <div class="panel-body">
                <div class="row">
                  <div class="col-lg-6">
                    <form
                      role="form"
                      action="/zoobox/user/petEnroll"
                      method="POST"
                    >
                      <div class="form-group uploadDiv">
                        <div class="uploadResult">
                          <img
                            id="default-profile"
                            src="/zoobox/resources/img/profile.png"
                            alt=""
                            width="100ox"
                            height="100px"
                          />
                        </div>
                        <input type="file" name="uploadFile" multiple />
                      </div>

                      <div class="form-group">
                        <label>패스워드</label>
                        <input
                          type="password"
                          name="password"
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
                          name="username"
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
                          name="nickname"
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
                          name="phone"
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
                        name="zipcode"
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
                        name="roadAddress"
                      />
                      <input
                        type="text"
                        id="sample4_jibunAddress"
                        placeholder="지번주소"
                        class="form-control"
                        name="address"
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
                        name="detailAddress"
                      />
                      <input
                        type="hidden"
                        id="sample4_extraAddress"
                        class="form-control"
                        placeholder="참고항목"
                      />
                      <label>생년월일</label>
                      <div class="form-group" id="flex">
                        <input
                          class="form-control"
                          id="yearValue"
                          type="text"
                          name="yearValue"
                          size="5"
                          class="inBorder"
                        />년
                        <select class="form-control" name="monthValue">
                          <option value="01">01</option>
                          <option value="02">02</option>
                          <option value="03">03</option>
                          <option value="04">04</option>
                          <option value="05">05</option>
                          <option value="06">06</option>
                          <option value="07">07</option>
                          <option value="08">08</option>
                          <option value="09">09</option>
                          <option value="10">10</option>
                          <option value="11">11</option>
                          <option value="12">12</option>
                        </select>

                        월
                        <select class="form-control" name="dayValue">
                          <option value="01">01</option>
                          <option value="02">02</option>
                          <option value="03">03</option>
                          <option value="04">04</option>
                          <option value="05">05</option>
                          <option value="06">06</option>
                          <option value="07">07</option>
                          <option value="08">08</option>
                          <option value="09">09</option>
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
                            name="gender"
                            id="optionsRadiosInline1"
                            value="male"
                            checked
                          />남성
                        </label>
                        <label class="radio-inline">
                          <input
                            type="radio"
                            name="gender"
                            id="optionsRadiosInline2"
                            value="female"
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
    <jsp:include page="/footer"></jsp:include>
    <!-- jQuery -->
    <script src="/zoobox/resources/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/zoobox/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/zoobox/resources/vendor/metisMenu/metisMenu.min.js"></script>
  </body>
</html>

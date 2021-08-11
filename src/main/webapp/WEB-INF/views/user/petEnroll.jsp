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
    #petBreedDiv {
      height:300px;
      overflow-x:hidden;
      overflow-y:scroll;
      cursor: pointer;
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
                        <button
                          class="btn btn-default"
                          id="nicknameBtn"
                          type="button"
                        >
                          중복확인
                        </button>
                        <div id="nicknameCheck"></div>
                      </div>


                      <label>어떤 종의 동물을 키우시나요?</label>
                       <input type="text" class="form-control" placeholder="검색해보세요" id="petBreedInput">
                      <div class="form-group"  id="petBreedDiv">
                        <ul name="petBreedUl">
                          <c:forEach items="${petBreedList}" var="PetBreed">
                            <li class="form-control petBreedList" value="<c:out value="${PetBreed.petBreed}"/>"><c:out value="${PetBreed.petBreed}"/></li>
                          </c:forEach>
                        </ul>
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
                          />수컷
                        </label>
                        <label class="radio-inline">
                          <input
                            type="radio"
                            name="gender"
                            id="optionsRadiosInline2"
                            value="female"
                          />암컷
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
    <script src="/zoobox/resources/vendor/jquery/jquery.min.js"></script>6  

    <!-- Bootstrap Core JavaScript -->
    <script src="/zoobox/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/zoobox/resources/vendor/metisMenu/metisMenu.min.js"></script>
    <script>
      $(document).ready(function(){
    	var petBreed="";
        $("#petBreedDiv").hide();
        $("#petBreedInput").click(function(){
        	$("#petBreedDiv").show();
        	console.log(1);
        	$(".petBreedList").on("click","PetBreed",function(){
        		petBreed = $(this).data("PetBreed.petBreed");
        		console.log("petBreed = " + petBreed);
        		 $("#petBreedInput").val(petBreed);
        		 $("#petBreedInput").html(petBreed);
        	});
        });
      });
    </script>
  </body>
</html>

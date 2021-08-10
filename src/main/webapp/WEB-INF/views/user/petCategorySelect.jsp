<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %> <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <%@ include file="/WEB-INF/views/common/head.jsp" %>
    <title>zoobox-JoinForm</title>
  </head>
  <style>
    #flex {
      display: flex;
      cursor: pointer;
    }
  </style>
  <body>
    <div id="flex">
      <div class="form-group">
        <img
          src="/zoobox/resources/img/dog_category.png"
          alt=""
          width="200"
          height="300"
          id="dogCategory"
        />
      </div>
      <div class="form-group">
        <img
          src="/zoobox/resources/img/cat_category.png"
          alt=""
          width="200"
          height="300"
          id="catCategory"
        />
      </div>
      <div class="form-group">
        <img
          src="/zoobox/resources/img/fish_category.png"
          alt=""
          width="200"
          height="300"
          id="fishCategory"
        />
      </div>
      <div class="form-group">
        <img
          src="/zoobox/resources/img/bird_category.png"
          alt=""
          width="200"
          height="300"
          id="birdCategory"
        />
      </div>
      <div class="form-group">
        <img
          src="/zoobox/resources/img/lizard_category.png"
          alt=""
          width="200"
          height="300"
          id="lizardCategory"
        />
      </div>
      <div class="form-group">
        <img
          src="/zoobox/resources/img/et_cetera.png"
          alt=""
          width="200"
          height="300"
          id="etCetera"
        />
      </div>
    </div>
    <!-- jQuery -->
    <script src="/zoobox/resources/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/zoobox/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script>
      $(document).ready(function () {
        $("#dogCategory").click(function () {
          location.href = "/zoobox/user/petEnroll/1";
        });
        $("#catCategory").click(function () {
          location.href = "/zoobox/user/petEnroll/2";
        });
        $("#fishCategory").click(function () {
          location.href = "/zoobox/user/petEnroll/3";
        });
        $("#birdCategory").click(function () {
          location.href = "/zoobox/user/petEnroll/4";
        });
        $("#lizardCategory").click(function () {
          location.href = "/zoobox/user/petEnroll/5";
        });
        $("#etCetera").click(function () {
          location.href = "/zoobox/user/petEnroll/0";
        });
      });
    </script>
  </body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="inform.vo.PageInfo"%>
<%@ page import="java.sql.*"%>
<%@ page import="inform.vo.PageInfo"%>
<%@ page import="inform.vo.InformBean"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="dd.css">

</head>
<body>


 <c:set var="id" value="${sessionScope.id }" />
      <c:choose>
         <c:when test="${id eq null }">
            <div class="top-bar" class="bbb">
               <ul class="user-menu">
                  <li><a href="memberLogin.me">로그인</a></li>
                  <li><a href="terms.jsp">회원가입</a></li>
               </ul>
            </div>
         </c:when>
         <c:when test="${id eq 'admin' }">
            <div class="bbb">
               <form class="bb1" action="Logout.jsp" method="post">
                  <%=session.getAttribute("id") + "(관리자)님이 로그인 성공하셨습니다."%>
                  <input type="hidden" name="id" autocomplete='off'> 
                  <input type="hidden" name="pwd" autocomplete='off'> 
                  <a href="Logout.jsp">로그아웃</a>
                  <a href="adminWork.jsp">마이페이지</a>
               </form>
            </div>
         </c:when>


         <c:otherwise>
            <div class="bbb">
               <form class="bb1" action="Logout.jsp" method="post">
                  <%=session.getAttribute("id") + "님이 로그인 성공하셨습니다."%>
                  <input type="hidden" name="id" autocomplete='off'> 
                  <input type="hidden" name="pwd" autocomplete='off'> 
                  <a href="Logout.jsp">로그아웃</a>
                  <a href="UserMypage.jsp">마이페이지</a>
               </form>
            </div>
         </c:otherwise>
      </c:choose>

    <nav class="navbar">
        <div class="container">
            <a href="Main.jsp" class="navbar-brand"><img src="./img/logo.png"></a>
            <div class="menu-toggle">&#9776;</div>
            <ul class="menu">
                <li><a href="informList.bo">공지사항</a></li>
                <li><a href="bookListUser.bok">도서목록</a></li>
                <li><a href="informList2.bo">게시판</a></li>
                <li><a href="semi_sr.jsp">소개</a></li>
            </ul>
        </div>
    </nav>
</body>
</html>
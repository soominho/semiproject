<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="inform.vo.PageInfo" %>
<%@ page import="java.sql.*" %>
<%@ page import="inform.vo.PageInfo" %>
<%@ page import="inform.vo.InformBean" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <link rel="stylesheet" href="main.css">
<link rel="shortcut icon" type="image/png" href="./favicon/favicon-16x16.png" />
    <!-- jQuery 추가 -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.10.3/gsap.js"></script>
    <script src="https://unpkg.com/swiper@8/swiper-bundle.js"></script>
    <title>상단바1</title>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0px;
        }

        .navbar_main {
            background-color: rgba(0, 0, 0, 0.5);
            /* opacity: 0.5; */
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1rem 0;
            color: #fff;
            z-index: 999;
            animation: navbarBottom 1s forwards;
        }

        .navbar_links {
            margin-right: 10%;
        }

        .navbar_links a {
            text-decoration: none;
            color: #fff;
            margin-right: 4rem;
            text-decoration-line: none;
            font-size: 1.2rem;
            font-weight: 600;
            position: relative;
            padding: 0.5rem 0;
        }

        .navbar_links a:last-child {
            margin-right: 0;
        }

        .navbar_links a::before {
            content: '';
            position: absolute;
            bottom: -1px;
            left: 50%;
            width: 0;
            text-decoration-line: none;
            height: 3px;
            background-color: #fff;
            transition: width 0.2s ease-in-out, left 0.2s ease-in-out;
        }

        .navbar_links a:hover::before {
            width: 100%;
            left: 0;
        }

        .navbar_logo {
            margin-left: 10%;
            text-decoration: none;
            color: #000;
            font-size: 2.3rem;
            font-weight: 500;
            opacity: 1;
        }

        .navbar_scroll {
            background-color: #fff;
            z-index: 5;
            border-bottom: 1px solid gray;
        }

        .navbar_scroll div a {
            color: black;
        }

        .navbar_scroll a {
            color: black;
        }

        @ keyframes navbarBottom {
            0% {
                transform: translateY(-70%);
                /* opacity: 0; */
            }

            100 % {
                transform:
                    translateY(0);
                /* opacity: 1; */
            }
        }

        .bb1>a {
            text-decoration-line: none;
            color: #fff;
        }

        /* 리셋 CSS */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        ul,
        li {
            list-style: none;
        }

        /* 슬라이드 Style */
        .slidebox {
            max-width: 800px;
            margin: 0 auto;
            text-align: center;
        }

        .slidebox .slidelist {
            white-space: nowrap;
            font-size: 0;
            overflow: hidden;
            width: 90%;
        }

        .slidebox .slidelist .slideitem {
            position: relative;
            display: inline-block;
            vertical-align: middle;
            width: 100%;
            transition: all 1s;
        }

        .slidebox .slidelist .slideitem>a {
            display: block;
            width: auto;
            position: relative;
        }

        .slidebox .slidelist .slideitem>a img {
            max-width: 100%;
        }

        .slidebox .slidelist .slideitem>a label {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            padding: 20px;
            border-radius: 50%;
            cursor: pointer;
        }

        .slidebox .slidelist .slideitem>a label.prev {
            left: 20px;
            background: #333 url('./img/left-arrow.png') center center/50% no-repeat;
        }

        .slidebox .slidelist .slideitem>a label.next {
            right: 20px;
            background: #333 url('./img/right-arrow.png') center center/50% no-repeat;
        }

        [name="slide"] {
            display: none;
        }

        #slide01:checked~.slidelist .slideitem {
            transform: translateX(0);
            animation: slide01 15s infinite;
        }

        #slide02:checked~.slidelist .slideitem {
            transform: translateX(-100%);
            animation: slide02 15s infinite;
        }

        #slide03:checked~.slidelist .slideitem {
            transform: translateX(-200%);
            animation: slide03 15s infinite;
        }

        @ keyframes slide01 {
            0% {
                left: 0%;
            }

            33 % {
                left:
                    0%;
            }

            34 % {
                left:
                    -100%
            }

            66 % {
                left:
                    -100%;
            }

            67 % {
                left:
                    -200%;
            }

            99 % {
                left:
                    -200%;
            }

            100 % {
                left:
                    0%;
            }
        }

        @ keyframes slide02 {
            0% {
                left: 0%;
            }

            33 % {
                left:
                    0%;
            }

            34 % {
                left:
                    -100%;
            }

            66 % {
                left:
                    -100%;
            }

            67 % {
                left:
                    100%;
            }

            99 % {
                left:
                    100%;
            }

            100 % {
                left:
                    0%;
            }
        }

        @ keyframes slide03 {
            0% {
                left: 0%;
            }

            33 % {
                left:
                    0%;
            }

            34 % {
                left:
                    200%;
            }

            66 % {
                left:
                    200%;
            }

            67 % {
                left:
                    100%;
            }

            99 % {
                left:
                    100%;
            }

            100 % {
                left:
                    0%;
            }
        }

        a {
            text-decoration: none;
        }

        /* --------------------------------------- */


        .search {
            width: 100%;

        }

        .search> :nth-child(1) {
            width: 1000px;
            margin: 0 auto;
        }



        .search section {
            clear: both;
            display: flex;

        }

        .search section div {

            position: relative;
            overflow: hidden;
        }

        .search section img {
            width: 250px;
            transform: scale(1, 1);
            
              opacity:0.9;
        }

        .search section img:hover {
            transform: scale(1.5);
        }

        .letter {
            position: absolute;
            top: 0%;
            left: 0%;
            width: 250px;
            height: 100%;
            cursor: pointer;
            transition: 0.3s;
            opacity: 0;
            color: white;
            text-align: center;
            padding: 150px 0;
        }

        .letter:hover {
            background: rgba(0, 0, 0, 0.5);
            opacity: 1;
        }

        .search> :nth-child(2) {
            clear: both;
            width: 1000px;
            margin: 0 auto;
            padding: 20px 90px;
        }



        .search button:hover {
            opacity: 0.8;
        }
    </style>

</head>

<body>

<jsp:include page="/header2.jsp"></jsp:include>
                                <!-- <div style="height: 150px;">
      <img style="width: 100%; height: 1050px;" src="./img/12.jpg">
   </div>


   PC 버전
   <div class="navbar_main">
      <a class="navbar_logo" href="Main.jsp"><img style="width: 70px;"
         src="./img/logow.png"></a>
      <div class="navbar_links">
         <a style="text-decoration-line: none;" href="informList.bo">공지사항</a>
         <a style="text-decoration-line: none;" href="bookListUser.bok">도서목록</a>
         <a style="text-decoration-line: none;" href="informList2.bo">게시판</a>
         <a style="text-decoration-line: none;" href="semi_sr.jsp">소개</a>
      </div>
      <c:set var="id" value="${sessionScope.id }" />
        <c:choose>
            <c:when test="${id eq null }">
                <div class="top-bar" class="bb1">
                    <a href="memberLogin.me">로그인</a>
                    <a href="terms.jsp">회원가입</a>
                </div>
            </c:when>
      <c:when test="${id eq 'admin' }">
      <div class="bbb">
         <form class="bb1" action="Logout.jsp" method="post">
            <input type="hidden" name="id" autocomplete='off'> <input
               type="hidden" name="pwd" autocomplete='off'> <a
               href="logout">로그아웃</a> <a href="adminWork.jsp">마이페이지</a>
         </form>
      </div>
      </c:when>


      <c:otherwise>
                <div class="bbb">
                    <form class="bb1" action="Logout.jsp" method="post">
                        <input type="hidden" name="id" autocomplete='off'> 
                        <input type="hidden" name="pwd" autocomplete='off'> 
                        <a href="logout">로그아웃</a>                  
                        <a href="UserMypage.jsp">마이페이지</a>
                    </form>
                </div>
            </c:otherwise>
      </c:choose>

   </div> -->
    <div
        style=" width: 100%; height: 900px; position: absolute; opacity: 0.2; margin: 0; z-index: 0;">
        중단 백그라운드</div>


    <div class="main_container" style="width: 80%; height: 900px; margin: 0 auto;">

        <div class="main_leftcontainer" style="float: left; width: 50%;">
            <div class="slidebox">
                <input type="radio" name="slide" id="slide01" checked> <input type="radio"
                    name="slide" id="slide02"> <input type="radio" name="slide"
                    id="slide03">
                <ul class="slidelist">
                    <li class="slideitem"><a> <label for="slide03" class="prev"></label>
                            <img src="./img/도서문구1.jpg"> <label for="slide02"
                                class="next"></label>
                        </a></li>
                    <li class="slideitem"><a> <label for="slide01" class="prev"></label>
                            <img src="./img/도서문구2.jpg"> <label for="slide03"
                                class="next"></label>
                        </a></li>
                    <li class="slideitem"><a> <label for="slide02" class="prev"></label>
                            <img src="./img/도서문구3.jpg"> <label for="slide01"
                                class="next"></label>
                        </a></li>
                </ul>
            </div>
            <!-- 공지사항 게시판ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
            <style>
                .noticeTable {
                    position: relative;
                    background-color: #fff;
                    color: #000;
                    width: 90%;
                }
            </style>
            <script>
                $(document).ready(function () {
                    $.ajax({
                        url: 'informList1.bo',
                        type: 'GET',
                        success: function (data) {
                            var tableContent = '';

                            $('#noticeTable ').html(data);
                        }
                    });
                });

                $(document).ready(function () {
                    $.ajax({
                        url: 'informList3.bo',
                        type: 'GET',
                        success: function (data) {
                            var tableContent = '';

                            $('#noticeTable1').html(data);
                        }
                    });
                });
            </script>

            <div class="info">
                <div class="info-main">
                    <div class="news">
                        <h2 class="rhdwl">공지사항</h2>
                        <a class="the1" href="informList.bo">더보기+</a>
                        <hr>
                        <table id="noticeTable" width="300">
                            <tr>
                                <th>번호</th>
                                <th>제목</th>
                                <th>내용</th>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="info-main">
                    <div class="news">
                        <h2 class="rhdwl">게시판</h2>
                        <a class="the1" href="informList2.bo">더보기+</a>
                        <hr>
                        <table id="noticeTable1" width="300">
                            <tr>
                                <th>번호</th>
                                <th>제목</th>
                                <th>내용</th>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <!-- 컨테이너 나누기ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
        <style>
            .table1,
            .table1 td {
                border: 4px solid #000;
                border-collapse: collapse;
            }
        </style>
        <div class="main_rightcontainer"
            style="position: relative; float: left; height: 100%; width: 50%;">
            <table class="table1" style="width: 100%; height: 100%; text-align: center;">
                <tr>
                    <article class="search">
                        <div>
                            <section>
                                <div>
                                    <a href="#"><img src="https://i.pinimg.com/564x/f0/7a/63/f07a633fc4eb62c12139dde824c69555.jpg" alt="room01"></a>
                                    <p class="letter">
                                        #레지던스형호텔 #서울호캉스
                                    </p>
                                </div>

                                <div>
                                    <a href="#">
                                    <img src="https://i.pinimg.com/564x/34/d2/af/34d2afc1098c2271d8296aabbe7ebbf0.jpg"
                                            alt="room02"></a>
                                    <p class="letter">
                                        #합리적인가격 #역에서도보5분
                                    </p>

                                </div>
                                <div>
                                    <a href="#"><img
                                            src="https://i.pinimg.com/564x/84/4f/24/844f24b7a9cce0530fdeba02a5f204a9.jpg"
                                            alt="room03"></a>
                                    <p class="letter">
                                        #럭셔리호텔 #넓은객실
                                    </p>
                                </div>
                            </section>
                        </div>
                    </article>
                </tr>
                <tr>
                    <article class="search">
                        <div>
                            <section>
                                <div>
                                    <a href="#"><img
                                            src="https://i.pinimg.com/564x/f0/7a/63/f07a633fc4eb62c12139dde824c69555.jpg"
                                            alt="room01"></a>
                                    <p class="letter">
                                        #레지던스형호텔 #서울호캉스
                                    </p>
                                </div>

                                <div>
                                    <a href="#"><img
                                            src="https://i.pinimg.com/564x/34/d2/af/34d2afc1098c2271d8296aabbe7ebbf0.jpg"
                                            alt="room02"></a>
                                    <p class="letter">
                                        #합리적인가격 #역에서도보5분
                                    </p>

                                </div>
                                <div>
                                    <a href="#"><img
                                            src="https://i.pinimg.com/564x/84/4f/24/844f24b7a9cce0530fdeba02a5f204a9.jpg"
                                            alt="room03"></a>
                                    <p class="letter">
                                        #럭셔리호텔 #넓은객실
                                    </p>
                                </div>
                            </section>
                        </div>
                    </article>
                </tr>
            </table>
        </div>

    </div>
    <style>
        footer {
            display: flex;
            width: 100%;
            height: 100px;
        }

        .foot {
            background-color: #fff;
            position: relative;
            width: 100%;
            padding: 20px;
        }
    </style>
    <footer>
        <div class="foot">
            <p>
                <b>팀명 선도부 : </b> 팀장 김성준 부팀장 정하영 팀원 금아롬 양예진 홍수민 남태욱 김호석 임정혁
            </p>
            <p>
                프로젝트 완성날짜 2024. 04. 00 이 사이트는 교육용 사이트로 실제 사용하실 수 없습니다. <small>(사용하면
                    선생님한테 뚜까 혼남)</small>
            </p>
        </div>
    </footer>

</body>

</html>
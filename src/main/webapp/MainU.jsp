<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
   String id = (String)session.getAttribute("id");
   if(id == null) {%>
      <script>
         location.href='./Main.jsp';
      </script>
   <%}
%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>hc24 - hji</title>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="dd.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
</head>

<body>
   <div id="bbb" style="width : 400px; margin-left:75%;"> &nbsp;
	<form action="LoginForm.jsp" method="post">
		<%=session.getAttribute("id") + "님이 로그인 성공하셨습니다." %>
		<input type="hidden" name="id">
		<input type="hidden" name="pwd">
		<input type="submit" value="로그아웃">
		<p/>
	</form>
	 <ul class="user-menu" style="margin-left:80%;">
            <li><a href="UserMypage.jsp">마이페이지</a></li>
        </ul>
</div>
 <nav class="gnb">
            <a href="#"><img src="img/Logo.png"></a>
            <ul>
                <li><a href="informList.bo">공지사항</a></li>
                <li><a href="bookList.ao">도서목록</a></li>
                <li><a href="borrowList.ao?id=<%=session.getAttribute("id")%>">도서대출</a></li>
                <li><a href="informList2.bo">게시판</a></li>
            </ul>
    </nav>
    <main>
        <div class="search">
            <span>검색 : </span><input class="search1" type="search" name="searchText" placeholder="검색어를 입력해주세요.">
            <input class="search2" type="button" value="검색">
        </div>
        <section class="visual-sec">
            <div class="swiper main-swiper">
                <div class="swiper-wrapper" style="width:1000px;" >
                    <div class="swiper-slide">
                        <div class="txt-box">
                            <p class="txt">선님</p>
                        </div>
                        <div class="img-box">
                            <img src="https://www.iaanapt.co.kr/_imgs/nav1.jpg" alt="">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="txt-box">
                            <p class="txt">도와세요</p>
                        </div>
                        <div class="img-box">
                            <img src="https://www.iaanapt.co.kr/_imgs/nav2.jpg" alt="">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="txt-box">
                            <p class="txt">헬미 </p>
                        </div>
                        <div class="img-box">
                            <img src="https://www.iaanapt.co.kr/_imgs/nav3.jpg" alt="">
                        </div>
                    </div>
                </div>
                <div class="all-box">
                    <div class="progress-box">
                        <div class="swiper-pagination"></div>
                        <div class="autoplay-progress">
                            <svg viewBox="0 0 100 10">
                                <line x1="0" y1="0" x2="100" y2="0">
                            </svg>
                        </div>
                    </div>
                    <div class="arrow-box">
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <h2 class="te">새로운 도서</h2>
    <section>
    <div class="wq" style="width:1000px;">
        <ul class="shop">
            <li class="card">
                <img src="img/dog.jpg">
            </li>
    
            <li class="card">
                <img src="img/dog.jpg">
            </li>

            <li class="card">
                <img src="img/dog.jpg">
            </li>

            <li class="card">
                <img src="img/dog.jpg">
            </li>

            <li class="card">
                <img src="img/dog.jpg">
            </li>

            <li class="card">
                <img src="img/dog.jpg">
            </li>


        </ul>
    </div>
    </section>



    <article class="iaan-news">
        <section class="after-effect">
            <div>
                <div>
                    <h2>도서</h2>
                    <p>공지사항,뉴스,이벤트 소식 등을 만나보세요</p>
                </div>
                <div>
                    <ul>
                        <li>-공지사항</li>
                    </ul>
                </div>
            </div>
        </section>
        <section class="after-effect">
            <div>
                <div>
                    <h2>게시판</h2>
                </div>
            </div>
        </section>
        <section class="after-effect">
            <div>
                <div>
                    <h2>?</h2>
                    <p>몰라</p>
                </div>
            </div>
        </section>
    </article>
    <div class="info">
        <div class="info-main">
            <div class="news">
                <h1>우리들의 이야기</h1>
                <ul>
                <li><a href="#">
                    <time datetime="2014-10-15">10/15</time>
                    <div class="text">오늘 금요일이다.</div>
                </a></li>
                <li><a href="#">
                    <time datetime="2014-10-05">10/05</time>
                    <div class="text">곧 6시 20분.</div>
                </a></li>
                <li><a href="#">
                    <time datetime="2014-09-22">09/22</time>
                    <div class="text">퇴근퇴근하고싶어요</div>
                </a></li>
                <li><a href="#">
                    <time datetime="2014-09-15">09/15</time>
                    <div class="text">성준씨.</div>
                </a></li>
                </ul>
            </div>
        </div>
        <div class="news">
            <h1>공지사항</h1>
            <ul>
            <li><a href="#">
                <time datetime="2014-10-15">10/15</time>
                <div class="text">오늘 22222.</div>
            </a></li>
            <li><a href="#">
                <time datetime="2014-10-05">10/05</time>
                <div class="text">곧 6시 33313131.</div>
            </a></li>
            <li><a href="#">
                <time datetime="2014-09-22">09/22</time>
                <div class="text">4124214124124</div>
            </a></li>
            <li><a href="#">
                <time datetime="2014-09-15">09/15</time>
                <div class="text">3123123123123.</div>
            </a></li>
            </ul>
        </div>
    </div>
    <script>
        
        const progressLine = document.querySelector('.autoplay-progress svg');
        const mainSwiper = new Swiper(".main-swiper", {
            loop: true,
            autoplay: {
                delay: 5500,
                disableOnInteraction: false,
            },
            pagination: {
                el: ".main-swiper .swiper-pagination",
                clickable: false,
                type: "custom",
                renderCustom: function (swiper, current, total) {
                    return (
                        '<span class="current">' + 0 + (current) + '</span>' + '<span class="total">' + 0 + (total) + '</span>'
                    );
                }
            },
            navigation: {
                nextEl: ".main-swiper .swiper-button-next",
                prevEl: ".main-swiper .swiper-button-prev",
            },

            on: {
                autoplayTimeLeft(s, time, progress) {
                    progressLine.style.setProperty("--progress", 1 - progress)
                }
            }
        });
    </script>
</body>
</html>
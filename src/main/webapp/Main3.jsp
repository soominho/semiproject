<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="inform.vo.PageInfo"%>
<%@ page import="java.sql.*"%>
<%@ page import="inform.vo.PageInfo"%>
<%@ page import="inform.vo.InformBean"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="dd.css">
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.css" />
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<!-- jQuery 추가 -->
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.10.3/gsap.js"></script>
<script src="https://unpkg.com/swiper@8/swiper-bundle.js"></script>

</head>
<body>
   <jsp:include page="/header.jsp"></jsp:include>

   <div class="menu-toggle">&#9776;</div>

   <main>
      <div class="search">
         <form action="search.bok" method="post" style="margin: 0 auto;">
            <input class="search_input" type="search" name="search" style="width: 400px; height:40px; "><button style="height:40px;" type="submit" class="btn1"><img src="./img/buttonimg.png"></button>
         </form>
      </div>
      <section class="visual-sec">
         <div class="swiper main-swiper">
            <div class="swiper-wrapper">
               <div class="swiper-slide">
                  <div class="img-box">
                     <img src="./img/img1.jpg" alt="">
                  </div>
               </div>
               <div class="swiper-slide">
                  <div class="img-box">
                     <img src="./img/img2.jpg" alt="">
                  </div>
               </div>
               <div class="swiper-slide">
                  <div class="img-box">
                     <img src="./img/img3.jpg" alt="">
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
                  <div class="swiper-button-prev">
                     <img alt="" src="./img/imgs1.png">
                  </div>
                  <div class="swiper-button-next">
                     <img alt="" src="./img/imgs2.png">
                  </div>
               </div>
            </div>
         </div>
      </section>
   </main>
   <article class="new_arrival">
      <div class="new_container">
         <div class="new_title">
            <h2>인기 도서</h2>
         </div>
         <section class="new_swiper_container">

            <div class="swiper new_swiper">

               <div class="swiper-wrapper">
                  <div class="swiper-slide new_slide" data-aos="zoom-in"
                     data-aos-duration="1000">
                     <div class="newbox">
                        <a href="#" class="new_product prod1">
                           <div>
                              <div></div>
                              <img src="./img/멍냥연구소.jpg" alt="">
                           </div>
                        </a>

                        <div class="new_copy">
                           <p>멍냥이 연구소</p>
                           <span>15,000원</span>
                        </div>
                     </div>
                  </div>

                  <div class="swiper-slide new_slide" data-aos="zoom-in"
                     data-aos-duration="1500">
                     <div class="newbox">
                        <a href="#" class="new_product prod2">
                           <div>
                              <div></div>
                              <img src="./img/수학도둑96.jpg" alt="">
                           </div>
                        </a>

                        <div class="new_copy">
                           <p>수학 도둑 96</p>
                           <span>14,000원</span>
                        </div>
                     </div>
                  </div>

                  <div class="swiper-slide new_slide" data-aos="zoom-in" data-aos-duration="2000">
                     <div class="newbox">
                        <a href="#" class="new_product prod3">
                           <div>
                              <div></div>
                              <img src="./img/아이love펫.jpg" alt="">
                           </div>
                        </a>

                        <div class="new_copy">
                           <p>아이 Love 펫</p>
                           <span>15,000원</span>
                        </div>
                     </div>
                  </div>

                  <div class="swiper-slide new_slide" data-aos="zoom-in" data-aos-duration="2500">
                     <div class="newbox">
                        <a href="#" class="new_product prod4">
                           <div>
                              <div></div>
                              <img src="./img/카카오프렌즈_바이러스.jpg" alt="">
                           </div>
                        </a>

                        <div class="new_copy">
                           <p>카카오 프렌즈 바이러스</p>
                           <span>10,000원</span>
                        </div>
                     </div>
                  </div>

                  <div class="swiper-slide new_slide" data-aos="zoom-in" data-aos-duration="3000">
                     <div class="newbox">
                        <a href="#" class="new_product prod5">
                           <div>
                              <div></div>
                              <img src="./img/카카오프렌즈_이탈리아.jpg" alt="">
                           </div>
                        </a>

                        <div class="new_copy">
                           <p>카카오 프렌즈 이탈리아</p>
                           <span>10,000원</span>
                        </div>
                     </div>
                  </div>

                  <div class="swiper-slide new_slide" data-aos="zoom-in" data-aos-duration="3500">
                     <div class="newbox">
                        <a href="#" class="new_product prod6">
                           <div>
                              <div></div>
                              <img src="./img/폭설에서살아남기.jpg" alt="">
                           </div>
                        </a>

                        <div class="new_copy">
                           <p>폭설에서 살아남기</p>
                           <span>12,000원</span>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="swiper-pagination"></div>
            </div>
            <div id="newNext" class="swiper-button-next"></div>
            <div id="newPrev" class="swiper-button-prev"></div>
         </section>
      </div>
   </article>

   <article class="iaan-news">
      <section class="after-effect">
         <div>
            <div>
               <h2>도서</h2>
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
               <h2>몰라</h2>
            </div>
         </div>
      </section>
   </article>
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

   <div class="imgd">
      <img src="./img/logo.png">
   </div>
   <jsp:include page="/footer.jsp"/>
</body>
<script>
document.querySelector('.menu-toggle').addEventListener('click', function () {
    document.querySelector('.menu').classList.toggle('active');
});
/* ---------------------------------------------------------------------------------- */
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

/* ---------------------------------------------------------------------------------- */

$(document).ready(function(){
    $.ajax({
        url: 'informList1.bo',
        type: 'GET',
        success: function(data){
            var tableContent = '';

            $('#noticeTable ').html(data); 
        }
    });
});

$(document).ready(function(){
    $.ajax({
        url: 'informList3.bo',
        type: 'GET',
        success: function(data){
            var tableContent = '';

            $('#noticeTable1').html(data); 
        }
    });
});

/* ---------------------------------------------------------------------------------- */

var newswiper = new Swiper(".new_swiper", {
        slidesPerView: '1',
        speed: 1000,
        breakpoints: {
            786: {
                slidesPerView: 2,
                spaceBetween: 20,
            },
            1200: {
                slidesPerView: 4,
                spaceBetween: 20,
            },
        },
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
            // type: "fraction",
        },
        navigation: {
            nextEl: "#newNext",
            prevEl: "#newPrev"
        },
    });

    $(document).ready(function () {
        $('.like').click(function () {
            $(this).toggleClass('liked');
        });
    });

    const boxes1 = document.querySelectorAll('.new_slide');

    const config2 = {
        threshold: 0.5
    };

    const tl2 = new TimelineMax()

    let observer2 = new IntersectionObserver(function (entries, self) {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                let overlap = '-=0.4';
                
                tl2.to(entry.target, 0.5, {
                    autoAlpha: 1
                }, overlap);
                self.unobserve(entry.target);
            }
        });
    }, config2);
    boxes1.forEach(box => {
        observer2.observe(box);
    });
    
    /* ---------------------------------------------------------------------------------- */
   
   const input = document.getElementById("search-input");
   const searchBtn = document.getElementById("search-btn");
   
   const expand = () => {
     searchBtn.classList.toggle("close");
     input.classList.toggle("square");
   };
   
   searchBtn.addEventListener("click", expand);


</script>
</html>
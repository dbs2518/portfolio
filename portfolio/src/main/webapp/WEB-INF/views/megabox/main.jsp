<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./includeHead.jsp" %>
</head>
<body>
   <header id="header">
      <div class="container">
         <div class="row">
            <div class="header clearfix">
               <h1>
                  <a href="${path}/megabox/main">
                     <em><img src="${path}/resources/megabox/img/logo.png" alt="MEGABOX"></em>
                     <strong><img src="${path}/resources/megabox/img/logo-sub.png" alt="LIFE THEATER"></strong>
                  </a>
               </h1>
               <nav id="mNav">
                  <h2 class="ir_so">메가박스 전체메뉴</h2>
                  <a href="#" class="ham"><span></span></a>
               </nav>
               <nav class="nav">
                  <ul class="clearfix">
                     <li><a href="#">영화</a></li>
                     <li><a href="#">극장</a></li>
                     <li><a href="#">이벤트</a></li>
                     <li><a href="#">스토어</a></li>
                     <li><a href="#">혜택</a></li>
                  </ul>
               </nav>
            </div>
         </div>
      </div>
   </header>
   <!-- //header -->

	<%
		String userID = null;
		if (session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
	%>

   <section id="banner">
      <h2 class="ir_so">최신 영화 소식</h2>
      <div class="banner_menu">
         <div class="container">
            <div class="row">
               <div class="bm_left">
                  <ul>
                     <li class="total"><a href="#"><i class="fa fa-bars" aria-hidden="true"></i> 전체메뉴</a></li>
                     <li class="line"><a href="#">필름 소사이어티</a></li>
                     <li><a href="#">클래식 소사이어티</a></li>
                  </ul>
               </div>
               <div class="bm_right">
                  <%
				      if(userID == null) {
			      %>	
                  <ul>
                     <li class="line"><a href="${path}/megabox/login">로그인</a></li>
                     <li class="line"><a href="${path}/megabox/join">회원가입</a></li>
                     <li><a href="${path}/megabox/ticketing">예매하기</a></li>
                  </ul>
                  <%
				      } else{
			      %>	
                  <ul>
                     <li class="line"><a href="${path}/megabox/ticketing">예매하기</a></li>
                     <li class="line"><a href="${path}/megabox/lookup">조회하기</a></li>
					 <li><a href="${path}/megabox/logout">로그아웃</a></li>
                  </ul>
			      <%
			      	  }
			      %>
               </div>
            </div>
         </div>
      </div>
      
      <div class="slider">
         <div class="swiper-container">
            <div class="swiper-wrapper">
               <div class="swiper-slide ss1">
                  <div class="container">
                     <div class="row1">
                        <h2>블랙위도우<em>Black Widow</em></h2>
                        <p>그녀의 진짜 이야기가 시작된다</p>
                     </div>
                  </div>
               </div>
               <div class="swiper-slide ss2">
                  <div class="container">
                     <div class="row1">
                        <h2>블랙위도우<em>Black Widow</em></h2>
                        <p>그녀의 진짜 이야기가 시작된다</p>
                     </div>
                  </div>
               </div>
               <div class="swiper-slide ss3">
                  <div class="container">
                     <div class="row1">
                        <h2>블랙위도우<em>Black Widow</em></h2>
                        <p>그녀의 진짜 이야기가 시작된다</p>
                     </div>
                  </div>
               </div>
            </div>
            <div class="swiper-pagination"></div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>   
         </div>
      </div>
   </section>
   <!-- //banner -->

   <section id="movie">
      <div class="container">
         <div class="row">
            <div class="movie">
               <h2 class="ir_so">영화 예매</h2>
               <div class="movie_title">
                  <ul>
                     <li class="active"><a href="#">박스오피스</a></li>
                     <li><a href="#">상영예정작</a></li>
                     <li><a href="#">특별상영</a></li>
                     <li><a href="#">큐레이션</a></li>
                  </ul>
               </div>
               <div class="movie_chart">
                  <div class="swiper-container2">
                     <div class="chart_cont1 swiper-wrapper">
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${path}/resources/megabox/img/poster01.jpg" srcset="${path}/resources/megabox/img/poster01@2.jpg 2x" alt="샹치">
                              </figure>
                              <div class="rank"><strong>1</strong></div>
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                                 <span class="icon b ir_pm">Boutique</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3><span class="icon a12 ir_pm">12세이상관람가</span> <strong>샹치</strong></h3>
                              <div class="infor_btn">
                                 <a href="#">상세보기</a>
                                 <a href="Ticketing.html">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${path}/resources/megabox/img/poster02.jpg" srcset="${path}/resources/megabox/img/poster02@2.jpg 2x" alt="코다">
                              </figure>
                              <div class="rank"><strong>2</strong></div>
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                                 <span class="icon b ir_pm">Boutique</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3><span class="icon a12 ir_pm">12세이상관람가</span><strong>코다</strong></h3>
                              <div class="infor_btn">
                                 <a href="#">상세보기</a>
                                 <a href="Ticketing.html">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${path}/resources/megabox/img/poster03.jpg" srcset="${path}/resources/megabox/img/poster03@2.jpg 2x" alt="여름날우리">
                              </figure>
                              <div class="rank"><strong>3</strong></div>
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                                 <span class="icon b ir_pm">Boutique</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3><span class="icon a12 ir_pm">12세이상관람가</span> <strong>여름날우리</strong></h3>
                              <div class="infor_btn">
                                 <a href="#">상세보기</a>
                                 <a href="Ticketing.html">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${path}/resources/megabox/img/poster04.jpg" srcset="${path}/resources/megabox/img/poster04@2.jpg 2x" alt="코드카림">
                              </figure>
                              <div class="rank"><strong>4</strong></div>
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                                 <span class="icon b ir_pm">Boutique</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3><span class="icon a15 ir_pm">15세이상관람가 </span> <strong>코드카림</strong></h3>
                              <div class="infor_btn">
                                 <a href="#">상세보기</a>
                                 <a href="Ticketing.html">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${path}/resources/megabox/img/poster05.jpg" srcset="${path}/resources/megabox/img/poster05@2.jpg 2x" alt="상견니">
                              </figure>
                              <div class="rank"><strong>5</strong></div>
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                                 <span class="icon b ir_pm">Boutique</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3><span class="icon a12 ir_pm">12세이상관람가</span> <strong>상견니</strong></h3>
                              <div class="infor_btn">
                                 <a href="#">상세보기</a>
                                 <a href="Ticketing.html">예매하기</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- //chart_cont1 -->
                  <div class="swiper-container2">
                     <div class="chart_cont1 swiper-wrapper">
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${path}/resources/megabox/img/poster10.jpg" srcset="${path}/resources/megabox/img/poster10@2.jpg 2x" alt="드림걸즈">
                              </figure>
                              <div class="rank"><strong>1</strong></div>
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                                 <span class="icon b ir_pm">Boutique</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3><span class="icon a12 ir_pm">12세이상관람가</span> <strong>드림걸즈</strong></h3>
                              <div class="infor_btn">
                                 <a href="#">상세보기</a>
                                 <a href="Ticketing.html">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${path}/resources/megabox/img/poster01.jpg" srcset="${path}/resources/megabox/img/poster01@2.jpg 2x" alt="샹치">
                              </figure>
                              <div class="rank"><strong>2</strong></div>
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                                 <span class="icon b ir_pm">Boutique</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3><span class="icon a12 ir_pm">12세이상관람가</span><strong>샹치</strong></h3>
                              <div class="infor_btn">
                                 <a href="#">상세보기</a>
                                 <a href="Ticketing.html">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${path}/resources/megabox/img/poster11.jpg" srcset="${path}/resources/megabox/img/poster11@2.jpg 2x" alt="최선의삶">
                              </figure>
                              <div class="rank"><strong>3</strong></div>
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                                 <span class="icon b ir_pm">Boutique</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3><span class="icon a15 ir_pm">15세이상관람가</span> <strong>최선의삶</strong></h3>
                              <div class="infor_btn">
                                 <a href="#">상세보기</a>
                                 <a href="Ticketing.html">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${path}/resources/megabox/img/poster16.jpg" srcset="${path}/resources/megabox/img/poster16@2.jpg 2x" alt="모가디슈">
                              </figure>
                              <div class="rank"><strong>4</strong></div>
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                                 <span class="icon b ir_pm">Boutique</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3><span class="icon a15 ir_pm">15세이상관람가 </span> <strong>모가디슈</strong></h3>
                              <div class="infor_btn">
                                 <a href="#">상세보기</a>
                                 <a href="Ticketing.html">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${path}/resources/megabox/img/poster12.jpg" srcset="${path}/resources/megabox/img/poster12@2.jpg 2x" alt="언어의정원">
                              </figure>
                              <div class="rank"><strong>5</strong></div>
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                                 <span class="icon b ir_pm">Boutique</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3><span class="icon a12 ir_pm">12세이상관람가</span> <strong>언어의정원</strong></h3>
                              <div class="infor_btn">
                                 <a href="#">상세보기</a>
                                 <a href="Ticketing.html">예매하기</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- //chart_cont2 -->
                  <div class="swiper-container2">
                     <div class="chart_cont1 swiper-wrapper">
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${path}/resources/megabox/img/poster01.jpg" srcset="${path}/resources/megabox/img/poster01@2.jpg 2x" alt="샹치">
                              </figure>
                              <div class="rank"><strong>1</strong></div>
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                                 <span class="icon b ir_pm">Boutique</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3><span class="icon a12 ir_pm">12세이상관람가</span> <strong>샹치</strong></h3>
                              <div class="infor_btn">
                                 <a href="#">상세보기</a>
                                 <a href="Ticketing.html">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${path}/resources/megabox/img/poster02.jpg" srcset="${path}/resources/megabox/img/poster02@2.jpg 2x" alt="코다">
                              </figure>
                              <div class="rank"><strong>2</strong></div>
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                                 <span class="icon b ir_pm">Boutique</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3><span class="icon a12 ir_pm">12세이상관람가</span><strong>코다</strong></h3>
                              <div class="infor_btn">
                                 <a href="#">상세보기</a>
                                 <a href="Ticketing.html">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${path}/resources/megabox/img/poster03.jpg" srcset="${path}/resources/megabox/img/poster03@2.jpg 2x" alt="여름날우리">
                              </figure>
                              <div class="rank"><strong>3</strong></div>
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                                 <span class="icon b ir_pm">Boutique</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3><span class="icon a12 ir_pm">12세이상관람가</span> <strong>여름날우리</strong></h3>
                              <div class="infor_btn">
                                 <a href="#">상세보기</a>
                                 <a href="Ticketing.html">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${path}/resources/megabox/img/poster04.jpg" srcset="${path}/resources/megabox/img/poster04@2.jpg 2x" alt="코드카림">
                              </figure>
                              <div class="rank"><strong>4</strong></div>
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                                 <span class="icon b ir_pm">Boutique</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3><span class="icon a15 ir_pm">15세이상관람가 </span> <strong>코드카림</strong></h3>
                              <div class="infor_btn">
                                 <a href="#">상세보기</a>
                                 <a href="Ticketing.html">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${path}/resources/megabox/img/poster05.jpg" srcset="${path}/resources/megabox/img/poster05@2.jpg 2x" alt="상견니">
                              </figure>
                              <div class="rank"><strong>5</strong></div>
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                                 <span class="icon b ir_pm">Boutique</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3><span class="icon a12 ir_pm">12세이상관람가</span> <strong>상견니</strong></h3>
                              <div class="infor_btn">
                                 <a href="#">상세보기</a>
                                 <a href="Ticketing.html">예매하기</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- //chart_cont3 -->
                  <div class="swiper-container2">
                     <div class="chart_cont1 swiper-wrapper">
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${path}/resources/megabox/img/poster10.jpg" srcset="${path}/resources/megabox/img/poster10@2.jpg 2x" alt="드림걸즈">
                              </figure>
                              <div class="rank"><strong>1</strong></div>
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                                 <span class="icon b ir_pm">Boutique</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3><span class="icon a12 ir_pm">12세이상관람가</span> <strong>드림걸즈</strong></h3>
                              <div class="infor_btn">
                                 <a href="#">상세보기</a>
                                 <a href="Ticketing.html">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${path}/resources/megabox/img/poster01.jpg" srcset="${path}/resources/megabox/img/poster01@2.jpg 2x" alt="샹치">
                              </figure>
                              <div class="rank"><strong>2</strong></div>
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                                 <span class="icon b ir_pm">Boutique</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3><span class="icon a12 ir_pm">12세이상관람가</span><strong>샹치</strong></h3>
                              <div class="infor_btn">
                                 <a href="#">상세보기</a>
                                 <a href="Ticketing.html">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${path}/resources/megabox/img/poster11.jpg" srcset="${path}/resources/megabox/img/poster11@2.jpg 2x" alt="최선의삶">
                              </figure>
                              <div class="rank"><strong>3</strong></div>
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                                 <span class="icon b ir_pm">Boutique</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3><span class="icon a15 ir_pm">15세이상관람가</span> <strong>최선의삶</strong></h3>
                              <div class="infor_btn">
                                 <a href="#">상세보기</a>
                                 <a href="Ticketing.html">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${path}/resources/megabox/img/poster16.jpg" srcset="${path}/resources/megabox/img/poster16@2.jpg 2x" alt="모가디슈">
                              </figure>
                              <div class="rank"><strong>4</strong></div>
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                                 <span class="icon b ir_pm">Boutique</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3><span class="icon a15 ir_pm">15세이상관람가 </span> <strong>모가디슈</strong></h3>
                              <div class="infor_btn">
                                 <a href="#">상세보기</a>
                                 <a href="#">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${path}/resources/megabox/img/poster12.jpg" srcset="${path}/resources/megabox/img/poster12@2.jpg 2x" alt="언어의정원">
                              </figure>
                              <div class="rank"><strong>5</strong></div>
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                                 <span class="icon b ir_pm">Boutique</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3><span class="icon a12 ir_pm">12세이상관람가</span> <strong>언어의정원</strong></h3>
                              <div class="infor_btn">
                                 <a href="#">상세보기</a>
                                 <a href="Ticketing.html">예매하기</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- //chart_cont4 -->
               </div>
            </div>
         </div>
      </div>
   </section>
   <!-- //movie -->

   <section id="event">
      <div class="container">
         <div class="row">
            <div class="event">
               <h2>혜택</h2>
               <div class="event_left">
                  <div class="event_slider">
                     <img src="${path}/resources/megabox/img/event01.jpg" srcset="${path}/resources/megabox/img/event01@2.jpg 2x" alt="신규 회원">
                  </div>
                  <div class="event_box1">
                     <img src="${path}/resources/megabox/img/event02.jpg" srcset="${path}/resources/megabox/img/event02@2.jpg 2x" alt="kt 멤버십 에이드 무료 증정">
                  </div>
                  <div class="event_box2">
                     <img src="${path}/resources/megabox/img/event03.jpg" srcset="${path}/resources/megabox/img/event03@2.jpg 2x" alt="메가박싱 day">
                  </div>
               </div>
               <div class="event_right">
                  <img src="${path}/resources/megabox/img/event04.jpg" srcset="${path}/resources/megabox/img/event04@2.jpg 2x" alt="사표 대신 영화표">
               </div>
            </div>
         </div>
      </div>
   </section>
   <!-- //event -->

   <section id="opening">
      <div class="container">
         <div class="row">
            <div class="opening">
               <h2><span class="grand icon ir_pm">Grand opening</span></h2>
               <p class="desc">LIFE THEATER로 새롭게 시작하는 메가박스를 만나보세요!</p>
               <div class="open_box">
                  <div>
                     <h3>신규 오픈</h3>
                     <p><em>대전신세계</em><strong>아트앤사이언스</strong>08월27일</p>
                  </div>
                  <div>
                     <h3>오픈 준비중</h3>
                     <p><em>준비중</em><strong>준비중</strong>준비중</p>
                  </div>
                  <div>
                     <h3>오픈 준비중</h3>
                     <p><em>준비중</em><strong>준비중</strong>준비중</p>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
   <!-- //opening -->

   <section id="help">
      <div class="container">
         <div class="row">
            <div class="help clearfix">
               <article class="help_box1">
                  <h3>공지사항</h3>
                  <div class="notice">
                     <ul>
                        <li class="active"><a href="#">메가공지</a>
                           <ul>
                              <li>
                                 <dl>
                                    <dt><strong class="bar">메가박스</strong> <em>2021.08.31</em></dt>
                                    <dd><a href="#">[라이뷰뷰잉] 뱅드림! 9th☆LIVE 「Mythology」 진행안내</a></dd>
                                 </dl>
                              </li>
                              <li>
                                 <dl>
                                    <dt><strong class="bar">메가박스</strong> <em>2021.08.31</em></dt>
                                    <dd><a href="#">[라이뷰뷰잉] 뱅드림! 9th☆LIVE 「Mythology」 진행안내</a></dd>
                                 </dl>
                              </li>
                              <li>
                                 <dl>
                                    <dt><strong class="bar">메가박스</strong> <em>2021.08.31</em></dt>
                                    <dd><a href="#">[라이뷰뷰잉] 뱅드림! 9th☆LIVE 「Mythology」 진행안내</a></dd>
                                 </dl>
                              </li>
                              <li>
                                 <dl>
                                    <dt><strong class="bar">메가박스</strong> <em>2021.08.31</em></dt>
                                    <dd><a href="#">[라이뷰뷰잉] 뱅드림! 9th☆LIVE 「Mythology」 진행안내</a></dd>
                                 </dl>
                              </li>
                           </ul>
                        </li>
                        <li><a href="#">지점 공지</a>
                           <ul>
                              <li>
                                 <dl>
                                    <dt><strong class="bar">수원</strong> <em>2021.08.26</em></dt>
                                    <dd><a href="#">[공지] 휴점 안내</a></dd>
                                 </dl>
                              </li>
                              <li>
                                 <dl>
                                    <dt><strong class="bar">수원</strong> <em>2021.08.26</em></dt>
                                    <dd><a href="#">[공지] 휴점 안내</a></dd>
                                 </dl>
                              </li>
                              <li>
                                 <dl>
                                    <dt><strong class="bar">수원</strong> <em>2021.08.26</em></dt>
                                    <dd><a href="#">[공지] 휴점 안내</a></dd>
                                 </dl>
                              </li>
                              <li>
                                 <dl>
                                    <dt><strong class="bar">수원</strong> <em>2021.08.26</em></dt>
                                    <dd><a href="#">[공지] 휴점 안내</a></dd>
                                 </dl>
                              </li>
                           </ul>
                        </li>
                     </ul>
                  </div>
               </article>
               <article class="help_box2">
                  <h3>메가박스 할인카드</h3>
                  <div class="card">
                     <ul>
                        <li>
                           <a href="#">
                              <span><img src="${path}/resources/megabox/img/card01.jpg" srcset="${path}/resources/megabox/img/card01@2.jpg 2x" alt="card01"></span>
                              <strong>T멤버십 일반</strong>
                              <em>영화 2,000원 현장 즉시 할인(1일 5매)</em>
                           </a>
                        </li>
                        <li>
                           <a href="#">
                              <span><img src="${path}/resources/megabox/img/card02.jpg" srcset="${path}/resources/megabox/img/card02@2.jpg 2x" alt="card01"></span>
                              <strong>T멤버십 일반</strong>
                              <em>영화 2,000원 현장 즉시 할인(1일 5매)</em>
                           </a>
                        </li>
                        <li>
                           <a href="#">
                              <span><img src="${path}/resources/megabox/img/card03.jpg" srcset="${path}/resources/megabox/img/card03@2.jpg 2x" alt="card01"></span>
                              <strong>T멤버십 일반</strong>
                              <em>영화 2,000원 현장 즉시 할인(1일 5매)</em>
                           </a>
                        </li>
                     </ul>
                  </div>
               </article>
               <article class="help_box3">
                  <h3>고객센터</h3>
                  <div class="service">
                     <ul>
                        <li>
                           <a href="#">
                              <span class="img_svg">
                                 <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                                    viewBox="0 0 120 120" style="enable-background:new 0 0 120 120;" xml:space="preserve">
                                    <g>
                                       <polygon style="fill:none;" points="86.9,57.4 98.1,48.3 97.9,48.2 86.9,48.2"/>
                                       <polygon style="fill:none;" points="22.5,48.2 21.9,48.6 32.9,57.6 32.9,48.2"/>
                                       <polygon style="fill:#FFFFFF;" points="97.9,48.2 86.9,42 86.9,48.2"/>
                                       <polygon style="fill:#FFFFFF;" points="32.9,42.4 22.5,48.2 32.9,48.2"/>
                                       <path style="fill:#FFFFFF;" d="M83.9,23c0-0.7-0.6-1.3-1.3-1.3H37.2c-0.7,0-1.3,0.6-1.3,1.3v37L49.2,71c3.2-0.9,6.7-1.4,10.3-1.4
                                          c3.5,0,7,0.5,10.5,1.5l13.9-11.2V23z M52,40.5c0-0.8,0.7-1.5,1.5-1.5h24c0.8,0,1.5,0.7,1.5,1.5S78.3,42,77.5,42h-24
                                          C52.7,42,52,41.3,52,40.5z M41.5,31c-0.8,0-1.5-0.7-1.5-1.5s0.7-1.5,1.5-1.5h19c0.8,0,1.5,0.7,1.5,1.5S61.3,31,60.5,31H41.5z
                                             M73.5,52h-32c-0.8,0-1.5-0.7-1.5-1.5s0.7-1.5,1.5-1.5h32c0.8,0,1.5,0.7,1.5,1.5S74.3,52,73.5,52z"/>
                                       <path d="M32.9,42.4v5.8v9.4l3,2.5V23c0-0.7,0.6-1.3,1.3-1.3h45.3c0.7,0,1.3,0.6,1.3,1.3v36.8l3-2.4v-9.2V42v-3.4V23
                                          c0-2.4-1.9-4.3-4.3-4.3H37.2c-2.4,0-4.3,1.9-4.3,4.3v15.9V42.4z"/>
                                       <path style="fill:#FFFFFF;" d="M73.4,72.1c6,2.3,11.8,6,17.2,11.1c3.8,3.6,6.7,7.1,8.5,9.7V51.4L73.4,72.1z"/>
                                       <path style="fill:#FFFFFF;" d="M20.6,51.4v41.3c4-5.7,12.6-16,25.2-20.7L20.6,51.4z"/>
                                       <path style="fill:#755CA7;" d="M101.6,47.1l0.1-0.2l-14.9-8.4V42l11.1,6.2l0.2,0.1l-11.3,9.1l-3,2.4L70,71c-3.4-1-6.9-1.5-10.5-1.5
                                          c-3.7,0-7.1,0.5-10.3,1.4L35.9,60l-3-2.5l-11-9l0.6-0.3l10.4-5.8v-3.4L19,46.7c-0.2,0-0.4,0-0.6,0.1c-0.5,0.2-0.9,0.8-0.9,1.4v49.3
                                          c0,0.8,0.7,1.5,1.5,1.5h0.2h81.1h0.2c0.8,0,1.5-0.7,1.5-1.5V48.2C102.1,47.8,102,47.4,101.6,47.1z M99.1,92.9
                                          c-1.9-2.6-4.7-6.1-8.5-9.7c-5.4-5.1-11.2-8.8-17.2-11.1l25.8-20.8V92.9z M97.7,96H22c4.2-6.2,17.5-23.5,37.5-23.5
                                          C79.6,72.5,93.3,89.7,97.7,96z M20.6,92.7V51.4L45.8,72C33.2,76.8,24.6,87,20.6,92.7z"/>
                                       <path style="fill:#FFFFFF;" d="M59.5,72.5c-20,0-33.4,17.2-37.5,23.5h75.7C93.3,89.7,79.6,72.5,59.5,72.5z"/>
                                       <path d="M62,29.5c0-0.8-0.7-1.5-1.5-1.5h-19c-0.8,0-1.5,0.7-1.5,1.5s0.7,1.5,1.5,1.5h19C61.3,31,62,30.3,62,29.5z"/>
                                       <path d="M77.5,42c0.8,0,1.5-0.7,1.5-1.5S78.3,39,77.5,39h-24c-0.8,0-1.5,0.7-1.5,1.5s0.7,1.5,1.5,1.5H77.5z"/>
                                       <path d="M73.5,49h-32c-0.8,0-1.5,0.7-1.5,1.5s0.7,1.5,1.5,1.5h32c0.8,0,1.5-0.7,1.5-1.5S74.3,49,73.5,49z"/>
                                    </g>
                                 </svg>
                              </span>
                              <strong>1:1 문의</strong>
                           </a>
                        </li>
                        <li>
                           <a href="#">
                              <span class="img_svg">
                                 <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                                viewBox="0 0 120 120" style="enable-background:new 0 0 120 120;" xml:space="preserve">
                                    <g>
                                       <polygon style="fill:none;" points="199.9,54.4 211.1,45.3 210.9,45.2 199.9,45.2  "/>
                                       <polygon style="fill:none;" points="135.5,45.2 134.9,45.6 145.9,54.6 145.9,45.2  "/>
                                       <polygon style="fill:#FFFFFF;" points="210.9,45.2 199.9,39 199.9,45.2  "/>
                                       <polygon style="fill:#FFFFFF;" points="145.9,39.4 135.5,45.2 145.9,45.2  "/>
                                       <path style="fill:#FFFFFF;" d="M196.9,20c0-0.7-0.6-1.3-1.3-1.3h-45.3c-0.7,0-1.3,0.6-1.3,1.3v37L162.2,68c3.2-0.9,6.7-1.4,10.3-1.4
                                          c3.5,0,7,0.5,10.5,1.5l13.9-11.2V20z M165,37.5c0-0.8,0.7-1.5,1.5-1.5h24c0.8,0,1.5,0.7,1.5,1.5s-0.7,1.5-1.5,1.5h-24
                                          C165.7,39,165,38.3,165,37.5z M154.5,28c-0.8,0-1.5-0.7-1.5-1.5s0.7-1.5,1.5-1.5h19c0.8,0,1.5,0.7,1.5,1.5s-0.7,1.5-1.5,1.5H154.5z
                                             M186.5,49h-32c-0.8,0-1.5-0.7-1.5-1.5s0.7-1.5,1.5-1.5h32c0.8,0,1.5,0.7,1.5,1.5S187.3,49,186.5,49z"/>
                                       <path d="M145.9,39.4v5.8v9.4l3,2.5V20c0-0.7,0.6-1.3,1.3-1.3h45.3c0.7,0,1.3,0.6,1.3,1.3v36.8l3-2.4v-9.2V39v-3.4V20
                                          c0-2.4-1.9-4.3-4.3-4.3h-45.3c-2.4,0-4.3,1.9-4.3,4.3v15.9V39.4z"/>
                                       <path style="fill:#FFFFFF;" d="M186.4,69.1c6,2.3,11.8,6,17.2,11.1c3.8,3.6,6.7,7.1,8.5,9.7V48.4L186.4,69.1z"/>
                                       <path style="fill:#FFFFFF;" d="M133.6,48.4v41.3c4-5.7,12.6-16,25.2-20.7L133.6,48.4z"/>
                                       <path style="fill:#755CA7;" d="M214.6,44.1l0.1-0.2l-14.9-8.4V39l11.1,6.2l0.2,0.1l-11.3,9.1l-3,2.4L183,68c-3.4-1-6.9-1.5-10.5-1.5
                                          c-3.7,0-7.1,0.5-10.3,1.4L148.9,57l-3-2.5l-11-9l0.6-0.3l10.4-5.8v-3.4L132,43.7c-0.2,0-0.4,0-0.6,0.1c-0.5,0.2-0.9,0.8-0.9,1.4
                                          v49.3c0,0.8,0.7,1.5,1.5,1.5h0.2h81.1h0.2c0.8,0,1.5-0.7,1.5-1.5V45.2C215.1,44.8,215,44.4,214.6,44.1z M212.1,89.9
                                          c-1.9-2.6-4.7-6.1-8.5-9.7c-5.4-5.1-11.2-8.8-17.2-11.1l25.8-20.8V89.9z M210.7,93H135c4.2-6.2,17.5-23.5,37.5-23.5
                                          C192.6,69.5,206.3,86.7,210.7,93z M133.6,89.7V48.4L158.8,69C146.2,73.8,137.6,84,133.6,89.7z"/>
                                       <path style="fill:#FFFFFF;" d="M172.5,69.5c-20,0-33.4,17.2-37.5,23.5h75.7C206.3,86.7,192.6,69.5,172.5,69.5z"/>
                                       <path d="M175,26.5c0-0.8-0.7-1.5-1.5-1.5h-19c-0.8,0-1.5,0.7-1.5,1.5s0.7,1.5,1.5,1.5h19C174.3,28,175,27.3,175,26.5z"/>
                                       <path d="M190.5,39c0.8,0,1.5-0.7,1.5-1.5s-0.7-1.5-1.5-1.5h-24c-0.8,0-1.5,0.7-1.5,1.5s0.7,1.5,1.5,1.5H190.5z"/>
                                       <path d="M186.5,46h-32c-0.8,0-1.5,0.7-1.5,1.5s0.7,1.5,1.5,1.5h32c0.8,0,1.5-0.7,1.5-1.5S187.3,46,186.5,46z"/>
                                       <path style="fill:#FFFFFF;" d="M85.3,65.3c0.8,0.1,1.6-0.2,2.3-0.7c0.6-0.5,1-1.3,1.1-2.1c0.1-0.8-0.2-1.6-0.7-2.3c-0.5-0.6-1.3-1-2.1-1.1
                                          c-0.1,0-0.2,0-0.3,0c-0.7,0-1.4,0.2-1.9,0.7c-0.6,0.5-1,1.3-1.1,2.1c-0.1,0.8,0.2,1.6,0.7,2.3C83.7,64.8,84.5,65.2,85.3,65.3z"/>
                                       <path style="fill:#FFFFFF;" d="M70.5,58.2c0.8,0.1,1.6-0.2,2.3-0.7c1.3-1.1,1.5-3,0.5-4.4c-0.6-0.8-1.5-1.2-2.4-1.2c-0.7,0-1.4,0.2-2,0.7
                                          c-1.3,1.1-1.5,3-0.5,4.4C68.9,57.7,69.6,58.1,70.5,58.2z"/>
                                       <path style="fill:#FFFFFF;" d="M44.4,69.9c4.7-0.6,9,2.7,9.6,7.4c0,0.3,0.1,0.6,0.1,1h11.4c0.1-4.2,3.2-7.8,7.4-8.3c4.7-0.6,9,2.7,9.6,7.4
                                          c0.3,2.4-0.5,4.8-1.9,6.5l11.9,12.7c2.7,1.9,6.6,2.1,9.6,0.5c2.5-1.3,4-3.5,4-6.1c0-1-0.7-3.8-1.1-5.1c-0.2-0.9-0.4-1.3-0.4-1.6
                                          l-8.1-29.9c-1.5-6.2-6.3-10.4-11.9-10.4h-49c-5.6,0-10.1,5.4-11.9,10.4l-9.2,32.1c-0.3,1.1-0.5,2.2-0.4,3.3c0,0.5,0,0.9,0,1.1
                                          c0.3,2.7,1.9,4.9,4.3,6.1c2.6,1.3,5.6,1.2,8.1-0.2c0.4-0.2,0.8-0.5,1.2-0.8l11.8-11.7c-1.2-1.3-2.1-2.9-2.3-4.8
                                          C36.5,74.7,39.8,70.5,44.4,69.9z M79,61.5c0.2-1.8,1-3.3,2.4-4.4c1.4-1.1,3.1-1.6,4.8-1.4c1.8,0.2,3.3,1,4.4,2.4s1.6,3.1,1.4,4.8
                                          c-0.2,1.8-1,3.3-2.4,4.4c-1.2,1-2.6,1.5-4.1,1.5c-0.2,0-0.5,0-0.7,0c-1.8-0.2-3.3-1-4.4-2.4S78.9,63.2,79,61.5z M66.6,50
                                          c2.8-2.3,7-1.9,9.3,1c2.3,2.8,1.9,7-1,9.3c-1.2,1-2.6,1.5-4.1,1.5c-0.2,0-0.5,0-0.7,0c-1.8-0.2-3.3-1-4.4-2.4
                                          C63.4,56.4,63.8,52.3,66.6,50z M31.4,59.9c0-1,0.8-1.8,1.8-1.8h5.4v-5.4c0-1,0.8-1.8,1.8-1.8s1.8,0.8,1.8,1.8v5.4h5.4
                                          c1,0,1.8,0.8,1.8,1.8s-0.8,1.8-1.8,1.8H42V67c0,1-0.8,1.8-1.8,1.8S38.5,68,38.5,67v-5.4h-5.4C32.2,61.7,31.4,60.9,31.4,59.9z"/>
                                       <path style="fill:#000000;" d="M108.3,84.9c-0.1-0.5-0.3-1-0.3-1.2l-8.2-30.4c-1.9-7.8-8-13-15.3-13H61.8c0-0.1,0-0.1,0-0.2V20.2
                                          c0-1-0.8-1.8-1.8-1.8s-1.8,0.8-1.8,1.8v19.9c0,0.1,0,0.1,0,0.2H35.5c-7.4,0-13,6.4-15.2,12.8L11,85.4c-0.4,1.4-0.6,2.9-0.6,4.4
                                          c0,1,0,1.3,0.1,1.4c0.5,3.9,2.7,7.1,6.2,8.8c3.6,1.8,7.9,1.7,11.4-0.3c0.6-0.3,1.2-0.7,1.7-1.2l12.5-12.3c-1.1-0.5-2.1-1.1-3-2
                                          L27.5,95.9c-0.4,0.3-0.8,0.6-1.2,0.8c-2.5,1.4-5.5,1.5-8.1,0.2c-2.4-1.2-4-3.4-4.3-6.1c0-0.2,0-0.6,0-1.1c0-1.1,0.1-2.3,0.4-3.3
                                          l9.2-32.1c1.8-5,6.3-10.4,11.9-10.4h49c5.6,0,10.4,4.1,11.9,10.4l8.1,29.9c0,0.3,0.2,0.7,0.4,1.6c0.4,1.3,1.1,4.1,1.1,5.1
                                          c0,2.6-1.5,4.8-4,6.1c-3.1,1.6-6.9,1.3-9.6-0.5L80.6,83.8c-0.7,0.9-1.7,1.6-2.8,2.2L90,99l0.3,0.2c2.2,1.6,4.8,2.3,7.4,2.3
                                          c2,0,4.1-0.5,6-1.4c3.7-1.9,5.9-5.3,5.9-9.3C109.5,89.5,109,87.3,108.3,84.9z"/>
                                       <path style="fill:#000000;" d="M65.5,79.4c-0.1-0.4-0.1-0.8-0.1-1.2H54.1c0,1.2-0.2,2.4-0.7,3.5h12.8C65.9,81,65.6,80.2,65.5,79.4z"/>
                                       <path style="fill:#FFFFFF;" d="M50.5,77.7c-0.3-2.5-2.5-4.4-5-4.4c-0.2,0-0.4,0-0.6,0c-2.8,0.4-4.7,2.9-4.4,5.7c0.4,2.8,2.9,4.7,5.7,4.4
                                          C48.9,83,50.9,80.4,50.5,77.7z"/>
                                       <path style="fill:#755CA7;" d="M54.1,78.2c0-0.3,0-0.6-0.1-1c-0.6-4.7-4.9-8-9.6-7.4c-4.7,0.6-8,4.9-7.4,9.6c0.2,1.9,1.1,3.5,2.3,4.8
                                          c0.8,0.9,1.8,1.5,3,2c1,0.4,2.1,0.6,3.2,0.6c0.4,0,0.7,0,1.1-0.1c3.1-0.4,5.6-2.4,6.8-5.1C53.8,80.6,54.1,79.4,54.1,78.2z M40.5,79
                                          c-0.4-2.8,1.6-5.3,4.4-5.7c0.2,0,0.4,0,0.6,0c2.5,0,4.7,1.9,5,4.4c0.4,2.8-1.6,5.3-4.4,5.7C43.4,83.7,40.9,81.7,40.5,79z"/>
                                       <path style="fill:#FFFFFF;" d="M74.7,83.3c2.8-0.4,4.7-2.9,4.4-5.7c-0.3-2.5-2.5-4.4-5-4.4c-0.2,0-0.4,0-0.6,0c-2.8,0.4-4.7,2.9-4.4,5.7
                                          C69.4,81.7,71.9,83.7,74.7,83.3z"/>
                                       <path style="fill:#755CA7;" d="M80.6,83.8c1.5-1.8,2.2-4.1,1.9-6.5c-0.6-4.7-4.9-8-9.6-7.4c-4.3,0.5-7.4,4.2-7.4,8.3c0,0.4,0,0.8,0.1,1.2
                                          c0.1,0.8,0.3,1.6,0.6,2.3c1.3,3.1,4.4,5.2,7.9,5.2c0.4,0,0.7,0,1.1-0.1c1-0.1,1.9-0.4,2.7-0.8C78.9,85.4,79.8,84.7,80.6,83.8z
                                             M69,79c-0.4-2.8,1.6-5.3,4.4-5.7c0.2,0,0.4,0,0.6,0c2.5,0,4.7,1.9,5,4.4c0.4,2.8-1.6,5.3-4.4,5.7C71.9,83.7,69.4,81.7,69,79z"/>
                                       <path style="fill:#755CA7;" d="M38.5,67c0,1,0.8,1.8,1.8,1.8S42,68,42,67v-5.4h5.4c1,0,1.8-0.8,1.8-1.8s-0.8-1.8-1.8-1.8H42v-5.4
                                          c0-1-0.8-1.8-1.8-1.8s-1.8,0.8-1.8,1.8v5.4h-5.4c-1,0-1.8,0.8-1.8,1.8s0.8,1.8,1.8,1.8h5.4V67z"/>
                                       <path style="fill:#755CA7;" d="M70.1,61.7c0.2,0,0.5,0,0.7,0c1.5,0,3-0.5,4.1-1.5c2.8-2.3,3.3-6.5,1-9.3c-2.3-2.8-6.5-3.3-9.3-1
                                          c-2.8,2.3-3.3,6.5-1,9.3C66.8,60.6,68.3,61.5,70.1,61.7z M68.8,52.7c0.6-0.5,1.3-0.7,2-0.7c0.9,0,1.8,0.4,2.4,1.2
                                          c1.1,1.3,0.9,3.3-0.5,4.4c-0.6,0.5-1.4,0.8-2.3,0.7c-0.8-0.1-1.6-0.5-2.1-1.1C67.3,55.7,67.5,53.8,68.8,52.7z"/>
                                       <path style="fill:#755CA7;" d="M84.9,68.8c0.2,0,0.5,0,0.7,0c1.5,0,3-0.5,4.1-1.5c1.4-1.1,2.2-2.7,2.4-4.4c0.2-1.8-0.3-3.5-1.4-4.8
                                          s-2.7-2.2-4.4-2.4c-1.7-0.2-3.5,0.3-4.8,1.4c-1.4,1.1-2.2,2.7-2.4,4.4c-0.2,1.8,0.3,3.5,1.4,4.8S83.2,68.6,84.9,68.8z M82.5,61.9
                                          c0.1-0.8,0.5-1.6,1.1-2.1c0.6-0.5,1.2-0.7,1.9-0.7c0.1,0,0.2,0,0.3,0c0.8,0.1,1.6,0.5,2.1,1.1c0.5,0.6,0.8,1.5,0.7,2.3
                                          c-0.1,0.8-0.5,1.6-1.1,2.1c-0.6,0.5-1.5,0.8-2.3,0.7c-0.8-0.1-1.6-0.5-2.1-1.1C82.7,63.5,82.4,62.7,82.5,61.9z"/>
                                    </g>
                                 </svg>
                              </span>
                              <strong>단체관람</strong>
                           </a>
                        </li>
                        <li>
                           <a href="#">
                              <span class="img_svg">
                                 <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                                viewBox="0 0 120 120" style="enable-background:new 0 0 120 120;" xml:space="preserve">
                                    <g>
                                       <polygon style="fill:none;" points="199.9,54.4 211.1,45.3 210.9,45.2 199.9,45.2  "/>
                                       <polygon style="fill:none;" points="135.5,45.2 134.9,45.6 145.9,54.6 145.9,45.2  "/>
                                       <polygon style="fill:#FFFFFF;" points="210.9,45.2 199.9,39 199.9,45.2  "/>
                                       <polygon style="fill:#FFFFFF;" points="145.9,39.4 135.5,45.2 145.9,45.2  "/>
                                       <path style="fill:#FFFFFF;" d="M196.9,20c0-0.7-0.6-1.3-1.3-1.3h-45.3c-0.7,0-1.3,0.6-1.3,1.3v37L162.2,68c3.2-0.9,6.7-1.4,10.3-1.4
                                          c3.5,0,7,0.5,10.5,1.5l13.9-11.2V20z M165,37.5c0-0.8,0.7-1.5,1.5-1.5h24c0.8,0,1.5,0.7,1.5,1.5s-0.7,1.5-1.5,1.5h-24
                                          C165.7,39,165,38.3,165,37.5z M154.5,28c-0.8,0-1.5-0.7-1.5-1.5s0.7-1.5,1.5-1.5h19c0.8,0,1.5,0.7,1.5,1.5s-0.7,1.5-1.5,1.5H154.5z
                                             M186.5,49h-32c-0.8,0-1.5-0.7-1.5-1.5s0.7-1.5,1.5-1.5h32c0.8,0,1.5,0.7,1.5,1.5S187.3,49,186.5,49z"/>
                                       <path d="M145.9,39.4v5.8v9.4l3,2.5V20c0-0.7,0.6-1.3,1.3-1.3h45.3c0.7,0,1.3,0.6,1.3,1.3v36.8l3-2.4v-9.2V39v-3.4V20
                                          c0-2.4-1.9-4.3-4.3-4.3h-45.3c-2.4,0-4.3,1.9-4.3,4.3v15.9V39.4z"/>
                                       <path style="fill:#FFFFFF;" d="M186.4,69.1c6,2.3,11.8,6,17.2,11.1c3.8,3.6,6.7,7.1,8.5,9.7V48.4L186.4,69.1z"/>
                                       <path style="fill:#FFFFFF;" d="M133.6,48.4v41.3c4-5.7,12.6-16,25.2-20.7L133.6,48.4z"/>
                                       <path style="fill:#755CA7;" d="M214.6,44.1l0.1-0.2l-14.9-8.4V39l11.1,6.2l0.2,0.1l-11.3,9.1l-3,2.4L183,68c-3.4-1-6.9-1.5-10.5-1.5
                                          c-3.7,0-7.1,0.5-10.3,1.4L148.9,57l-3-2.5l-11-9l0.6-0.3l10.4-5.8v-3.4L132,43.7c-0.2,0-0.4,0-0.6,0.1c-0.5,0.2-0.9,0.8-0.9,1.4
                                          v49.3c0,0.8,0.7,1.5,1.5,1.5h0.2h81.1h0.2c0.8,0,1.5-0.7,1.5-1.5V45.2C215.1,44.8,215,44.4,214.6,44.1z M212.1,89.9
                                          c-1.9-2.6-4.7-6.1-8.5-9.7c-5.4-5.1-11.2-8.8-17.2-11.1l25.8-20.8V89.9z M210.7,93H135c4.2-6.2,17.5-23.5,37.5-23.5
                                          C192.6,69.5,206.3,86.7,210.7,93z M133.6,89.7V48.4L158.8,69C146.2,73.8,137.6,84,133.6,89.7z"/>
                                       <path style="fill:#FFFFFF;" d="M172.5,69.5c-20,0-33.4,17.2-37.5,23.5h75.7C206.3,86.7,192.6,69.5,172.5,69.5z"/>
                                       <path d="M175,26.5c0-0.8-0.7-1.5-1.5-1.5h-19c-0.8,0-1.5,0.7-1.5,1.5s0.7,1.5,1.5,1.5h19C174.3,28,175,27.3,175,26.5z"/>
                                       <path d="M190.5,39c0.8,0,1.5-0.7,1.5-1.5s-0.7-1.5-1.5-1.5h-24c-0.8,0-1.5,0.7-1.5,1.5s0.7,1.5,1.5,1.5H190.5z"/>
                                       <path d="M186.5,46h-32c-0.8,0-1.5,0.7-1.5,1.5s0.7,1.5,1.5,1.5h32c0.8,0,1.5-0.7,1.5-1.5S187.3,46,186.5,46z"/>
                                       <path style="fill:#FFFFFF;" d="M261.3,167.3c0.8,0.1,1.6-0.2,2.3-0.7c0.6-0.5,1-1.3,1.1-2.1c0.1-0.8-0.2-1.6-0.7-2.3c-0.5-0.6-1.3-1-2.1-1.1
                                          c-0.1,0-0.2,0-0.3,0c-0.7,0-1.4,0.2-1.9,0.7c-0.6,0.5-1,1.3-1.1,2.1c-0.1,0.8,0.2,1.6,0.7,2.3C259.7,166.8,260.5,167.2,261.3,167.3
                                          z"/>
                                       <path style="fill:#FFFFFF;" d="M246.5,160.2c0.8,0.1,1.6-0.2,2.3-0.7c1.3-1.1,1.5-3,0.5-4.4c-0.6-0.8-1.5-1.2-2.4-1.2c-0.7,0-1.4,0.2-2,0.7
                                          c-1.3,1.1-1.5,3-0.5,4.4C244.9,159.7,245.6,160.1,246.5,160.2z"/>
                                       <path style="fill:#FFFFFF;" d="M220.4,171.9c4.7-0.6,9,2.7,9.6,7.4c0,0.3,0.1,0.6,0.1,1h11.4c0.1-4.2,3.2-7.8,7.4-8.3c4.7-0.6,9,2.7,9.6,7.4
                                          c0.3,2.4-0.5,4.8-1.9,6.5l11.9,12.7c2.7,1.9,6.6,2.1,9.6,0.5c2.5-1.3,4-3.5,4-6.1c0-1-0.7-3.8-1.1-5.1c-0.2-0.9-0.4-1.3-0.4-1.6
                                          l-8.1-29.9c-1.5-6.2-6.3-10.4-11.9-10.4h-49c-5.6,0-10.1,5.4-11.9,10.4l-9.2,32.1c-0.3,1.1-0.5,2.2-0.4,3.3c0,0.5,0,0.9,0,1.1
                                          c0.3,2.7,1.9,4.9,4.3,6.1c2.6,1.3,5.6,1.2,8.1-0.2c0.4-0.2,0.8-0.5,1.2-0.8l11.8-11.7c-1.2-1.3-2.1-2.9-2.3-4.8
                                          C212.5,176.7,215.8,172.5,220.4,171.9z M255,163.5c0.2-1.8,1-3.3,2.4-4.4c1.4-1.1,3.1-1.6,4.8-1.4c1.8,0.2,3.3,1,4.4,2.4
                                          s1.6,3.1,1.4,4.8c-0.2,1.8-1,3.3-2.4,4.4c-1.2,1-2.6,1.5-4.1,1.5c-0.2,0-0.5,0-0.7,0c-1.8-0.2-3.3-1-4.4-2.4S254.9,165.2,255,163.5
                                          z M242.6,152c2.8-2.3,7-1.9,9.3,1c2.3,2.8,1.9,7-1,9.3c-1.2,1-2.6,1.5-4.1,1.5c-0.2,0-0.5,0-0.7,0c-1.8-0.2-3.3-1-4.4-2.4
                                          C239.4,158.4,239.8,154.3,242.6,152z M207.4,161.9c0-1,0.8-1.8,1.8-1.8h5.4v-5.4c0-1,0.8-1.8,1.8-1.8s1.8,0.8,1.8,1.8v5.4h5.4
                                          c1,0,1.8,0.8,1.8,1.8s-0.8,1.8-1.8,1.8H218v5.4c0,1-0.8,1.8-1.8,1.8s-1.8-0.8-1.8-1.8v-5.4h-5.4
                                          C208.2,163.7,207.4,162.9,207.4,161.9z"/>
                                       <path class="st3" d="M284.3,186.9c-0.1-0.5-0.3-1-0.3-1.2l-8.2-30.4c-1.9-7.8-8-13-15.3-13h-22.8c0-0.1,0-0.1,0-0.2v-19.9
                                          c0-1-0.8-1.8-1.8-1.8s-1.8,0.8-1.8,1.8v19.9c0,0.1,0,0.1,0,0.2h-22.8c-7.4,0-13,6.4-15.2,12.8l-9.2,32.3c-0.4,1.4-0.6,2.9-0.6,4.4
                                          c0,1,0,1.3,0.1,1.4c0.5,3.9,2.7,7.1,6.2,8.8c3.6,1.8,7.9,1.7,11.4-0.3c0.6-0.3,1.2-0.7,1.7-1.2l12.5-12.3c-1.1-0.5-2.1-1.1-3-2
                                          l-11.8,11.7c-0.4,0.3-0.8,0.6-1.2,0.8c-2.5,1.4-5.5,1.5-8.1,0.2c-2.4-1.2-4-3.4-4.3-6.1c0-0.2,0-0.6,0-1.1c0-1.1,0.1-2.3,0.4-3.3
                                          l9.2-32.1c1.8-5,6.3-10.4,11.9-10.4h49c5.6,0,10.4,4.1,11.9,10.4l8.1,29.9c0,0.3,0.2,0.7,0.4,1.6c0.4,1.3,1.1,4.1,1.1,5.1
                                          c0,2.6-1.5,4.8-4,6.1c-3.1,1.6-6.9,1.3-9.6-0.5l-11.9-12.7c-0.7,0.9-1.7,1.6-2.8,2.2l12.2,13l0.3,0.2c2.2,1.6,4.8,2.3,7.4,2.3
                                          c2,0,4.1-0.5,6-1.4c3.7-1.9,5.9-5.3,5.9-9.3C285.5,191.5,285,189.3,284.3,186.9z"/>
                                       <path style="fill:#000;" d="M241.5,181.4c-0.1-0.4-0.1-0.8-0.1-1.2h-11.4c0,1.2-0.2,2.4-0.7,3.5h12.8C241.9,183,241.6,182.2,241.5,181.4z"
                                          />
                                       <path style="fill:#FFFFFF;" d="M226.5,179.7c-0.3-2.5-2.5-4.4-5-4.4c-0.2,0-0.4,0-0.6,0c-2.8,0.4-4.7,2.9-4.4,5.7c0.4,2.8,2.9,4.7,5.7,4.4
                                          C224.9,185,226.9,182.4,226.5,179.7z"/>
                                       <path style="fill:#755CA7;" d="M230.1,180.2c0-0.3,0-0.6-0.1-1c-0.6-4.7-4.9-8-9.6-7.4c-4.7,0.6-8,4.9-7.4,9.6c0.2,1.9,1.1,3.5,2.3,4.8
                                          c0.8,0.9,1.8,1.5,3,2c1,0.4,2.1,0.6,3.2,0.6c0.4,0,0.7,0,1.1-0.1c3.1-0.4,5.6-2.4,6.8-5.1C229.8,182.6,230.1,181.4,230.1,180.2z
                                             M216.5,181c-0.4-2.8,1.6-5.3,4.4-5.7c0.2,0,0.4,0,0.6,0c2.5,0,4.7,1.9,5,4.4c0.4,2.8-1.6,5.3-4.4,5.7
                                          C219.4,185.7,216.9,183.7,216.5,181z"/>
                                       <path style="fill:#FFFFFF;" d="M250.7,185.3c2.8-0.4,4.7-2.9,4.4-5.7c-0.3-2.5-2.5-4.4-5-4.4c-0.2,0-0.4,0-0.6,0c-2.8,0.4-4.7,2.9-4.4,5.7
                                          C245.4,183.7,247.9,185.7,250.7,185.3z"/>
                                       <path style="fill:#755CA7;" d="M256.6,185.8c1.5-1.8,2.2-4.1,1.9-6.5c-0.6-4.7-4.9-8-9.6-7.4c-4.3,0.5-7.4,4.2-7.4,8.3c0,0.4,0,0.8,0.1,1.2
                                          c0.1,0.8,0.3,1.6,0.6,2.3c1.3,3.1,4.4,5.2,7.9,5.2c0.4,0,0.7,0,1.1-0.1c1-0.1,1.9-0.4,2.7-0.8C254.9,187.4,255.8,186.7,256.6,185.8
                                          z M245,181c-0.4-2.8,1.6-5.3,4.4-5.7c0.2,0,0.4,0,0.6,0c2.5,0,4.7,1.9,5,4.4c0.4,2.8-1.6,5.3-4.4,5.7
                                          C247.9,185.7,245.4,183.7,245,181z"/>
                                       <path style="fill:#755CA7;" d="M214.5,169c0,1,0.8,1.8,1.8,1.8s1.8-0.8,1.8-1.8v-5.4h5.4c1,0,1.8-0.8,1.8-1.8s-0.8-1.8-1.8-1.8H218v-5.4
                                          c0-1-0.8-1.8-1.8-1.8s-1.8,0.8-1.8,1.8v5.4h-5.4c-1,0-1.8,0.8-1.8,1.8s0.8,1.8,1.8,1.8h5.4V169z"/>
                                       <path style="fill:#755CA7;" d="M246.1,163.7c0.2,0,0.5,0,0.7,0c1.5,0,3-0.5,4.1-1.5c2.8-2.3,3.3-6.5,1-9.3c-2.3-2.8-6.5-3.3-9.3-1
                                          c-2.8,2.3-3.3,6.5-1,9.3C242.8,162.6,244.3,163.5,246.1,163.7z M244.8,154.7c0.6-0.5,1.3-0.7,2-0.7c0.9,0,1.8,0.4,2.4,1.2
                                          c1.1,1.3,0.9,3.3-0.5,4.4c-0.6,0.5-1.4,0.8-2.3,0.7c-0.8-0.1-1.6-0.5-2.1-1.1C243.3,157.7,243.5,155.8,244.8,154.7z"/>
                                       <path style="fill:#755CA7;" d="M260.9,170.8c0.2,0,0.5,0,0.7,0c1.5,0,3-0.5,4.1-1.5c1.4-1.1,2.2-2.7,2.4-4.4c0.2-1.8-0.3-3.5-1.4-4.8
                                          s-2.7-2.2-4.4-2.4c-1.7-0.2-3.5,0.3-4.8,1.4c-1.4,1.1-2.2,2.7-2.4,4.4c-0.2,1.8,0.3,3.5,1.4,4.8S259.2,170.6,260.9,170.8z
                                             M258.5,163.9c0.1-0.8,0.5-1.6,1.1-2.1c0.6-0.5,1.2-0.7,1.9-0.7c0.1,0,0.2,0,0.3,0c0.8,0.1,1.6,0.5,2.1,1.1
                                          c0.5,0.6,0.8,1.5,0.7,2.3c-0.1,0.8-0.5,1.6-1.1,2.1c-0.6,0.5-1.5,0.8-2.3,0.7c-0.8-0.1-1.6-0.5-2.1-1.1
                                          C258.7,165.5,258.4,164.7,258.5,163.9z"/>
                                       <polygon style="fill:none;" points="61.4,35.8 59.4,41.6 63.5,41.6  "/>
                                       <path style="fill:none;" d="M75.9,45c0.5,0,0.9-0.1,1.4-0.3c-0.3-0.2-0.7-0.4-1.1-0.7c-0.4-0.2-0.7-0.4-0.9-0.5C75.1,43.4,75,43.2,75,43
                                          c0-0.2,0.1-0.4,0.2-0.5c0.2-0.1,0.3-0.2,0.5-0.2c0.6,0,1.5,0.5,2.9,1.4c0.4-0.4,0.7-1,0.9-1.6c0.2-0.6,0.3-1.3,0.3-2.1
                                          c0-1-0.2-1.9-0.5-2.6c-0.3-0.7-0.8-1.3-1.4-1.7s-1.3-0.6-2.1-0.6c-0.6,0-1.1,0.1-1.6,0.3c-0.5,0.2-0.9,0.5-1.2,0.9
                                          c-0.3,0.4-0.6,0.9-0.8,1.5s-0.3,1.3-0.3,2.1c0,1.6,0.4,2.8,1.1,3.7C73.8,44.5,74.7,45,75.9,45z"/>
                                       <path style="fill:none;" d="M47,90.3c0-3.3-2.1-5.9-4.7-5.9c-1,0-1.8-0.8-1.8-1.8s0.8-1.8,1.8-1.8H89V29.7c0-1-0.2-1.9-0.5-2.7l-2.3-2.7
                                          c-0.6-0.3-1.2-0.5-1.9-0.5H35.6c1.1,1.6,1.8,3.7,1.8,5.9v0.7v1.1v58.9c0,3.3,2.1,5.9,4.7,5.9S47,93.6,47,90.3z M81.7,69.6H60.3
                                          c-1,0-1.8-0.8-1.8-1.8s0.8-1.8,1.8-1.8h21.5c1,0,1.8,0.8,1.8,1.8S82.7,69.6,81.7,69.6z M69.6,37.1c0.3-0.9,0.7-1.6,1.3-2.3
                                          c0.6-0.6,1.3-1.1,2.1-1.4c0.8-0.3,1.8-0.5,2.8-0.5c1.4,0,2.7,0.3,3.7,0.9c1,0.6,1.8,1.4,2.3,2.5c0.5,1.1,0.8,2.3,0.8,3.8
                                          c0,2.2-0.6,3.9-1.8,5.2c0.4,0.3,0.9,0.5,1.3,0.8s0.8,0.5,1,0.6s0.2,0.4,0.2,0.7c0,0.2-0.1,0.4-0.3,0.6c-0.2,0.2-0.4,0.3-0.7,0.3
                                          c-0.2,0-0.5-0.1-0.8-0.2c-0.3-0.1-0.7-0.3-1.1-0.6c-0.4-0.3-0.9-0.6-1.4-0.9c-0.9,0.5-2,0.7-3.4,0.7c-1.1,0-2-0.2-2.9-0.5
                                          c-0.9-0.3-1.6-0.8-2.1-1.5c-0.6-0.6-1-1.4-1.3-2.3s-0.4-1.9-0.4-2.9C69.1,38.9,69.3,38,69.6,37.1z M59,35.5
                                          c0.1-0.3,0.2-0.6,0.4-0.9c0.1-0.4,0.3-0.7,0.5-0.9c0.2-0.2,0.4-0.4,0.6-0.6c0.3-0.1,0.6-0.2,1-0.2c0.4,0,0.7,0.1,1,0.2
                                          c0.3,0.1,0.5,0.3,0.6,0.6c0.2,0.2,0.3,0.5,0.4,0.8c0.1,0.3,0.2,0.6,0.4,1.1l3.6,8.9c0.3,0.7,0.4,1.2,0.4,1.5c0,0.3-0.1,0.6-0.4,0.9
                                          c-0.3,0.3-0.6,0.4-1,0.4c-0.2,0-0.4,0-0.6-0.1c-0.2-0.1-0.3-0.2-0.4-0.3c-0.1-0.1-0.2-0.3-0.3-0.6c-0.1-0.3-0.2-0.5-0.3-0.7
                                          l-0.7-1.7h-5.6L58,45.4c-0.3,0.7-0.5,1.2-0.7,1.4s-0.5,0.4-0.9,0.4c-0.4,0-0.7-0.1-0.9-0.4c-0.3-0.3-0.4-0.6-0.4-0.9
                                          c0-0.2,0-0.4,0.1-0.6c0.1-0.2,0.2-0.5,0.3-0.8L59,35.5z M45.8,34.8c0-0.4,0.1-0.7,0.2-1s0.3-0.4,0.6-0.6c0.3-0.1,0.6-0.2,1-0.2h6.6
                                          c0.4,0,0.8,0.1,1,0.3s0.3,0.5,0.3,0.8c0,0.3-0.1,0.6-0.3,0.8s-0.5,0.3-1,0.3h-5.5v3.5h4.6c0.4,0,0.7,0.1,1,0.3
                                          c0.2,0.2,0.3,0.4,0.3,0.8c0,0.3-0.1,0.6-0.3,0.8c-0.2,0.2-0.5,0.3-1,0.3h-4.6v4.6c0,0.6-0.1,1-0.4,1.3c-0.3,0.3-0.6,0.4-1,0.4
                                          c-0.4,0-0.8-0.1-1-0.4s-0.4-0.7-0.4-1.3V34.8z M47.4,56.2h17.8c1,0,1.8,0.8,1.8,1.8s-0.8,1.8-1.8,1.8H47.4c-1,0-1.8-0.8-1.8-1.8
                                          S46.4,56.2,47.4,56.2z"/>
                                       <path style="fill:#FFFFFF;" d="M90.8,84.4H48.6c1.1,1.6,1.8,3.7,1.8,5.9c0,0.3,0,0.6,0,0.9c0,0.1,0,0.2,0,0.3c0,0.2,0,0.4-0.1,0.6
                                          c0,0.1,0,0.2-0.1,0.3c0,0.2-0.1,0.4-0.1,0.5c0,0.1-0.1,0.2-0.1,0.3c0,0.2-0.1,0.3-0.2,0.5c0,0.1-0.1,0.2-0.1,0.3
                                          c-0.1,0.2-0.1,0.3-0.2,0.5c0,0.1-0.1,0.2-0.1,0.3c-0.1,0.2-0.2,0.4-0.3,0.6c0,0,0,0.1-0.1,0.1c-0.1,0.2-0.3,0.4-0.4,0.6h42.1
                                          c2.6,0,4.7-2.6,4.7-5.9S93.4,84.4,90.8,84.4z"/>
                                       <path style="fill:#000;" d="M92.5,81.1V29.7c0-5.2-3.7-9.4-8.2-9.4h-55c-4.5,0-8.2,4.2-8.2,9.4v1.8h13v58.9c0,5.2,3.7,9.4,8.2,9.4h48.5
                                          c4.5,0,8.2-4.2,8.2-9.4C99,85.8,96.2,82.1,92.5,81.1z M90.8,96.2H48.6c0.1-0.2,0.3-0.4,0.4-0.6c0,0,0-0.1,0.1-0.1
                                          c0.1-0.2,0.2-0.4,0.3-0.6c0-0.1,0.1-0.2,0.1-0.3c0.1-0.2,0.1-0.3,0.2-0.5c0-0.1,0.1-0.2,0.1-0.3c0.1-0.2,0.1-0.3,0.2-0.5
                                          c0-0.1,0.1-0.2,0.1-0.3c0-0.2,0.1-0.3,0.1-0.5c0-0.1,0-0.2,0.1-0.3c0-0.2,0.1-0.4,0.1-0.6c0-0.1,0-0.2,0-0.3c0-0.3,0-0.6,0-0.9
                                          c0-2.2-0.7-4.3-1.8-5.9h42.1c2.6,0,4.7,2.6,4.7,5.9S93.4,96.2,90.8,96.2z M90.8,82.7L90.8,82.7L90.8,82.7z M90.8,29.7L90.8,29.7
                                          L90.8,29.7z M29.2,23.8c2.1,0,3.9,1.8,4.5,4.2h-9.1C25.3,25.5,27.1,23.8,29.2,23.8z M37.5,90.3V31.4v-1.1v-0.7
                                          c0-2.2-0.7-4.3-1.8-5.9h48.6c0.7,0,1.3,0.2,1.9,0.5c1,0.6,1.8,1.5,2.3,2.7c0.3,0.8,0.5,1.7,0.5,2.7v51.2H42.2c-1,0-1.8,0.8-1.8,1.8
                                          s0.8,1.8,1.8,1.8c2.6,0,4.7,2.6,4.7,5.9s-2.1,5.9-4.7,5.9S37.5,93.6,37.5,90.3z"/>
                                       <path style="fill:#FFFFFF;" d="M86.2,24.3l2.3,2.7C88,25.8,87.2,24.8,86.2,24.3z"/>
                                       <path style="fill:#FFFFFF;" d="M33.8,27.9c-0.6-2.4-2.4-4.2-4.5-4.2s-3.9,1.8-4.5,4.2H33.8z"/>
                                       <line style="fill:none;stroke:#FFFFFF;stroke-width:0;stroke-linecap:round;stroke-linejoin:round;" x1="90.8" y1="82.7" x2="90.8" y2="82.7"/>
                                       <line style="fill:none;stroke:#FFFFFF;stroke-width:0;stroke-linecap:round;stroke-linejoin:round;" x1="90.8" y1="29.7" x2="90.8" y2="29.7"/>
                                       <path style="fill:#755CA7;" d="M47.2,47.2c0.4,0,0.7-0.1,1-0.4c0.3-0.3,0.4-0.7,0.4-1.3v-4.6h4.6c0.4,0,0.7-0.1,1-0.3
                                          c0.2-0.2,0.3-0.4,0.3-0.8c0-0.3-0.1-0.6-0.3-0.8c-0.2-0.2-0.5-0.3-1-0.3h-4.6v-3.5h5.5c0.4,0,0.8-0.1,1-0.3s0.3-0.5,0.3-0.8
                                          c0-0.3-0.1-0.6-0.3-0.8s-0.5-0.3-1-0.3h-6.6c-0.4,0-0.7,0.1-1,0.2c-0.3,0.1-0.4,0.3-0.6,0.6s-0.2,0.6-0.2,1v10.7
                                          c0,0.6,0.1,1,0.4,1.3S46.8,47.2,47.2,47.2z"/>
                                       <path style="fill:#755CA7;" d="M55.1,45.9c0,0.3,0.1,0.6,0.4,0.9c0.3,0.3,0.6,0.4,0.9,0.4c0.4,0,0.7-0.1,0.9-0.4s0.4-0.7,0.7-1.4l0.7-1.8h5.6
                                          l0.7,1.7c0.1,0.2,0.2,0.5,0.3,0.7c0.1,0.3,0.2,0.5,0.3,0.6c0.1,0.1,0.2,0.2,0.4,0.3c0.2,0.1,0.3,0.1,0.6,0.1c0.4,0,0.7-0.1,1-0.4
                                          c0.3-0.3,0.4-0.6,0.4-0.9c0-0.3-0.1-0.8-0.4-1.5l-3.6-8.9c-0.2-0.4-0.3-0.8-0.4-1.1c-0.1-0.3-0.2-0.5-0.4-0.8
                                          c-0.2-0.2-0.4-0.4-0.6-0.6c-0.3-0.1-0.6-0.2-1-0.2c-0.4,0-0.7,0.1-1,0.2c-0.3,0.1-0.5,0.3-0.6,0.6c-0.2,0.2-0.3,0.5-0.5,0.9
                                          c-0.1,0.4-0.3,0.7-0.4,0.9l-3.5,9c-0.1,0.4-0.2,0.6-0.3,0.8C55.1,45.6,55.1,45.7,55.1,45.9z M61.4,35.8l2.1,5.7h-4.1L61.4,35.8z"/>
                                       <path style="fill:#755CA7;" d="M70.8,45.2c0.6,0.6,1.3,1.1,2.1,1.5c0.9,0.3,1.8,0.5,2.9,0.5c1.3,0,2.4-0.2,3.4-0.7c0.5,0.4,0.9,0.7,1.4,0.9
                                          c0.4,0.3,0.8,0.5,1.1,0.6c0.3,0.1,0.6,0.2,0.8,0.2c0.3,0,0.5-0.1,0.7-0.3c0.2-0.2,0.3-0.4,0.3-0.6c0-0.3-0.1-0.5-0.2-0.7
                                          s-0.5-0.4-1-0.6s-0.9-0.5-1.3-0.8c1.2-1.3,1.8-3,1.8-5.2c0-1.4-0.3-2.7-0.8-3.8c-0.5-1.1-1.3-1.9-2.3-2.5c-1-0.6-2.3-0.9-3.7-0.9
                                          c-1.1,0-2,0.2-2.8,0.5c-0.8,0.3-1.5,0.8-2.1,1.4c-0.6,0.6-1,1.4-1.3,2.3c-0.3,0.9-0.5,1.9-0.5,2.9c0,1,0.1,2,0.4,2.9
                                          S70.3,44.6,70.8,45.2z M72.2,37.9c0.2-0.6,0.5-1.1,0.8-1.5c0.3-0.4,0.8-0.7,1.2-0.9c0.5-0.2,1-0.3,1.6-0.3c0.8,0,1.5,0.2,2.1,0.6
                                          s1.1,0.9,1.4,1.7c0.3,0.7,0.5,1.6,0.5,2.6c0,0.8-0.1,1.5-0.3,2.1c-0.2,0.6-0.5,1.1-0.9,1.6c-1.3-1-2.3-1.4-2.9-1.4
                                          c-0.2,0-0.4,0.1-0.5,0.2C75.1,42.6,75,42.8,75,43c0,0.2,0.1,0.4,0.2,0.5c0.2,0.1,0.5,0.3,0.9,0.5c0.4,0.2,0.8,0.4,1.1,0.7
                                          c-0.5,0.2-1,0.3-1.4,0.3c-1.1,0-2.1-0.4-2.8-1.3c-0.7-0.9-1.1-2.1-1.1-3.7C71.9,39.2,72,38.5,72.2,37.9z"/>
                                       <path style="fill:#755CA7;" d="M47.4,59.7h17.8c1,0,1.8-0.8,1.8-1.8s-0.8-1.8-1.8-1.8H47.4c-1,0-1.8,0.8-1.8,1.8S46.4,59.7,47.4,59.7z"/>
                                       <path style="fill:#755CA7;" d="M81.7,66.1H60.3c-1,0-1.8,0.8-1.8,1.8s0.8,1.8,1.8,1.8h21.5c1,0,1.8-0.8,1.8-1.8S82.7,66.1,81.7,66.1z"/>
                                    </g>
                                 </svg>
                              </span>
                              <strong>자주묻는 질문</strong>
                           </a>
                        </li>
                        <li>
                           <a href="#">
                              <span class="img_svg">
                                 <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                                viewBox="0 0 120 120" style="enable-background:new 0 0 120 120;" xml:space="preserve">
                                    <style type="text/css">
                                          .st0{fill:none;}
                                          .st1{fill:#FFFFFF;}
                                          .st2{fill:#755CA7;}
                                          .st3{fill:#1D1D1B;}
                                          .st4{fill:#715EA5;}
                                          .st5{fill:none;stroke:#FFFFFF;stroke-width:0;stroke-linecap:round;stroke-linejoin:round;}
                                          .st6{fill:none;stroke:#1D1D1B;stroke-width:0;stroke-linecap:round;stroke-linejoin:round;}
                                    </style>
                                    <g>
                                       <polygon class="st0" points="199.9,54.4 211.1,45.3 210.9,45.2 199.9,45.2   "/>
                                       <polygon class="st0" points="135.5,45.2 134.9,45.6 145.9,54.6 145.9,45.2   "/>
                                       <polygon class="st1" points="210.9,45.2 199.9,39 199.9,45.2  "/>
                                       <polygon class="st1" points="145.9,39.4 135.5,45.2 145.9,45.2  "/>
                                       <path class="st1" d="M196.9,20c0-0.7-0.6-1.3-1.3-1.3h-45.3c-0.7,0-1.3,0.6-1.3,1.3v37L162.2,68c3.2-0.9,6.7-1.4,10.3-1.4
                                          c3.5,0,7,0.5,10.5,1.5l13.9-11.2V20z M165,37.5c0-0.8,0.7-1.5,1.5-1.5h24c0.8,0,1.5,0.7,1.5,1.5s-0.7,1.5-1.5,1.5h-24
                                          C165.7,39,165,38.3,165,37.5z M154.5,28c-0.8,0-1.5-0.7-1.5-1.5s0.7-1.5,1.5-1.5h19c0.8,0,1.5,0.7,1.5,1.5s-0.7,1.5-1.5,1.5H154.5z
                                             M186.5,49h-32c-0.8,0-1.5-0.7-1.5-1.5s0.7-1.5,1.5-1.5h32c0.8,0,1.5,0.7,1.5,1.5S187.3,49,186.5,49z"/>
                                       <path d="M145.9,39.4v5.8v9.4l3,2.5V20c0-0.7,0.6-1.3,1.3-1.3h45.3c0.7,0,1.3,0.6,1.3,1.3v36.8l3-2.4v-9.2V39v-3.4V20
                                          c0-2.4-1.9-4.3-4.3-4.3h-45.3c-2.4,0-4.3,1.9-4.3,4.3v15.9V39.4z"/>
                                       <path class="st1" d="M186.4,69.1c6,2.3,11.8,6,17.2,11.1c3.8,3.6,6.7,7.1,8.5,9.7V48.4L186.4,69.1z"/>
                                       <path class="st1" d="M133.6,48.4v41.3c4-5.7,12.6-16,25.2-20.7L133.6,48.4z"/>
                                       <path class="st2" d="M214.6,44.1l0.1-0.2l-14.9-8.4V39l11.1,6.2l0.2,0.1l-11.3,9.1l-3,2.4L183,68c-3.4-1-6.9-1.5-10.5-1.5
                                          c-3.7,0-7.1,0.5-10.3,1.4L148.9,57l-3-2.5l-11-9l0.6-0.3l10.4-5.8v-3.4L132,43.7c-0.2,0-0.4,0-0.6,0.1c-0.5,0.2-0.9,0.8-0.9,1.4
                                          v49.3c0,0.8,0.7,1.5,1.5,1.5h0.2h81.1h0.2c0.8,0,1.5-0.7,1.5-1.5V45.2C215.1,44.8,215,44.4,214.6,44.1z M212.1,89.9
                                          c-1.9-2.6-4.7-6.1-8.5-9.7c-5.4-5.1-11.2-8.8-17.2-11.1l25.8-20.8V89.9z M210.7,93H135c4.2-6.2,17.5-23.5,37.5-23.5
                                          C192.6,69.5,206.3,86.7,210.7,93z M133.6,89.7V48.4L158.8,69C146.2,73.8,137.6,84,133.6,89.7z"/>
                                       <path class="st1" d="M172.5,69.5c-20,0-33.4,17.2-37.5,23.5h75.7C206.3,86.7,192.6,69.5,172.5,69.5z"/>
                                       <path d="M175,26.5c0-0.8-0.7-1.5-1.5-1.5h-19c-0.8,0-1.5,0.7-1.5,1.5s0.7,1.5,1.5,1.5h19C174.3,28,175,27.3,175,26.5z"/>
                                       <path d="M190.5,39c0.8,0,1.5-0.7,1.5-1.5s-0.7-1.5-1.5-1.5h-24c-0.8,0-1.5,0.7-1.5,1.5s0.7,1.5,1.5,1.5H190.5z"/>
                                       <path d="M186.5,46h-32c-0.8,0-1.5,0.7-1.5,1.5s0.7,1.5,1.5,1.5h32c0.8,0,1.5-0.7,1.5-1.5S187.3,46,186.5,46z"/>
                                       <path class="st1" d="M261.3,167.3c0.8,0.1,1.6-0.2,2.3-0.7c0.6-0.5,1-1.3,1.1-2.1c0.1-0.8-0.2-1.6-0.7-2.3c-0.5-0.6-1.3-1-2.1-1.1
                                          c-0.1,0-0.2,0-0.3,0c-0.7,0-1.4,0.2-1.9,0.7c-0.6,0.5-1,1.3-1.1,2.1c-0.1,0.8,0.2,1.6,0.7,2.3C259.7,166.8,260.5,167.2,261.3,167.3
                                          z"/>
                                       <path class="st1" d="M246.5,160.2c0.8,0.1,1.6-0.2,2.3-0.7c1.3-1.1,1.5-3,0.5-4.4c-0.6-0.8-1.5-1.2-2.4-1.2c-0.7,0-1.4,0.2-2,0.7
                                          c-1.3,1.1-1.5,3-0.5,4.4C244.9,159.7,245.6,160.1,246.5,160.2z"/>
                                       <path class="st1" d="M220.4,171.9c4.7-0.6,9,2.7,9.6,7.4c0,0.3,0.1,0.6,0.1,1h11.4c0.1-4.2,3.2-7.8,7.4-8.3c4.7-0.6,9,2.7,9.6,7.4
                                          c0.3,2.4-0.5,4.8-1.9,6.5l11.9,12.7c2.7,1.9,6.6,2.1,9.6,0.5c2.5-1.3,4-3.5,4-6.1c0-1-0.7-3.8-1.1-5.1c-0.2-0.9-0.4-1.3-0.4-1.6
                                          l-8.1-29.9c-1.5-6.2-6.3-10.4-11.9-10.4h-49c-5.6,0-10.1,5.4-11.9,10.4l-9.2,32.1c-0.3,1.1-0.5,2.2-0.4,3.3c0,0.5,0,0.9,0,1.1
                                          c0.3,2.7,1.9,4.9,4.3,6.1c2.6,1.3,5.6,1.2,8.1-0.2c0.4-0.2,0.8-0.5,1.2-0.8l11.8-11.7c-1.2-1.3-2.1-2.9-2.3-4.8
                                          C212.5,176.7,215.8,172.5,220.4,171.9z M255,163.5c0.2-1.8,1-3.3,2.4-4.4c1.4-1.1,3.1-1.6,4.8-1.4c1.8,0.2,3.3,1,4.4,2.4
                                          s1.6,3.1,1.4,4.8c-0.2,1.8-1,3.3-2.4,4.4c-1.2,1-2.6,1.5-4.1,1.5c-0.2,0-0.5,0-0.7,0c-1.8-0.2-3.3-1-4.4-2.4S254.9,165.2,255,163.5
                                          z M242.6,152c2.8-2.3,7-1.9,9.3,1c2.3,2.8,1.9,7-1,9.3c-1.2,1-2.6,1.5-4.1,1.5c-0.2,0-0.5,0-0.7,0c-1.8-0.2-3.3-1-4.4-2.4
                                          C239.4,158.4,239.8,154.3,242.6,152z M207.4,161.9c0-1,0.8-1.8,1.8-1.8h5.4v-5.4c0-1,0.8-1.8,1.8-1.8s1.8,0.8,1.8,1.8v5.4h5.4
                                          c1,0,1.8,0.8,1.8,1.8s-0.8,1.8-1.8,1.8H218v5.4c0,1-0.8,1.8-1.8,1.8s-1.8-0.8-1.8-1.8v-5.4h-5.4
                                          C208.2,163.7,207.4,162.9,207.4,161.9z"/>
                                       <path class="st3" d="M284.3,186.9c-0.1-0.5-0.3-1-0.3-1.2l-8.2-30.4c-1.9-7.8-8-13-15.3-13h-22.8c0-0.1,0-0.1,0-0.2v-19.9
                                          c0-1-0.8-1.8-1.8-1.8s-1.8,0.8-1.8,1.8v19.9c0,0.1,0,0.1,0,0.2h-22.8c-7.4,0-13,6.4-15.2,12.8l-9.2,32.3c-0.4,1.4-0.6,2.9-0.6,4.4
                                          c0,1,0,1.3,0.1,1.4c0.5,3.9,2.7,7.1,6.2,8.8c3.6,1.8,7.9,1.7,11.4-0.3c0.6-0.3,1.2-0.7,1.7-1.2l12.5-12.3c-1.1-0.5-2.1-1.1-3-2
                                          l-11.8,11.7c-0.4,0.3-0.8,0.6-1.2,0.8c-2.5,1.4-5.5,1.5-8.1,0.2c-2.4-1.2-4-3.4-4.3-6.1c0-0.2,0-0.6,0-1.1c0-1.1,0.1-2.3,0.4-3.3
                                          l9.2-32.1c1.8-5,6.3-10.4,11.9-10.4h49c5.6,0,10.4,4.1,11.9,10.4l8.1,29.9c0,0.3,0.2,0.7,0.4,1.6c0.4,1.3,1.1,4.1,1.1,5.1
                                          c0,2.6-1.5,4.8-4,6.1c-3.1,1.6-6.9,1.3-9.6-0.5l-11.9-12.7c-0.7,0.9-1.7,1.6-2.8,2.2l12.2,13l0.3,0.2c2.2,1.6,4.8,2.3,7.4,2.3
                                          c2,0,4.1-0.5,6-1.4c3.7-1.9,5.9-5.3,5.9-9.3C285.5,191.5,285,189.3,284.3,186.9z"/>
                                       <path class="st3" d="M241.5,181.4c-0.1-0.4-0.1-0.8-0.1-1.2h-11.4c0,1.2-0.2,2.4-0.7,3.5h12.8C241.9,183,241.6,182.2,241.5,181.4z"
                                          />
                                       <path class="st1" d="M226.5,179.7c-0.3-2.5-2.5-4.4-5-4.4c-0.2,0-0.4,0-0.6,0c-2.8,0.4-4.7,2.9-4.4,5.7c0.4,2.8,2.9,4.7,5.7,4.4
                                          C224.9,185,226.9,182.4,226.5,179.7z"/>
                                       <path class="st4" d="M230.1,180.2c0-0.3,0-0.6-0.1-1c-0.6-4.7-4.9-8-9.6-7.4c-4.7,0.6-8,4.9-7.4,9.6c0.2,1.9,1.1,3.5,2.3,4.8
                                          c0.8,0.9,1.8,1.5,3,2c1,0.4,2.1,0.6,3.2,0.6c0.4,0,0.7,0,1.1-0.1c3.1-0.4,5.6-2.4,6.8-5.1C229.8,182.6,230.1,181.4,230.1,180.2z
                                             M216.5,181c-0.4-2.8,1.6-5.3,4.4-5.7c0.2,0,0.4,0,0.6,0c2.5,0,4.7,1.9,5,4.4c0.4,2.8-1.6,5.3-4.4,5.7
                                          C219.4,185.7,216.9,183.7,216.5,181z"/>
                                       <path class="st1" d="M250.7,185.3c2.8-0.4,4.7-2.9,4.4-5.7c-0.3-2.5-2.5-4.4-5-4.4c-0.2,0-0.4,0-0.6,0c-2.8,0.4-4.7,2.9-4.4,5.7
                                          C245.4,183.7,247.9,185.7,250.7,185.3z"/>
                                       <path class="st4" d="M256.6,185.8c1.5-1.8,2.2-4.1,1.9-6.5c-0.6-4.7-4.9-8-9.6-7.4c-4.3,0.5-7.4,4.2-7.4,8.3c0,0.4,0,0.8,0.1,1.2
                                          c0.1,0.8,0.3,1.6,0.6,2.3c1.3,3.1,4.4,5.2,7.9,5.2c0.4,0,0.7,0,1.1-0.1c1-0.1,1.9-0.4,2.7-0.8C254.9,187.4,255.8,186.7,256.6,185.8
                                          z M245,181c-0.4-2.8,1.6-5.3,4.4-5.7c0.2,0,0.4,0,0.6,0c2.5,0,4.7,1.9,5,4.4c0.4,2.8-1.6,5.3-4.4,5.7
                                          C247.9,185.7,245.4,183.7,245,181z"/>
                                       <path class="st4" d="M214.5,169c0,1,0.8,1.8,1.8,1.8s1.8-0.8,1.8-1.8v-5.4h5.4c1,0,1.8-0.8,1.8-1.8s-0.8-1.8-1.8-1.8H218v-5.4
                                          c0-1-0.8-1.8-1.8-1.8s-1.8,0.8-1.8,1.8v5.4h-5.4c-1,0-1.8,0.8-1.8,1.8s0.8,1.8,1.8,1.8h5.4V169z"/>
                                       <path class="st4" d="M246.1,163.7c0.2,0,0.5,0,0.7,0c1.5,0,3-0.5,4.1-1.5c2.8-2.3,3.3-6.5,1-9.3c-2.3-2.8-6.5-3.3-9.3-1
                                          c-2.8,2.3-3.3,6.5-1,9.3C242.8,162.6,244.3,163.5,246.1,163.7z M244.8,154.7c0.6-0.5,1.3-0.7,2-0.7c0.9,0,1.8,0.4,2.4,1.2
                                          c1.1,1.3,0.9,3.3-0.5,4.4c-0.6,0.5-1.4,0.8-2.3,0.7c-0.8-0.1-1.6-0.5-2.1-1.1C243.3,157.7,243.5,155.8,244.8,154.7z"/>
                                       <path class="st4" d="M260.9,170.8c0.2,0,0.5,0,0.7,0c1.5,0,3-0.5,4.1-1.5c1.4-1.1,2.2-2.7,2.4-4.4c0.2-1.8-0.3-3.5-1.4-4.8
                                          s-2.7-2.2-4.4-2.4c-1.7-0.2-3.5,0.3-4.8,1.4c-1.4,1.1-2.2,2.7-2.4,4.4c-0.2,1.8,0.3,3.5,1.4,4.8S259.2,170.6,260.9,170.8z
                                             M258.5,163.9c0.1-0.8,0.5-1.6,1.1-2.1c0.6-0.5,1.2-0.7,1.9-0.7c0.1,0,0.2,0,0.3,0c0.8,0.1,1.6,0.5,2.1,1.1
                                          c0.5,0.6,0.8,1.5,0.7,2.3c-0.1,0.8-0.5,1.6-1.1,2.1c-0.6,0.5-1.5,0.8-2.3,0.7c-0.8-0.1-1.6-0.5-2.1-1.1
                                          C258.7,165.5,258.4,164.7,258.5,163.9z"/>
                                       <polygon class="st0" points="126.4,169.8 124.4,175.6 128.5,175.6   "/>
                                       <path class="st0" d="M140.9,179c0.5,0,0.9-0.1,1.4-0.3c-0.3-0.2-0.7-0.4-1.1-0.7c-0.4-0.2-0.7-0.4-0.9-0.5
                                          c-0.2-0.1-0.2-0.3-0.2-0.5c0-0.2,0.1-0.4,0.2-0.5c0.2-0.1,0.3-0.2,0.5-0.2c0.6,0,1.5,0.5,2.9,1.4c0.4-0.4,0.7-1,0.9-1.6
                                          c0.2-0.6,0.3-1.3,0.3-2.1c0-1-0.2-1.9-0.5-2.6c-0.3-0.7-0.8-1.3-1.4-1.7s-1.3-0.6-2.1-0.6c-0.6,0-1.1,0.1-1.6,0.3
                                          c-0.5,0.2-0.9,0.5-1.2,0.9c-0.3,0.4-0.6,0.9-0.8,1.5s-0.3,1.3-0.3,2.1c0,1.6,0.4,2.8,1.1,3.7C138.8,178.5,139.7,179,140.9,179z"/>
                                       <path class="st0" d="M112,224.3c0-3.3-2.1-5.9-4.7-5.9c-1,0-1.8-0.8-1.8-1.8s0.8-1.8,1.8-1.8H154v-51.2c0-1-0.2-1.9-0.5-2.7
                                          l-2.3-2.7c-0.6-0.3-1.2-0.5-1.9-0.5h-48.6c1.1,1.6,1.8,3.7,1.8,5.9v0.7v1.1v58.9c0,3.3,2.1,5.9,4.7,5.9S112,227.6,112,224.3z
                                             M146.7,203.6h-21.5c-1,0-1.8-0.8-1.8-1.8s0.8-1.8,1.8-1.8h21.5c1,0,1.8,0.8,1.8,1.8S147.7,203.6,146.7,203.6z M134.6,171.1
                                          c0.3-0.9,0.7-1.6,1.3-2.3c0.6-0.6,1.3-1.1,2.1-1.4c0.8-0.3,1.8-0.5,2.8-0.5c1.4,0,2.7,0.3,3.7,0.9c1,0.6,1.8,1.4,2.3,2.5
                                          c0.5,1.1,0.8,2.3,0.8,3.8c0,2.2-0.6,3.9-1.8,5.2c0.4,0.3,0.9,0.5,1.3,0.8s0.8,0.5,1,0.6s0.2,0.4,0.2,0.7c0,0.2-0.1,0.4-0.3,0.6
                                          c-0.2,0.2-0.4,0.3-0.7,0.3c-0.2,0-0.5-0.1-0.8-0.2c-0.3-0.1-0.7-0.3-1.1-0.6c-0.4-0.3-0.9-0.6-1.4-0.9c-0.9,0.5-2,0.7-3.4,0.7
                                          c-1.1,0-2-0.2-2.9-0.5c-0.9-0.3-1.6-0.8-2.1-1.5c-0.6-0.6-1-1.4-1.3-2.3s-0.4-1.9-0.4-2.9C134.1,172.9,134.3,172,134.6,171.1z
                                             M124,169.5c0.1-0.3,0.2-0.6,0.4-0.9c0.1-0.4,0.3-0.7,0.5-0.9c0.2-0.2,0.4-0.4,0.6-0.6c0.3-0.1,0.6-0.2,1-0.2c0.4,0,0.7,0.1,1,0.2
                                          c0.3,0.1,0.5,0.3,0.6,0.6c0.2,0.2,0.3,0.5,0.4,0.8c0.1,0.3,0.2,0.6,0.4,1.1l3.6,8.9c0.3,0.7,0.4,1.2,0.4,1.5c0,0.3-0.1,0.6-0.4,0.9
                                          c-0.3,0.3-0.6,0.4-1,0.4c-0.2,0-0.4,0-0.6-0.1c-0.2-0.1-0.3-0.2-0.4-0.3c-0.1-0.1-0.2-0.3-0.3-0.6c-0.1-0.3-0.2-0.5-0.3-0.7
                                          l-0.7-1.7h-5.6l-0.7,1.8c-0.3,0.7-0.5,1.2-0.7,1.4s-0.5,0.4-0.9,0.4c-0.4,0-0.7-0.1-0.9-0.4c-0.3-0.3-0.4-0.6-0.4-0.9
                                          c0-0.2,0-0.4,0.1-0.6c0.1-0.2,0.2-0.5,0.3-0.8L124,169.5z M110.8,168.8c0-0.4,0.1-0.7,0.2-1s0.3-0.4,0.6-0.6c0.3-0.1,0.6-0.2,1-0.2
                                          h6.6c0.4,0,0.8,0.1,1,0.3s0.3,0.5,0.3,0.8c0,0.3-0.1,0.6-0.3,0.8s-0.5,0.3-1,0.3h-5.5v3.5h4.6c0.4,0,0.7,0.1,1,0.3
                                          c0.2,0.2,0.3,0.4,0.3,0.8c0,0.3-0.1,0.6-0.3,0.8c-0.2,0.2-0.5,0.3-1,0.3h-4.6v4.6c0,0.6-0.1,1-0.4,1.3c-0.3,0.3-0.6,0.4-1,0.4
                                          c-0.4,0-0.8-0.1-1-0.4s-0.4-0.7-0.4-1.3V168.8z M112.4,190.2h17.8c1,0,1.8,0.8,1.8,1.8s-0.8,1.8-1.8,1.8h-17.8
                                          c-1,0-1.8-0.8-1.8-1.8S111.4,190.2,112.4,190.2z"/>
                                       <path class="st1" d="M155.8,218.4h-42.1c1.1,1.6,1.8,3.7,1.8,5.9c0,0.3,0,0.6,0,0.9c0,0.1,0,0.2,0,0.3c0,0.2,0,0.4-0.1,0.6
                                          c0,0.1,0,0.2-0.1,0.3c0,0.2-0.1,0.4-0.1,0.5c0,0.1-0.1,0.2-0.1,0.3c0,0.2-0.1,0.3-0.2,0.5c0,0.1-0.1,0.2-0.1,0.3
                                          c-0.1,0.2-0.1,0.3-0.2,0.5c0,0.1-0.1,0.2-0.1,0.3c-0.1,0.2-0.2,0.4-0.3,0.6c0,0,0,0.1-0.1,0.1c-0.1,0.2-0.3,0.4-0.4,0.6h42.1
                                          c2.6,0,4.7-2.6,4.7-5.9S158.4,218.4,155.8,218.4z"/>
                                       <path class="st3" d="M157.5,215.1v-51.5c0-5.2-3.7-9.4-8.2-9.4h-55c-4.5,0-8.2,4.2-8.2,9.4v1.8h13v58.9c0,5.2,3.7,9.4,8.2,9.4h48.5
                                          c4.5,0,8.2-4.2,8.2-9.4C164,219.8,161.2,216.1,157.5,215.1z M155.8,230.2h-42.1c0.1-0.2,0.3-0.4,0.4-0.6c0,0,0-0.1,0.1-0.1
                                          c0.1-0.2,0.2-0.4,0.3-0.6c0-0.1,0.1-0.2,0.1-0.3c0.1-0.2,0.1-0.3,0.2-0.5c0-0.1,0.1-0.2,0.1-0.3c0.1-0.2,0.1-0.3,0.2-0.5
                                          c0-0.1,0.1-0.2,0.1-0.3c0-0.2,0.1-0.3,0.1-0.5c0-0.1,0-0.2,0.1-0.3c0-0.2,0.1-0.4,0.1-0.6c0-0.1,0-0.2,0-0.3c0-0.3,0-0.6,0-0.9
                                          c0-2.2-0.7-4.3-1.8-5.9h42.1c2.6,0,4.7,2.6,4.7,5.9S158.4,230.2,155.8,230.2z M155.8,216.7L155.8,216.7L155.8,216.7z M155.8,163.7
                                          L155.8,163.7L155.8,163.7z M94.2,157.8c2.1,0,3.9,1.8,4.5,4.2h-9.1C90.3,159.5,92.1,157.8,94.2,157.8z M102.5,224.3v-58.9v-1.1
                                          v-0.7c0-2.2-0.7-4.3-1.8-5.9h48.6c0.7,0,1.3,0.2,1.9,0.5c1,0.6,1.8,1.5,2.3,2.7c0.3,0.8,0.5,1.7,0.5,2.7v51.2h-46.8
                                          c-1,0-1.8,0.8-1.8,1.8s0.8,1.8,1.8,1.8c2.6,0,4.7,2.6,4.7,5.9s-2.1,5.9-4.7,5.9S102.5,227.6,102.5,224.3z"/>
                                       <path class="st1" d="M151.2,158.3l2.3,2.7C153,159.8,152.2,158.8,151.2,158.3z"/>
                                       <path class="st1" d="M98.8,161.9c-0.6-2.4-2.4-4.2-4.5-4.2s-3.9,1.8-4.5,4.2H98.8z"/>
                                       <line class="st5" x1="155.8" y1="216.7" x2="155.8" y2="216.7"/>
                                       <line class="st5" x1="155.8" y1="163.7" x2="155.8" y2="163.7"/>
                                       <path class="st4" d="M112.2,181.2c0.4,0,0.7-0.1,1-0.4c0.3-0.3,0.4-0.7,0.4-1.3v-4.6h4.6c0.4,0,0.7-0.1,1-0.3
                                          c0.2-0.2,0.3-0.4,0.3-0.8c0-0.3-0.1-0.6-0.3-0.8c-0.2-0.2-0.5-0.3-1-0.3h-4.6v-3.5h5.5c0.4,0,0.8-0.1,1-0.3s0.3-0.5,0.3-0.8
                                          c0-0.3-0.1-0.6-0.3-0.8s-0.5-0.3-1-0.3h-6.6c-0.4,0-0.7,0.1-1,0.2c-0.3,0.1-0.4,0.3-0.6,0.6s-0.2,0.6-0.2,1v10.7
                                          c0,0.6,0.1,1,0.4,1.3S111.8,181.2,112.2,181.2z"/>
                                       <path class="st4" d="M120.1,179.9c0,0.3,0.1,0.6,0.4,0.9c0.3,0.3,0.6,0.4,0.9,0.4c0.4,0,0.7-0.1,0.9-0.4s0.4-0.7,0.7-1.4l0.7-1.8
                                          h5.6l0.7,1.7c0.1,0.2,0.2,0.5,0.3,0.7c0.1,0.3,0.2,0.5,0.3,0.6c0.1,0.1,0.2,0.2,0.4,0.3c0.2,0.1,0.3,0.1,0.6,0.1
                                          c0.4,0,0.7-0.1,1-0.4c0.3-0.3,0.4-0.6,0.4-0.9c0-0.3-0.1-0.8-0.4-1.5l-3.6-8.9c-0.2-0.4-0.3-0.8-0.4-1.1c-0.1-0.3-0.2-0.5-0.4-0.8
                                          c-0.2-0.2-0.4-0.4-0.6-0.6c-0.3-0.1-0.6-0.2-1-0.2c-0.4,0-0.7,0.1-1,0.2c-0.3,0.1-0.5,0.3-0.6,0.6c-0.2,0.2-0.3,0.5-0.5,0.9
                                          c-0.1,0.4-0.3,0.7-0.4,0.9l-3.5,9c-0.1,0.4-0.2,0.6-0.3,0.8C120.1,179.6,120.1,179.7,120.1,179.9z M126.4,169.8l2.1,5.7h-4.1
                                          L126.4,169.8z"/>
                                       <path class="st4" d="M135.8,179.2c0.6,0.6,1.3,1.1,2.1,1.5c0.9,0.3,1.8,0.5,2.9,0.5c1.3,0,2.4-0.2,3.4-0.7c0.5,0.4,0.9,0.7,1.4,0.9
                                          c0.4,0.3,0.8,0.5,1.1,0.6c0.3,0.1,0.6,0.2,0.8,0.2c0.3,0,0.5-0.1,0.7-0.3c0.2-0.2,0.3-0.4,0.3-0.6c0-0.3-0.1-0.5-0.2-0.7
                                          s-0.5-0.4-1-0.6s-0.9-0.5-1.3-0.8c1.2-1.3,1.8-3,1.8-5.2c0-1.4-0.3-2.7-0.8-3.8c-0.5-1.1-1.3-1.9-2.3-2.5c-1-0.6-2.3-0.9-3.7-0.9
                                          c-1.1,0-2,0.2-2.8,0.5c-0.8,0.3-1.5,0.8-2.1,1.4c-0.6,0.6-1,1.4-1.3,2.3c-0.3,0.9-0.5,1.9-0.5,2.9c0,1,0.1,2,0.4,2.9
                                          S135.3,178.6,135.8,179.2z M137.2,171.9c0.2-0.6,0.5-1.1,0.8-1.5c0.3-0.4,0.8-0.7,1.2-0.9c0.5-0.2,1-0.3,1.6-0.3
                                          c0.8,0,1.5,0.2,2.1,0.6s1.1,0.9,1.4,1.7c0.3,0.7,0.5,1.6,0.5,2.6c0,0.8-0.1,1.5-0.3,2.1c-0.2,0.6-0.5,1.1-0.9,1.6
                                          c-1.3-1-2.3-1.4-2.9-1.4c-0.2,0-0.4,0.1-0.5,0.2c-0.2,0.1-0.2,0.3-0.2,0.5c0,0.2,0.1,0.4,0.2,0.5c0.2,0.1,0.5,0.3,0.9,0.5
                                          c0.4,0.2,0.8,0.4,1.1,0.7c-0.5,0.2-1,0.3-1.4,0.3c-1.1,0-2.1-0.4-2.8-1.3c-0.7-0.9-1.1-2.1-1.1-3.7
                                          C136.9,173.2,137,172.5,137.2,171.9z"/>
                                       <path class="st4" d="M112.4,193.7h17.8c1,0,1.8-0.8,1.8-1.8s-0.8-1.8-1.8-1.8h-17.8c-1,0-1.8,0.8-1.8,1.8S111.4,193.7,112.4,193.7z
                                          "/>
                                       <path class="st4" d="M146.7,200.1h-21.5c-1,0-1.8,0.8-1.8,1.8s0.8,1.8,1.8,1.8h21.5c1,0,1.8-0.8,1.8-1.8S147.7,200.1,146.7,200.1z"
                                          />
                                       <path class="st0" d="M27.6,84.3v8.4c0,1.8,1.5,3.3,3.3,3.3H66c1.8,0,3.3-1.5,3.3-3.3v-8.4H27.6z M49.6,91.6
                                          c-0.9,0.7-2.2,0.5-2.8-0.4c-0.7-0.9-0.5-2.2,0.4-2.8c0.9-0.7,2.2-0.5,2.8,0.4C50.7,89.7,50.5,90.9,49.6,91.6z"/>
                                       <path class="st0" d="M27.6,27.3v5.5h26.3V26c0-0.7,0.1-1.3,0.3-2H30.9C29.1,24,27.6,25.5,27.6,27.3z"/>
                                       <line class="st6" x1="71.4" y1="82.2" x2="71.4" y2="82.2"/>
                                       <line class="st6" x1="25.5" y1="82.2" x2="25.5" y2="82.2"/>
                                       <line class="st6" x1="25.5" y1="34.9" x2="25.5" y2="34.9"/>
                                       <path class="st3" d="M53.9,32.8H27.6v-5.5c0-1.8,1.5-3.3,3.3-3.3h23.3c0.8-2.4,3.1-4.2,5.8-4.2H30.9c-4.1,0-7.5,3.4-7.5,7.5v65.4
                                          c0,4.1,3.4,7.5,7.5,7.5H66c4.1,0,7.5-3.4,7.5-7.5V71.6c0-1.2-0.9-2.1-2.1-2.1s-2.1,0.9-2.1,2.1v8.5H27.6V37h26.3V32.8z M25.5,34.9
                                          L25.5,34.9L25.5,34.9z M25.5,82.2L25.5,82.2L25.5,82.2z M66,96H30.9c-1.8,0-3.3-1.5-3.3-3.3v-8.4h41.7v8.4C69.3,94.5,67.8,96,66,96
                                          z M71.4,82.2L71.4,82.2L71.4,82.2z"/>
                                       <path class="st3" d="M47.2,88.4c-0.9,0.7-1.1,1.9-0.4,2.8c0.7,0.9,1.9,1.1,2.8,0.4c0.9-0.7,1.1-1.9,0.4-2.8
                                          C49.4,87.9,48.1,87.7,47.2,88.4z"/>
                                       <path class="st1" d="M90.4,24H66H60c-1.1,0-2,0.9-2,2v17.4c0,1.1,0.9,2,2,2h2.6c0.6,0,1.1,0.2,1.5,0.6c0.4,0.4,0.6,0.9,0.6,1.5
                                          l0,0.1l2.7-1.9c0.3-0.2,0.8-0.4,1.2-0.4h21.9c1.1,0,2-0.9,2-2V26C92.4,24.9,91.5,24,90.4,24z M64.7,37.5c-1.4,0-2.6-1.2-2.6-2.6
                                          s1.2-2.6,2.6-2.6c1.4,0,2.6,1.2,2.6,2.6S66.1,37.5,64.7,37.5z M75.2,37.5c-1.4,0-2.6-1.2-2.6-2.6s1.2-2.6,2.6-2.6
                                          c1.4,0,2.6,1.2,2.6,2.6S76.7,37.5,75.2,37.5z M85.4,37.5c-1.4,0-2.6-1.2-2.6-2.6s1.2-2.6,2.6-2.6s2.6,1.2,2.6,2.6
                                          S86.8,37.5,85.4,37.5z"/>
                                       <path class="st4" d="M90.4,19.8H66H60c-2.7,0-5,1.7-5.8,4.2c-0.2,0.6-0.3,1.3-0.3,2v6.8V37v6.3c0,3.4,2.7,6.1,6.1,6.1h0.4l-0.1,2.1
                                          c0,0.8,0.4,1.5,1.1,1.9c0.3,0.2,0.7,0.3,1,0.3c0.4,0,0.8-0.1,1.2-0.4l5.5-3.8h21.2c3.4,0,6.1-2.7,6.1-6.1V26
                                          C96.6,22.6,93.8,19.8,90.4,19.8z M92.4,43.3c0,1.1-0.9,2-2,2H68.5c-0.4,0-0.8,0.1-1.2,0.4l-2.7,1.9l0-0.1c0-0.6-0.2-1.1-0.6-1.5
                                          c-0.4-0.4-0.9-0.6-1.5-0.6H60c-1.1,0-2-0.9-2-2V26c0-1.1,0.9-2,2-2H66h24.5c1.1,0,2,0.9,2,2V43.3z"/>
                                       <path class="st3" d="M64.8,34.9c0-0.1-0.1-0.2-0.2-0.2c-0.1,0-0.2,0.1-0.2,0.2C64.5,35.1,64.8,35.1,64.8,34.9z"/>
                                       <path class="st4" d="M67.3,34.9c0-1.4-1.2-2.6-2.6-2.6c-1.4,0-2.6,1.2-2.6,2.6s1.2,2.6,2.6,2.6C66.1,37.5,67.3,36.3,67.3,34.9z
                                             M64.7,34.7c0.1,0,0.2,0.1,0.2,0.2c0,0.2-0.4,0.2-0.4,0C64.5,34.8,64.6,34.7,64.7,34.7z"/>
                                       <path class="st3" d="M75.2,34.7c-0.1,0-0.2,0.1-0.2,0.2c0,0.2,0.4,0.2,0.4,0C75.4,34.8,75.3,34.7,75.2,34.7z"/>
                                       <path class="st4" d="M75.2,32.3c-1.4,0-2.6,1.2-2.6,2.6s1.2,2.6,2.6,2.6c1.4,0,2.6-1.2,2.6-2.6S76.7,32.3,75.2,32.3z M75.1,34.9
                                          c0-0.1,0.1-0.2,0.2-0.2s0.2,0.1,0.2,0.2C75.4,35.1,75.1,35.1,75.1,34.9z"/>
                                       <path class="st3" d="M85.4,34.7c-0.1,0-0.2,0.1-0.2,0.2c0,0.2,0.4,0.2,0.4,0C85.6,34.8,85.5,34.7,85.4,34.7z"/>
                                       <path class="st4" d="M85.4,32.3c-1.4,0-2.6,1.2-2.6,2.6s1.2,2.6,2.6,2.6s2.6-1.2,2.6-2.6S86.8,32.3,85.4,32.3z M85.2,34.9
                                          c0-0.1,0.1-0.2,0.2-0.2s0.2,0.1,0.2,0.2C85.6,35.1,85.2,35.1,85.2,34.9z"/>
                                    </g>
                                 </svg>
                              </span>
                              <strong>분실물 문의</strong>
                           </a>
                        </li>
                     </ul>
                  </div>
               </article>
            </div>
         </div>
      </div>
   </section>
   <!-- //help -->

   <footer id="footer">
      <div id="footer_sns">
         <div class="container">
            <div class="footer_sns">
               <ul>
                  <li class="icon s1"><a href="#"><span class="ir_pm">트위터</span></a></li>
                  <li class="icon s2"><a href="#"><span class="ir_pm">페이스북</span></a></li>
                  <li class="icon s3"><a href="#"><span class="ir_pm">인스타그램</span></a></li>
                  <li class="icon s4"><a href="#"><span class="ir_pm">구글플레이</span></a></li>
                  <li class="icon s5"><a href="#"><span class="ir_pm">아이폰 앱스토어</span></a></li>
               </ul>
               <div class="tel">
                  <a href="#">ARS <em>1544-0070</em></a>
               </div>
            </div>
         </div>
      </div>
      <div id="footer_info">
         <div class="container">
            <div class="row">
               <div class="footer_info">
                  <h2><img src="${path}/resources/megabox/img/logo_footer.png" alt="megabox"></h2>
                  <ul>
                     <li><a href="#">회사소개</a></li>
                     <li><a href="#">채용정보</a></li>
                     <li><a href="#">제휴/광고/부대사업 문의</a></li>
                     <li><a href="#">개인정보처리방침</a></li>
                     <li><a href="#">고객센터</a></li>
                     <li><a href="#">윤리경영</a></li>
                  </ul>
                  <address>
                     <p>서울특별시 강남구 도산대로 156, 2층 메가박스중앙(주) (논현동, 중앙엠앤비사옥)<br>대표자명 김진선 개인정보보호 책임자 경영지원실 실장 박영진<br>사업자등록번호 211-86-59478 통신판매업신고번호 제 833호</p>
                     <p>Copyright 2014 by megaboxJoongAng Inc. All right reserved</p>
                  </address>
               </div>
            </div>
         </div>
      </div>
   </footer>
   <!-- //footer -->
   
   <!-- 자바스크립트 라이브러리 -->
   <script src="${path}/resources/megabox/js/jquery.min_1.12.4.js"></script>
   <script src="${path}/resources/megabox/js/modernizr-custom.js"></script>
   <script src="${path}/resources/megabox/js/ie-checker.js"></script>
   <script src="${path}/resources/megabox/js/swiper.min.js"></script>
   <script src="${path}/resources/megabox/js/iframe_api.js"></script>
   <script src="${path}/resources/megabox/js/custom.js"></script>
</body>
</html>
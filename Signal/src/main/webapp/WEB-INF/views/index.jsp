<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Hello World</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">

    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="resources/css/font-awesome.min.css">

    <!-- ElegantFonts CSS -->
    <link rel="stylesheet" href="resources/css/elegant-fonts.css"> 
        
    <!-- InfinitySans-fonts CSS 메인폰트 -->
    <link rel="stylesheet" href="resources/css/InfinitySans-fonts.css">

    <!-- themify-icons CSS -->
    <link rel="stylesheet" href="resources/css/themify-icons.css">

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="resources/css/swiper.min.css">

    <!-- Style CSS -->
    <link rel="stylesheet" href="resources/css/style.css">
     
    <!-- Modal CSS --> 
    <link rel="stylesheet" href="resources/css/modal.css">
    
    <script type="text/javascript">
       function loginFn(){
        var u_id=$("#u_id").val();
        if(u_id==""){
           alert("아이디를 입력하세요");
           $("#u_id").focus();
           return false;
        }
        var u_pwd=$("#u_pwd").val();
        if(u_pwd==""){
           alert("패스워드를 입력하세요");
           $("#u_pwd").focus();
           return false;
        }
        $("#login").submit();
     }
   </script>     
    

    
</head>

<body>
<!-- 헤더 -->
      <div>
         <%@include file="includes/header.jsp" %>
      </div>
<!-- 헤더 끝 -->

      <div class="black-background">
      <div class="white-modal">
          <div id="login_form"><!--로그인 폼-->
    
             <c:if test="${empty users}">
             <form action="loginGO" method="post">
                 <h3 class="login" style="letter-spacing:-1px;">
                    <a class="foot-logo" href="#"><img src="resources/images/signal1.png" alt=""></a>
                 </h3>
         
                 <!--<p>
                     <input type="submit" value=" 간편로그인 Kakao" class="btn" style="background-color:#19c880">
                     <input type="submit" value=" 간편로그인 Naver" class="btn" style="background-color:#19c880">
                 </p>
                 
                 -->
         
                 <hr>
                 <label>
                 <!-- <span>ID</span> -->
                 <p style="text-align: left; font-size:12px; color:#666" for="u_id">Username</p>
                 <input type="text" placeholder="아이디 입력" class="size" name="u_id" id="u_id">
                 <!-- <input type="submit" value="확인"> -->
                 <p></p>
                 </label>
         
                 <label>
                 <!-- <span>PW</span> -->
                 <p style="text-align: left; font-size:12px; color:#666" for="u_pwd">Password </p>
                 <input type="text" placeholder="비밀번호" class="size" name="u_pwd" id="u_pwd">
                 <!-- <input type="submit" value="확인"> -->
                 </label>
         
                 <p>
                     <input type="submit" value="로그인" class="btn" onclick="logindo()">
                 </p>
             </form>
             </c:if>
            
             <hr>
             <p class="find">
                 <span><a href="">아이디 찾기</a></span>
                 <span><a href="">비밀번호 찾기</a></span>
                 <span><a href="signup" >회원가입</a></span>
             </p>
             </div>   
      </div>
   </div>
   
         <!--  <div class="container"> -->
         <div class="slidebox"> 
             <div class="row">
               <div class="col-12">
                                       <!-- 배너 -->    
                 <div class="hero-content-wrap flex flex-column justify-content-center align-items-start">
                     <!-- 배너 자동 슬라이더 -->
                     <input type="radio" name="slide" id="slide01" checked>
                     <input type="radio" name="slide" id="slide02">
                     <input type="radio" name="slide" id="slide03">
                     <input type="radio" name="slide" id="slide04">
                     <ul class="slidelist">
                        <li class="slideitem">
                           <div>
                              <label for="slide04" class="left"></label>
                              <label for="slide02" class="right"></label>
                              <a><img src="resources/images/banner7.gif"></a>
                           </div>
                        </li>
                        <li class="slideitem">
                           <div>
                              <label for="slide01" class="left"></label>
                              <label for="slide03" class="right"></label>
                              <a><img src="resources/images/banner4.gif"></a>
                           </div>
                        </li>
                        <li class="slideitem">
                           <div>
                              <label for="slide02" class="left"></label>
                              <label for="slide04" class="right"></label>
                              <a><img src="resources/images/banner6.gif"></a>
                           </div>
                        </li>
                        <li class="slideitem">
                           <div>
                              <label for="slide03" class="left"></label>
                              <label for="slide01" class="right"></label>
                              <a><img src="resources/images/banner5.gif"></a>
                           </div>
                        </li>
                     </ul>
                      <div class="entry-content">
                      </div><!-- .entry-content -->
                  </div><!-- .hero-content-wrap -->
                </div><!-- .col -->
              </div><!-- .row -->
             </div>
         <!--</div> .container -->
          </div><!-- .hero-content-hero-content-overlay -->
    </div><!-- .hero-content -->
      
      
    <div class="icon-boxes">
        <div class="container-fluid">
            <div class="flex flex-wrap align-items-stretch">
                <div class="icon-box">
                    <div class="icon">
                        <span class="ti-user"></span>
                    </div><!-- .icon -->

                    <header class="entry-header">
                        <h2 class="entry-title">마이클래스</h2>
                    </header><!-- .entry-header -->

                    <div class="entry-content">
                        <p>Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.</p>
                    </div><!-- .entry-content -->

                    <footer class="entry-footer read-more">
                        <a href="#">read more<i class="fa fa-long-arrow-right"></i></a>
                    </footer><!-- .entry-footer -->
                </div><!-- .icon-box -->

                <div class="icon-box">
                    <div class="icon">
                        <span class="ti-folder"></span>
                    </div><!-- .icon -->

                    <header class="entry-header">
                        <h2 class="entry-title">온라인 강의</h2>
                    </header><!-- .entry-header -->

                    <div class="entry-content">
                        <p>Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.</p>
                    </div><!-- .entry-content -->

                    <footer class="entry-footer read-more">
                        <a href="#">read more<i class="fa fa-long-arrow-right"></i></a>
                    </footer><!-- .entry-footer -->
                </div><!-- .icon-box -->

                <div class="icon-box">
                    <div class="icon">
                        <span class="ti-book"></span>
                    </div><!-- .icon -->

                    <header class="entry-header">
                        <h2 class="entry-title">게시판</h2>
                    </header><!-- .entry-header -->

                    <div class="entry-content">
                        <p>Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.</p>
                    </div><!-- .entry-content -->

                    <footer class="entry-footer read-more">
                        <a href="#">read more<i class="fa fa-long-arrow-right"></i></a>
                    </footer><!-- .entry-footer -->
                </div><!-- .icon-box -->
                <div class="icon-box">
                    <div class="icon">
                        <span class="ti-world"></span>
                    </div><!-- .icon -->

                    <header class="entry-header">
                        <h2 class="entry-title">문의하기</h2>
                    </header><!-- .entry-header -->

                    <div class="entry-content">
                        <p>Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.</p>
                    </div><!-- .entry-content -->

                    <footer class="entry-footer read-more">
                        <a href="#">read more<i class="fa fa-long-arrow-right"></i></a>
                    </footer><!-- .entry-footer -->
                </div><!-- .icon-box -->
            </div><!-- .row -->
        </div><!-- .container-fluid -->
    </div><!-- .icon-boxes -->

    <!-- #url 업로드 창 만들기-->
    <!-- url 업로드 창 -->
    <section class ="section-padding-100">

		<div class="search-container">
			<p class="search-title">수어 번역 서비스</p>
			<form action="movieDetail.jsp">
				<div class="search-box">
					<a href="">
					<input class="search-input" placeholder="url 주소 입력" name="search">
						<button class="searchbtn" name = "click">
						<img class="btn-img" src="">
					</button>
						</a>
				</div>
			</form>
		</div>
	</section>
  
    <section class="featured-courses vertical-column courses-wrap">
        <div class="container">
            <div class="row mx-m-25">
                <div class="col-12 px-25">
                    <header class="heading flex flex-wrap justify-content-between align-items-center">
                        <h2 class="entry-title">번역된 코딩강의</h2>

                        <nav class="courses-menu mt-3 mt-lg-0">
                            <ul class="flex flex-wrap justify-content-md-end align-items-center">
                                <li class="active"><a href="java_page">자바</a></li>
                                <li><a href="js_page">자바스크립트</a></li>
                                <li><a href="#">파이썬</a></li>
                                <li><a href="#">머신러닝</a></li>
                                <li><a href="#">딥러닝</a></li>
                            </ul>
                        </nav><!-- .courses-menu -->
                    </header><!-- .heading -->
                </div><!-- .col -->

                <div class="col-12 col-md-6 col-lg-4 px-25">
                    <div class="course-content">
                        <figure class="course-thumbnail">
                            <a href="#"><img src="resources/images/thumbnail/Java/java_thumbnail01.jpg" alt=""></a>
                        </figure><!-- .course-thumbnail -->

                        <div class="course-content-wrap">
                            <header class="entry-header">
                                <h2 class="entry-title"><a href="detailpage">[자바] NO.1 환경구축 및 사용법</a></h2>

                                <div class="entry-meta flex align-items-center">
                                    <div class="course-author"><a href="#">채수민 연구원 </a></div>

                                    <div class="course-date">스마트인재개발원</div>
                                </div><!-- .course-date -->
                            </header><!-- .entry-header -->

                            <footer class="entry-footer flex justify-content-between align-items-center">
                                <div class="course-cost">
                                     <span class="price-drop"></span>
                                </div><!-- .course-cost -->

                                <div class="course-ratings flex justify-content-end align-items-center">
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star-o"></span>

                                    <span class="course-ratings-count">(좋아요 4)</span>
                                </div><!-- .course-ratings -->
                            </footer><!-- .entry-footer -->
                        </div><!-- .course-content-wrap -->
                    </div><!-- .course-content -->
                </div><!-- .col -->

                <div class="col-12 col-md-6 col-lg-4 px-25">
                    <div class="course-content">
                        <figure class="course-thumbnail">
                            <a href="#"><img src="resources/images/thumbnail/Java/java02.png" alt=""></a>
                        </figure><!-- .course-thumbnail -->

                        <div class="course-content-wrap">
                            <header class="entry-header">
                                <h2 class="entry-title"><a href="#">[자바] NO.2 변수와 자료형</a></h2>

                                <div class="entry-meta flex align-items-center">
                                    <div class="course-author"><a href="#">채수민 연구원</a></div>

                                    <div class="course-date">스마트인재개발원</div>
                                </div><!-- .course-date -->
                            </header><!-- .entry-header -->

                            <footer class="entry-footer flex justify-content-between align-items-center">
                                <div class="course-cost">
                                    <span class="free-cost"></span>
                                </div><!-- .price-drop -->

                                <div class="course-ratings flex justify-content-end align-items-center">
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star-o"></span>

                                    <span class="course-ratings-count">(좋아요 4)</span>
                                </div><!-- .course-ratings -->
                            </footer><!-- .entry-footer -->
                        </div><!-- .course-content-wrap -->
                    </div><!-- .course-content -->
                </div><!-- .col -->

                <div class="col-12 col-md-6 col-lg-4 px-25">
                    <div class="course-content">
                        <figure class="course-thumbnail">
                            <a href="#"><img src="resources/images/thumbnail/Java/java03.png" alt=""></a>
                        </figure><!-- .course-thumbnail -->

                        <div class="course-content-wrap">
                            <header class="entry-header">
                                <h2 class="entry-title"><a href="#">[자바] NO.3 연산자 6가지!</a></h2>

                                <div class="entry-meta flex align-items-center">
                                    <div class="course-author"><a href="#">채수민 연구원</a></div>

                                    <div class="course-date">스마트인재개발원</div>
                                </div><!-- .course-date -->
                            </header><!-- .entry-header -->

                            <footer class="entry-footer flex justify-content-between align-items-center">
                                <div class="course-cost">
                                    <span class="price-drop"></span>
                                </div><!-- .course-cost -->

                                <div class="course-ratings flex justify-content-end align-items-center">
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star-o"></span>

                                    <span class="course-ratings-count">(4 votes)</span>
                                </div><!-- .course-ratings -->
                            </footer><!-- .entry-footer -->
                        </div><!-- .course-content-wrap -->
                    </div><!-- .course-content -->
                </div><!-- .col -->

                <div class="col-12 col-md-6 col-lg-4 px-25">
                    <div class="course-content">
                        <figure class="course-thumbnail">
                            <a href="#"><img src="resources/images/thumbnail/Java/java04.png" alt=""></a>
                        </figure><!-- .course-thumbnail -->

                        <div class="course-content-wrap">
                            <header class="entry-header">
                                <h2 class="entry-title"><a href="#">[자바] NO.4 입출력 </a></h2>

                                <div class="entry-meta flex align-items-center">
                                    <div class="course-author"><a href="#">채수민 연구원</a></div>

                                    <div class="course-date">스마트인재개발원</div>
                                </div><!-- .course-date -->
                            </header><!-- .entry-header -->

                            <footer class="entry-footer flex justify-content-between align-items-center">
                                <div class="course-cost">
                                    <span class="free-cost"></span>
                                </div><!-- .course-cost -->

                                <div class="course-ratings flex justify-content-end align-items-center">
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star-o"></span>

                                    <span class="course-ratings-count">(좋아요 4)</span>
                                </div><!-- .course-ratings -->
                            </footer><!-- .entry-footer -->
                        </div><!-- .course-content-wrap -->
                    </div><!-- .course-content -->
                </div><!-- .col -->

                <div class="col-12 col-md-6 col-lg-4 px-25">
                    <div class="course-content">
                        <figure class="course-thumbnail">
                            <a href="#"><img src="resources/images/thumbnail/Java/java05.png" alt=""></a>
                        </figure><!-- .course-thumbnail -->

                        <div class="course-content-wrap">
                            <header class="entry-header">
                                <h2 class="entry-title"><a href="#">[자바] NO.5 if문 & if-else문</a></h2>

                                <div class="entry-meta flex align-items-center">
                                    <div class="course-author"><a href="#">채수민 연구원</a></div>

                                    <div class="course-date">스마트인재개발원</div>
                                </div><!-- .course-date -->
                            </header><!-- .entry-header -->

                            <footer class="entry-footer flex justify-content-between align-items-center">
                                <div class="course-cost">
                                     <span class="price-drop"></span>
                                </div><!-- .course-cost -->

                                <div class="course-ratings flex justify-content-end align-items-center">
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star-o"></span>

                                    <span class="course-ratings-count">(좋아요 4)</span>
                                </div><!-- .course-ratings -->
                            </footer><!-- .entry-footer -->
                        </div><!-- .course-content-wrap -->
                    </div><!-- .course-content -->
                </div><!-- .col -->

                <div class="col-12 col-md-6 col-lg-4 px-25">
                    <div class="course-content">
                        <figure class="course-thumbnail">
                            <a href="#"><img src="resources/images/thumbnail/Java/java06.png" alt=""></a>
                        </figure><!-- .course-thumbnail -->

                        <div class="course-content-wrap">
                            <header class="entry-header">
                                <h2 class="entry-title"><a href="#">[자바] NO.6 반복문(for문) </a></h2>

                                <div class="entry-meta flex align-items-center">
                                    <div class="course-author"><a href="#">채수민 연구원</a></div>

                                    <div class="course-date">스마트인재개발원</div>
                                </div><!-- .course-date -->
                            </header><!-- .entry-header -->

                            <footer class="entry-footer flex justify-content-between align-items-center">
                                <div class="course-cost">
                                    <span class="free-cost"></span>
                                </div><!-- .course-cost -->

                                <div class="course-ratings flex justify-content-end align-items-center">
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star-o"></span>

                                    <span class="course-ratings-count">(좋아요 4)</span>
                                </div><!-- .course-ratings -->
                            </footer><!-- .entry-footer -->
                        </div><!-- .course-content-wrap -->
                    </div><!-- .course-content -->
                </div><!-- .col -->

                <div class="col-12 px-25 flex justify-content-center">
                    <a class="btn" href="#">더보기</a>
                </div><!-- .col -->
            </div><!-- .row -->
        </div><!-- .container -->
    </section><!-- .courses-wrap -->
    
   <!-- footer -->
         <div>
   <%@include file="includes/footer.jsp" %>
</div>
   <!-- footer -->

   <script type='text/javascript' src='resources/js/jquery.js'></script>
   <script type='text/javascript' src='resources/js/swiper.min.js'></script>
   <script type='text/javascript' src='resources/js/masonry.pkgd.min.js'></script>
   <script type='text/javascript' src='resources/js/jquery.collapsible.min.js'></script>
   <script type='text/javascript' src='resources/js/custom.js'></script>
   <script type='text/javascript' src='resources/js/modal.js'></script>
   
   <!-- 로그인 모달 -->
   <script>
    var login = document.querySelector('.login-modal')
   var background = document.querySelector('.black-background')
   login.addEventListener('click',function(){
      background.style.display = "block";
   })
   
   background.addEventListener('click',function(e){
      if(e.target == e.currentTarget){
         background.style.display = 'none';
      }
   })
   </script>
    
   

</body>
</html>
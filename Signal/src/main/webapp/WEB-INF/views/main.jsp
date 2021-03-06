<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<!-- 모달 head -->
   <head>
          <meta charset="utf-8">
          <meta name="viewport" content="width=device-width">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>        
   </head>
<!-- 모달 head end-->   

<head>
    <title>Signal_mainpage</title>

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
    <script type='text/javascript' src='resources/js/jquery.js'></script>
   <script type='text/javascript' src='resources/js/swiper.js'></script>
   <script type='text/javascript' src='resources/js/masonry.pkgd.min.js'></script>
   <script type='text/javascript' src='resources/js/jquery.collapsible.min.js'></script>
   <script type="text/javascript">
    const $=jQuery.noConflict();
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
   
   <script src="resources/js/isotope.pkgd.min.js"></script> <!-- #데이터 필터 -->
   
   </style>
   
</head>
<body>

<!-- 헤더 -->
      <div>
         <%@include file="includes/header.jsp" %>
      </div>
<!-- 헤더 끝 -->

<!-- 로그인 모달 -->
      <div>
         <%@include file="includes/login_modal.jsp" %>
      </div>
<!-- 로그인 모달 끝 -->

<!-- 문의 모달 -->
      <div>
         <%@include file="includes/qa_modal.jsp" %>
      </div>
<!-- 문의 모달 끝 -->

<!-- 배너 슬라이드 -->
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
                              <a><img src="resources/images/banner6.gif"></a>
                           </div>
                        </li>
                        <li class="slideitem">
                           <div>
                              <label for="slide02" class="left"></label>
                              <label for="slide04" class="right"></label>
                              <a><img src="resources/images/banner4.gif"></a>
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
                  </div><!-- .hero-content-wrap -->
                </div><!-- .col -->
              </div><!-- .row -->
             </div>
         <!--</div> .container -->
          </div><!-- .hero-content-hero-content-overlay -->
    </div><!-- .hero-content -->
      
    <!-- url 업로드 창 --> 
   <section class ="search">
      <div class="url-container">
         <h1 class="search-title">배우고 싶은 강의를 입력해보세요!</h1>
          <div class="bar-search">
              <form class="flex align-items-stretch" action="http://211.107.188.144:3306/post" method="post">
                  <input type="search" placeholder="URL 주소 입력" name="link">
                  <button type="submit" value="" class="flex justify-content-center align-items-center">
                  <i class="fa fa-search"></i></button>
              </form>
          </div><!-- .header-bar-search -->
       </div>         
   </section>
    <!-- url 업로드 창 end -->
    
     <!-- # 강의 목록 # -->
    <section class="featured-courses vertical-column courses-wrap">
        <div class="container">
            <div class="row mx-m-25">
                <div class="col-12 px-25">
                       <header class="heading flex flex-wrap justify-content-between align-items-center">
                        <h2 class="entry-title">번역된 코딩강의</h2>
                        <nav class="courses-menu mt-3 mt-lg-0">
                            <ul class="btn_set flex flex-wrap justify-content-md-end align-items-center">   
                           <li class="on"><a href="javascript:video(0);" data-filter="*">모든 강의</a></li>
                           		   <li><a href="javascript:video(0);" data-filter=".python">파이썬</a></li>
                                   <li><a href="javascript:video(0);" data-filter=".java">자바</a></li>
                                   <li><a href="javascript:video(0);" data-filter=".js">자바스크립트</a></li>
                                   <li><a href="javascript:video(0);" data-filter=".machine">머신러닝</a></li>
                                   <li><a href="javascript:video(0);" data-filter=".deep">딥러닝</a></li>
                            </ul>
                        </nav><!-- .courses-menu -->
                    </header><!-- .heading -->
                </div><!-- .col -->
                
                
                <div class="course-item-wrap">
                	<div class="course-item java row" id="java">
		                	
		              <div class="col-12 col-md-6 col-lg-4 px-25">  
		                    <div class="course-content">
		                        <figure class="course-thumbnail">
		                            <a href="detailpage"><img src="resources/images/thumbnail/Java/java_thumbnail01.jpg" alt=""></a>
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
		                                    <span class="fa fa-star checked"></span>
		                                   
		
		                                    <span class="course-ratings-count">(좋아요 5)</span>
		                                </div><!-- .course-ratings -->
		                            </footer><!-- .entry-footer -->
		                        </div><!-- .course-content-wrap -->
		                    </div><!-- .course-content -->
		                </div><!-- .col -->
		
		                <div class="col-12 col-md-6 col-lg-4 px-25">
		                    <div class="course-content">
		                        <figure class="course-thumbnail">
		                            <a href="detailpage"><img src="resources/images/thumbnail/Java/java02.png" alt=""></a>
		                        </figure><!-- .course-thumbnail -->
		
		                        <div class="course-content-wrap">
		                            <header class="entry-header">
		                                <h2 class="entry-title"><a href="detailpage">[자바] NO.2 변수와 자료형</a></h2>
		
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
		                            <a href="detailpage"><img src="resources/images/thumbnail/Java/java03.png" alt=""></a>
		                        </figure><!-- .course-thumbnail -->
		
		                        <div class="course-content-wrap">
		                            <header class="entry-header">
		                                <h2 class="entry-title"><a href="detailpage">[자바] NO.3 연산자 6가지!</a></h2>
		
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
		                            <a href="detailpage"><img src="resources/images/thumbnail/Java/java04.png" alt=""></a>
		                        </figure><!-- .course-thumbnail -->
		
		                        <div class="course-content-wrap">
		                            <header class="entry-header">
		                                <h2 class="entry-title"><a href="detailpage">[자바] NO.4 입출력 </a></h2>
		
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
		                                    <span class="fa fa-star checked"></span>
		                                  
		
		                                    <span class="course-ratings-count">(좋아요 5)</span>
		                                </div><!-- .course-ratings -->
		                            </footer><!-- .entry-footer -->
		                        </div><!-- .course-content-wrap -->
		                    </div><!-- .course-content -->
		                </div><!-- .col -->
		
		                <div class="col-12 col-md-6 col-lg-4 px-25">
		                    <div class="course-content">
		                        <figure class="course-thumbnail">
		                            <a href="detailpage"><img src="resources/images/thumbnail/Java/java05.png" alt=""></a>
		                        </figure><!-- .course-thumbnail -->
		
		                        <div class="course-content-wrap">
		                            <header class="entry-header">
		                                <h2 class="entry-title"><a href="detailpage">[자바] NO.5 if문 & if-else문</a></h2>
		
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
		                                    <span class="fa fa-star checked"></span>
		                              
		
		                                    <span class="course-ratings-count">(좋아요 5)</span>
		                                </div><!-- .course-ratings -->
		                            </footer><!-- .entry-footer -->
		                        </div><!-- .course-content-wrap -->
		                    </div><!-- .course-content -->
		                </div><!-- .col -->
		
		                <div class="col-12 col-md-6 col-lg-4 px-25">
		                    <div class="course-content">
		                        <figure class="course-thumbnail">
		                            <a href="detailpage"><img src="resources/images/thumbnail/Java/java06.png" alt=""></a>
		                        </figure><!-- .course-thumbnail -->
		
		                        <div class="course-content-wrap">
		                            <header class="entry-header">
		                                <h2 class="entry-title"><a href="detailpage">[자바] NO.6 반복문(for문) </a></h2>
		
		                                <div class="entry-meta flex align-items-center">
		                                    <div class="course-author"><a href="">채수민 연구원</a></div>
		
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
                	
                	
                	</div>
                	
                	<!-- # js 카테고리 # -->
                	<div class="course-item js row" id="js">
                	
                				  
			                <div class="col-12 col-md-6 col-lg-4 px-25">  
			                    <div class="course-content">
			                        <figure class="course-thumbnail">
			                            <a href="detailpage"><img src="resources/images/thumbnail/JS/JS1-1.jpg" alt=""></a>
			                        </figure><!-- .course-thumbnail -->
			
			                        <div class="course-content-wrap">
			                            <header class="entry-header">
			                                <h2 class="entry-title"><a href="detailpage">[자바스크립트] NO.1-1 입력과 출력</a></h2>
			
			                                <div class="entry-meta flex align-items-center">
			                                    <div class="course-author"><a href="#">강예진 연구원 </a></div>
			
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
			                                    <span class="fa fa-star checked"></span>
			                             
			
			                                    <span class="course-ratings-count">(좋아요 5)</span>
			                                </div><!-- .course-ratings -->
			                            </footer><!-- .entry-footer -->
			                        </div><!-- .course-content-wrap -->
			                    </div><!-- .course-content -->
			                </div><!-- .col -->
			
			                <div class="col-12 col-md-6 col-lg-4 px-25">
			                    <div class="course-content">
			                        <figure class="course-thumbnail">
			                            <a href="detailpage"><img src="resources/images/thumbnail/JS/JS1-2.jpg" alt=""></a>
			                        </figure><!-- .course-thumbnail -->
			
			                        <div class="course-content-wrap">
			                            <header class="entry-header">
			                                <h2 class="entry-title"><a href="detailpage">[자바스크립트] NO.1-2 입력과 출력 응용실습</a></h2>
			
			                                <div class="entry-meta flex align-items-center">
			                                    <div class="course-author"><a href="#">강예진 연구원</a></div>
			
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
			                            <a href="detailpage"><img src="resources/images/thumbnail/JS/JS2-1.jpg" alt=""></a>
			                        </figure><!-- .course-thumbnail -->
			
			                        <div class="course-content-wrap">
			                            <header class="entry-header">
			                                <h2 class="entry-title"><a href="detailpage">[자바스크립트] NO.2-1 출력/ 변수</a></h2>
			
			                                <div class="entry-meta flex align-items-center">
			                                    <div class="course-author"><a href="#">강예진 연구원</a></div>
			
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
			                            <a href="detailpage"><img src="resources/images/thumbnail/JS/JS2-2.jpg" alt=""></a>
			                        </figure><!-- .course-thumbnail -->
			
			                        <div class="course-content-wrap">
			                            <header class="entry-header">
			                                <h2 class="entry-title"><a href="detailpage">[자바스크립트] NO.2-2 변수 응용실습 </a></h2>
			
			                                <div class="entry-meta flex align-items-center">
			                                    <div class="course-author"><a href="#">강예진 연구원</a></div>
			
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
			                                    <span class="fa fa-star checked"></span>
			                                    
			
			                                    <span class="course-ratings-count">(좋아요 5)</span>
			                                </div><!-- .course-ratings -->
			                            </footer><!-- .entry-footer -->
			                        </div><!-- .course-content-wrap -->
			                    </div><!-- .course-content -->
			                </div><!-- .col -->
			
			                <div class="col-12 col-md-6 col-lg-4 px-25">
			                    <div class="course-content">
			                        <figure class="course-thumbnail">
			                            <a href="detailpage"><img src="resources/images/thumbnail/JS/JS3-1.jpg" alt=""></a>
			                        </figure><!-- .course-thumbnail -->
			
			                        <div class="course-content-wrap">
			                            <header class="entry-header">
			                                <h2 class="entry-title"><a href="detailpage">[자바스크립트] NO.3-1 연산자</a></h2>
			
			                                <div class="entry-meta flex align-items-center">
			                                    <div class="course-author"><a href="#">강예진 연구원</a></div>
			
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
			                            <a href="detailpage"><img src="resources/images/thumbnail/JS/JS3-2.jpg" alt=""></a>
			                        </figure><!-- .course-thumbnail -->
			
			                        <div class="course-content-wrap">
			                            <header class="entry-header">
			                                <h2 class="entry-title"><a href="detailpage">[자바스크립트] NO.3-2 실행위치</a></h2>
			
			                                <div class="entry-meta flex align-items-center">
			                                    <div class="course-author"><a href="">채수민 연구원</a></div>
			
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
			                                    <span class="fa fa-star checked"></span>
			                               
			
			                                    <span class="course-ratings-count">(좋아요 5)</span>
			                                </div><!-- .course-ratings -->
			                            </footer><!-- .entry-footer -->
			                        </div><!-- .course-content-wrap -->
			                    </div><!-- .course-content -->
			                </div><!-- .col -->
			                
                	</div>
                	
                	<!-- # 파이썬 카테고리 # -->
                	<div class="course-item python row" id="python">
                	        <div class="col-12 col-md-6 col-lg-4 px-25">  
			                    <div class="course-content">
			                        <figure class="course-thumbnail">
			                            <a href="detailpage"><img src="resources/images/thumbnail/Python/python01.jpg" alt=""></a>
			                        </figure><!-- .course-thumbnail -->
			
			                        <div class="course-content-wrap">
			                            <header class="entry-header">
			                                <h2 class="entry-title"><a href="detailpage">[파이썬] NO.1 파이썬 개요 및 아나콘다 설치</a></h2>
			
			                                <div class="entry-meta flex align-items-center">
			                                    <div class="course-author"><a href="#">이명호 연구원 </a></div>
			
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
			                                    <span class="fa fa-star checked"></span>
			                             
			
			                                    <span class="course-ratings-count">(좋아요 5)</span>
			                                </div><!-- .course-ratings -->
			                            </footer><!-- .entry-footer -->
			                        </div><!-- .course-content-wrap -->
			                    </div><!-- .course-content -->
			                </div><!-- .col -->
			
			                <div class="col-12 col-md-6 col-lg-4 px-25">
			                    <div class="course-content">
			                        <figure class="course-thumbnail">
			                            <a href="detailpage"><img src="resources/images/thumbnail/Python/python02.jpg" alt=""></a>
			                        </figure><!-- .course-thumbnail -->
			
			                        <div class="course-content-wrap">
			                            <header class="entry-header">
			                                <h2 class="entry-title"><a href="detailpage">[파이썬] NO.2 주피터 노트북 사용법</a></h2>
			
			                                <div class="entry-meta flex align-items-center">
			                                    <div class="course-author"><a href="#">이명호 연구원</a></div>
			
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
			                            <a href="detailpage"><img src="resources/images/thumbnail/Python/python03.jpg" alt=""></a>
			                        </figure><!-- .course-thumbnail -->
			
			                        <div class="course-content-wrap">
			                            <header class="entry-header">
			                                <h2 class="entry-title"><a href="detailpage">[파이썬] NO.3 변수</a></h2>
			
			                                <div class="entry-meta flex align-items-center">
			                                    <div class="course-author"><a href="#">이명호 연구원</a></div>
			
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
			                                    <span class="fa fa-star checked"></span>
			                            
			
			                                    <span class="course-ratings-count">(좋아요 5)</span>
			                                </div><!-- .course-ratings -->
			                            </footer><!-- .entry-footer -->
			                        </div><!-- .course-content-wrap -->
			                    </div><!-- .course-content -->
			                </div><!-- .col -->
			
			                <div class="col-12 col-md-6 col-lg-4 px-25">
			                    <div class="course-content">
			                        <figure class="course-thumbnail">
			                            <a href="detailpage"><img src="resources/images/thumbnail/Python/python04.jpg" alt=""></a>
			                        </figure><!-- .course-thumbnail -->
			
			                        <div class="course-content-wrap">
			                            <header class="entry-header">
			                                <h2 class="entry-title"><a href="detailpage">[파이썬] NO.4 문자열 자료형 Part.1</a></h2>
			
			                                <div class="entry-meta flex align-items-center">
			                                    <div class="course-author"><a href="#">이명호 연구원</a></div>
			
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
			                                    <span class="fa fa-star checked"></span>
			                                  
			
			                                    <span class="course-ratings-count">(좋아요 5)</span>
			                                </div><!-- .course-ratings -->
			                            </footer><!-- .entry-footer -->
			                        </div><!-- .course-content-wrap -->
			                    </div><!-- .course-content -->
			                </div><!-- .col -->
			
			                <div class="col-12 col-md-6 col-lg-4 px-25">
			                    <div class="course-content">
			                        <figure class="course-thumbnail">
			                            <a href="detailpage"><img src="resources/images/thumbnail/Python/python05.jpg" alt=""></a>
			                        </figure><!-- .course-thumbnail -->
			
			                        <div class="course-content-wrap">
			                            <header class="entry-header">
			                                <h2 class="entry-title"><a href="detailpage">[파이썬] NO.5 문자열 자료형 Part.2</a></h2>
			
			                                <div class="entry-meta flex align-items-center">
			                                    <div class="course-author"><a href="#">이명호 연구원</a></div>
			
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
			                            <a href="detailpage"><img src="resources/images/thumbnail/Python/python1.jpg" alt=""></a>
			                        </figure><!-- .course-thumbnail -->
			
			                        <div class="course-content-wrap">
			                            <header class="entry-header">
			                                <h2 class="entry-title"><a href="detailpage">[파이썬] no.6 산술 연산자    Part.1</a></h2>
			
			                                <div class="entry-meta flex align-items-center">
			                                    <div class="course-author"><a href="">이명호 연구원</a></div>
			
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
			                                    <span class="fa fa-star checked"></span>
			                            
			
			                                    <span class="course-ratings-count">(좋아요 5)</span>
			                                </div><!-- .course-ratings -->
			                            </footer><!-- .entry-footer -->
			                        </div><!-- .course-content-wrap -->
			                    </div><!-- .course-content -->
			                </div><!-- .col -->
                
                	</div>
                	
                	<!-- # machine 카테고리 # -->
                	<div class="course-item machine row" id="machine">
                				<div class="col-12 col-md-6 col-lg-4 px-25">  
			                    <div class="course-content">
			                        <figure class="course-thumbnail">
			                            <a href="detailpage"><img src="resources/images/thumbnail/Machine/machine1.jpg" alt=""></a>
			                        </figure><!-- .course-thumbnail -->
			
			                        <div class="course-content-wrap">
			                            <header class="entry-header">
			                                <h2 class="entry-title"><a href="detailpage">[머신러닝] NO.1 개요 part1  </h2>
			
			                                <div class="entry-meta flex align-items-center">
			                                    <div class="course-author"><a href="#">황해도 팀장</a></div>
			
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
			                                    <span class="fa fa-star checked"></span>
			                                   
			                                    <span class="course-ratings-count">(좋아요 5)</span>
			                                </div><!-- .course-ratings -->
			                            </footer><!-- .entry-footer -->
			                        </div><!-- .course-content-wrap -->
			                    </div><!-- .course-content -->
			                </div><!-- .col -->
			
			                <div class="col-12 col-md-6 col-lg-4 px-25">
			                    <div class="course-content">
			                        <figure class="course-thumbnail">
			                            <a href="detailpage"><img src="resources/images/thumbnail/Machine/machine2.jpg" alt=""></a>
			                        </figure><!-- .course-thumbnail -->
			
			                        <div class="course-content-wrap">
			                            <header class="entry-header">
			                                <h2 class="entry-title"><a href="detailpage">[머신러닝] NO.2 개요 part2</a></h2>
			
			                                <div class="entry-meta flex align-items-center">
			                                    <div class="course-author"><a href="#">황해도 팀장</a></div>
			
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
			                                    <span class="fa fa-star checked"></span>
			                                    <span class="fa fa-star-o"></span>
			
			                                    <span class="course-ratings-count">(좋아요 5)</span>
			                                </div><!-- .course-ratings -->
			                            </footer><!-- .entry-footer -->
			                        </div><!-- .course-content-wrap -->
			                    </div><!-- .course-content -->
			                </div><!-- .col -->
			
			                <div class="col-12 col-md-6 col-lg-4 px-25">
			                    <div class="course-content">
			                        <figure class="course-thumbnail">
			                            <a href="detailpage"><img src="resources/images/thumbnail/Machine/machine3.jpg" alt=""></a>
			                        </figure><!-- .course-thumbnail -->
			
			                        <div class="course-content-wrap">
			                            <header class="entry-header">
			                                <h2 class="entry-title"><a href="detailpage">[머신러닝] NO.3 실습 part1</a></h2>
			
			                                <div class="entry-meta flex align-items-center">
			                                    <div class="course-author"><a href="#">황해도 팀장</a></div>
			
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
			                                    <span class="fa fa-star checked"></span>
			                            
			
			                                    <span class="course-ratings-count">(좋아요 5)</span>
			                                </div><!-- .course-ratings -->
			                            </footer><!-- .entry-footer -->
			                        </div><!-- .course-content-wrap -->
			                    </div><!-- .course-content -->
			                </div><!-- .col -->
			
			                <div class="col-12 col-md-6 col-lg-4 px-25">
			                    <div class="course-content">
			                        <figure class="course-thumbnail">
			                            <a href="detailpage"><img src="resources/images/thumbnail/Machine/machine4.jpg" alt=""></a>
			                        </figure><!-- .course-thumbnail -->
			
			                        <div class="course-content-wrap">
			                            <header class="entry-header">
			                                <h2 class="entry-title"><a href="detailpage">[머신러닝] NO.4 실습 part2 </a></h2>
			
			                                <div class="entry-meta flex align-items-center">
			                                    <div class="course-author"><a href="#">황해도 팀장</a></div>
			
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
			                            <a href="detailpage"><img src="resources/images/thumbnail/Machine/machine5.jpg" alt=""></a>
			                        </figure><!-- .course-thumbnail -->
			
			                        <div class="course-content-wrap">
			                            <header class="entry-header">
			                                <h2 class="entry-title"><a href="detailpage">[머신러닝] NO.5 실습 part5</a></h2>
			
			                                <div class="entry-meta flex align-items-center">
			                                    <div class="course-author"><a href="#">황해도 팀장</a></div>
			
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
			                                    <span class="fa fa-star checked"></span>
			                                 
			
			                                    <span class="course-ratings-count">(좋아요 5)</span>
			                                </div><!-- .course-ratings -->
			                            </footer><!-- .entry-footer -->
			                        </div><!-- .course-content-wrap -->
			                    </div><!-- .course-content -->
			                </div><!-- .col -->
			
			                <div class="col-12 col-md-6 col-lg-4 px-25">
			                    <div class="course-content">
			                        <figure class="course-thumbnail">
			                            <a href="detailpage"><img src="resources/images/thumbnail/Machine/machine6.jpg" alt=""></a>
			                        </figure><!-- .course-thumbnail -->
			
			                        <div class="course-content-wrap">
			                            <header class="entry-header">
			                                <h2 class="entry-title"><a href="detailpage">[머신러닝] NO.6 실습 part6 </a></h2>
			
			                                <div class="entry-meta flex align-items-center">
			                                    <div class="course-author"><a href="">황해도 팀장</a></div>
			
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
    
                	</div>
                	
                	<div class="course-item deep row" id="deep">
                				<div class="col-12 col-md-6 col-lg-4 px-25">  
			                    <div class="course-content">
			                        <figure class="course-thumbnail">
			                            <a href="detailpage"><img src="resources/images/thumbnail/Deep/deep1.png" alt=""></a>
			                        </figure><!-- .course-thumbnail -->
			
			                        <div class="course-content-wrap">
			                            <header class="entry-header">
			                                <h2 class="entry-title"><a href="detailpage">[딥러닝] NO.1 안녕하세연이 알려주는 딥러닝 개요!</a></h2>
			
			                                <div class="entry-meta flex align-items-center">
			                                    <div class="course-author"><a href="#">정세연 연구원 </a></div>
			
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
			                                    <span class="fa fa-star checked"></span>
			                               
			
			                                    <span class="course-ratings-count">(좋아요 5)</span>
			                                </div><!-- .course-ratings -->
			                            </footer><!-- .entry-footer -->
			                        </div><!-- .course-content-wrap -->
			                    </div><!-- .course-content -->
			                </div><!-- .col -->
			
			                <div class="col-12 col-md-6 col-lg-4 px-25">
			                    <div class="course-content">
			                        <figure class="course-thumbnail">
			                            <a href="detailpage"><img src="resources/images/thumbnail/Deep/deep2.png" alt=""></a>
			                        </figure><!-- .course-thumbnail -->
			
			                        <div class="course-content-wrap">
			                            <header class="entry-header">
			                                <h2 class="entry-title"><a href="detailpage">[딥러닝] NO.2 안녕하세연이 알려주는 딥러닝 개요!</a></h2>
			
			                                <div class="entry-meta flex align-items-center">
			                                    <div class="course-author"><a href="#">정세연 연구원</a></div>
			
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
			                            <a href="detailpage"><img src="resources/images/thumbnail/Deep/deep3.png" alt=""></a>
			                        </figure><!-- .course-thumbnail -->
			
			                        <div class="course-content-wrap">
			                            <header class="entry-header">
			                                <h2 class="entry-title"><a href="detailpage">[딥러닝] NO.3 안녕하세연이 알려주는 딥러닝 개요!</a></h2>
			
			                                <div class="entry-meta flex align-items-center">
			                                    <div class="course-author"><a href="#">정세연 연구원</a></div>
			
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
			                            <a href="detailpage"><img src="resources/images/thumbnail/Deep/deep4.png" alt=""></a>
			                        </figure><!-- .course-thumbnail -->
			
			                        <div class="course-content-wrap">
			                            <header class="entry-header">
			                                <h2 class="entry-title"><a href="detailpage">[딥러닝] NO.4 안녕하세연이 알려주는 딥러닝 개요!</a></h2>
			
			                                <div class="entry-meta flex align-items-center">
			                                    <div class="course-author"><a href="#">정세연 연구원</a></div>
			
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
			                            <a href="detailpage"><img src="resources/images/thumbnail/Deep/deep5.png" alt=""></a>
			                        </figure><!-- .course-thumbnail -->
			
			                        <div class="course-content-wrap">
			                            <header class="entry-header">
			                                <h2 class="entry-title"><a href="detailpage">[딥러닝] NO.5 안녕하세연이 알려주는 딥러닝 개요!</a></h2>
			
			                                <div class="entry-meta flex align-items-center">
			                                    <div class="course-author"><a href="#">정세연 연구원</a></div>
			
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
			                                    <span class="fa fa-star checked"></span>
			                             
			
			                                    <span class="course-ratings-count">(좋아요 5)</span>
			                                </div><!-- .course-ratings -->
			                            </footer><!-- .entry-footer -->
			                        </div><!-- .course-content-wrap -->
			                    </div><!-- .course-content -->
			                </div><!-- .col -->
			
			                <div class="col-12 col-md-6 col-lg-4 px-25">
			                    <div class="course-content">
			                        <figure class="course-thumbnail">
			                            <a href="detailpage"><img src="resources/images/thumbnail/Deep/deep6.png" alt=""></a>
			                        </figure><!-- .course-thumbnail -->
			
			                        <div class="course-content-wrap">
			                            <header class="entry-header">
			                                <h2 class="entry-title"><a href="detailpage">[딥러닝] NO.6 안녕하세연이 알려주는 딥러닝 개요!</a></h2>
			
			                                <div class="entry-meta flex align-items-center">
			                                    <div class="course-author"><a href="">정세연 연구원</a></div>
			
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
			                                    <span class="fa fa-star checked"></span>
			                             
			
			                                    <span class="course-ratings-count">(좋아요 5)</span>
			                                </div><!-- .course-ratings -->
			                            </footer><!-- .entry-footer -->
			                        </div><!-- .course-content-wrap -->
			                    </div><!-- .course-content -->
			                </div><!-- .col -->
                	</div>
                </div>
                <div class="col-12 px-25 flex justify-content-center">
                    <a class="btn" href="#">더보기</a>
                </div><!-- .col -->
               </div>   
          </div> 
      </section>
 <!-- # 강의 목록 end # -->
    
   <!-- footer -->
  <div>
    <%@include file="includes/footer.jsp" %>
  </div>
   <!-- footer -->
   <script type='text/javascript' src='resources/js/custom.js'></script>
   <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
<script>
<!-- 로그인 모달 -->


      
<!-- 데이터 필터 -->

   $(document).ready( function() { 
   $('.course-item-wrap').isotope({ 
          itemSelector: '.course-item', 
   }); 
   $('.featured-courses.vertical-column.courses-wrap').css({height:'unset'});
   // courses items on button click 
   $('.btn_set').on('click', 'li', function() { 
         var filterValue = $(this).children().attr('data-filter'); 
         $('.course-item-wrap').isotope({ filter: filterValue });
         $('.btn_set li').removeClass('on'); 
         $(this).addClass('on');
        });
    });
    
   </script>
  
</body>
</html>
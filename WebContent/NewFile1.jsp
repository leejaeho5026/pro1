<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>포트폴리오 - CJ프레시웨이</title>
    <!-- 문서 정보 등록 -->
    <!-- 검색엔진최적화(Search Engine Optimization) : SEO -->
    <meta name="subject" content="CJ프레시웨이 벤치마킹 사이트">
    <meta name="keywords" content="CJ프레시웨이, 식품, 식단, 주문제작">
    <meta name="description" content="CJ프레시웨이는 좋은 식자재를 유통하며, 건강하고 맛있는 식문화를 창출하는 대한민국 최고의 글로벌 식자재 유통 및 푸드서비스 전문 기업입니다.
    ">
    <meta name="author" content="mr. kim">

    <!-- 파비콘(favicon) 설정 -->
    <link rel="shortcut icon" href="./im/220921_press_000.jpg">

    <!-- https://okgunyang.github.io/web1 -->
    <!-- 오픈그래프 설정 -->
    <meta name="og:site_name" content="사이트이름">
    <meta name="og:title" content="포트폴리오 - CJ프레시웨이">
    <meta name="og:description" content="CJ프레시웨이는 좋은 식자재를 유통하며, 건강하고 맛있는 식문화를 창출하는 대한민국 최고의 글로벌 식자재 유통 및 푸드서비스 전문 기업입니다.">
    <mata name="og:url" content="https://okgunyang.github.io/web1">
    <mata name="og:image" content="./images/thumbnail.jpg">  
          
    <!-- 기본 폰트 및 초기화 로딩 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <!-- 스타일 초기화 -->
    <!-- reset.css나 normalize.css를 CDN 또는 다운로드 받아 link로 연결 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">
    <style>
    /* 
    웹 폰트 : 구글 웹폰트 또는 눈누, 응용 프로그램용 폰트 : 다폰트
    font-family:"1차폰트명",2차폰트명,3차폰트명;}
    3차 폰트는 기본 폰트를 적용함
    기본 폰트 : 브라우저에서 기본적으로 제공하는 폰트
    sans-serif(고딕), serif(명조), cursive(궁서), monospace(가로세로비율1:1폰트), fantasy(심볼기호나 디자인폰트)
    */
    * { margin: 0; padding: 0; }
    
    body, html { width: 100%; font-family: 'Noto Sans KR', sans-serif; overflow-x:hidden; }    
    ul { list-style:none; }
    a { text-decoration: none; }
    img { border: none; }

    .np { font-family: 'Nanum Pen Script', cursive;}

    .container { clear:both; width:100%; }
    .hd { clear:both; width: 100%; }
    .tnb { clear:both; width: 100%; height:35px; background-color:#075d46;}
    .tnb_wrap { clear:both;  width: 1400px; margin: 0 auto; height:20px; }
    .left_tnb { float:left; }
    .left_tnb li { float:left; line-height: 35px; }
    .left_tnb li:first-child::after { content:"|"; color:#fff; margin-right: 14px; }
    .left_tnb li a { margin-right: 14px; }
    .left_tnb li a:hover { color:deeppink; }
    .right_tnb { float:right; }
    .right_tnb li { float:left; line-height: 35px; }
    .right_tnb li a { margin-left: 14px; display:block; width:30px; height:30px;
     text-indent:9999px; overflow: hidden; 
     background-image: url("./images/icons.png");
     margin-top: 10px; background-size:300px 700px; }
    /* split icon : 하나의 아이콘셋 이미지를 쪼개어 여러 아이콘을 표시 
        background-image는 같고, background-position으로 조절하여 해당 아이콘이 나타나도록 함
    */
    /* 각 각의 아이콘 이미지 적용시
    .right_tnb li a { background-size:auto; background-position:center center; }
    .right_tnb li a.ico1 { background-image: url("./images/icon1.png"); }
    .right_tnb li a.ico2 { background-image: url("./images/icon2.png"); }
    .right_tnb li a.ico3 { background-image: url("./images/icon3.png"); }
    */
    .right_tnb li a.sns1 { background-position:-67px -67px; }
    .right_tnb li a.sns2 { background-position:-7px -67px; }
    .right_tnb li a.sns3 { background-position:-36px -67px; }
    .tnb ul li a { color:#fff; font-size:0.9em; }
    
    .main { clear:both; width: 100%; height:75px; background-color: #fff; 
    border-bottom:1px solid #ecedee; }
    .main_wrap { width: 1400px; margin: 0 auto; position:relative; }
    
    .logo { display:block; width: 120px; height:45px; overflow:hidden;
        position:absolute; top:10px; left: 0; z-index:10;   }
    .logo img { display:block; width: 100%; height:auto; }
    
    .gnb { position:relative; margin-top: 10px; }
    .gnb > ul { width:800px;  height:48px;  margin: 0 auto; }
    .gnb > ul > li { float:left; width: 20%; text-align: center; 
        line-height: 50px; }
    .gnb > ul > li > a { display:block; font-size:1.3em; color:#333;
    font-weight: bold; }
    .gnb > ul > li:hover > a { border-bottom:2px solid #075d46; 
        color:#075d46; }

    .sub { display:none; padding-top: 20px; width: 1000px; }
    .sub.item2 { margin-left: -240px; }
    .sub.item3 { margin-left: -320px; }
    .sub.item4 { margin-left: -480px; }
    .sub.item5 { margin-left: -640px; }
    .gnb > ul > li:hover > .sub { display:block; }
    .sub > ul > li { float:left; width: 20%; }
    .sub > ul > li > a { display:block; color:#075d46; font-size:1.1em; 
    font-weight: 500; }
    .sub > ul > li:hover > a { color:#41c365; }

    .sitemap_btn { display:block; position:absolute; top:20px;  z-index:10;
         right:0px; cursor:pointer; width: 20px; height: 20px; overflow:hidden;
        text-indent:-9999px; background-image: url("./images/gnb_icon_menu.png");
        background-size:20px 40px; background-position:center -20px; }
    .sitemap { position:fixed; top: 0; left: 0; width: 100vw; height: 100vh;
         z-index:999; background-color: deeppink; display:none; }
    #sitemap_ck:checked ~ .sitemap { display:block; }    
    #sitemap_ck { display:none; }

    .vs { clear:both; position:relative; width: 100vw; height:calc(100vh - 135px);
    overflow:hidden;  }
    .vs video { display:block; width: 100%; }

    .page { clear:both; position:relative; width: 100vw; height:100vh; }
    .page_wrap { clear:both; width: 1400px; margin: 0 auto; }
    .page_title { text-align: center; font-size:48px; padding-top: 1.5em; }

    #page1 { background-color: #fff; color:#333; }
    #page1 .page_wrap { width:1280px; padding-top: 80px; }
    #page1 .tit_box { float:right; }
    .sub_title { font-size:28px; color:orange; font-weight: 100; letter-spacing:-2px;}
    .main_title { font-size:72px; color:#000; font-weight:700; float:left; }
    #page1 .pg1_btn_box { clear:both;  }
    #page1 .pg1_btn_box label { display:block; padding:0.8em; float:left; 
    border:1px solid #e1e1e1; border-radius:36px; margin:0.5rem; color:#999;
    cursor:pointer;  }
    #page1 .pg1_btn_box label:hover {  color:#fff; background-color:#37e3b5; }
    .pg1_ra { display:none; }    
    #page1 .pg1_ra:checked + label { color:#fff; background-color:#075d46; }
    .ban_fr { clear:both; width: 1280px; height: 550px; padding-top: 40px; overflow:hidden; }
    .ban_fr .ban_box { width: 600%; height: 550px; transition-duration:0.6s; }
    .ban_fr .ban_box li { width: 1280px; float:left; height: 550px; }
    .ban_fr .ban_box li .pic { display:block; width: 840px; height: 550px; float:left;
    border-radius:40px;  }
    .ban_fr .ban_box li .ban_tit_box { float:right; width: 400px; height: 550px; position:relative; 
        background-color: #f1f1f1; border-radius:40px; }
    .ban_fr .ban_box li .ban_tit_box .ban_tit1 { font-size:64px; line-height:3; color:#075d46; 
    margin-left:50px; }
    .ban_fr .ban_box li .ban_tit_box .ban_tit2 { position:absolute; left:50px; bottom: 120px;
         font-size:36px; line-height:2; color:#075d46; }
    .ban_fr .ban_box li .ban_tit_box .ban_com { position:absolute; bottom:50px;
        left: 50px;  font-size:16px; color:#666; }

    #pg1_ra1:checked ~ .ban_fr .ban_box { margin-left: 0; }
    #pg1_ra2:checked ~ .ban_fr .ban_box { margin-left:-1280px; }
    #pg1_ra3:checked ~ .ban_fr .ban_box { margin-left:-2560px; }
    #pg1_ra4:checked ~ .ban_fr .ban_box { margin-left:-3840px; }
    #pg1_ra5:checked ~ .ban_fr .ban_box { margin-left:-5120px; }
    #pg1_ra6:checked ~ .ban_fr .ban_box { margin-left:-6400px; }

    #page2 { background-color: #f1f1f1; color:#222; }
    #page2 .page_wrap { width: 1280px; padding-top:80px; }
    .grid_fr { clear:both; width: 1280px; }
    .grid_fr .grid_box { clear:both; width: 1280px; padding-top: 40px; }
    .grid_box li { width: 410px; margin-right: 25px; float:left; height: 624px; }
    .grid_box li:last-child { margin-right: 0; }
    .grid_box li a { display:block; color:#fff; background-position:center center; 
    background-repeat: no-repeat; border-radius:40px; margin-top: 25px; height: 300px;
    padding-top:6em;  padding-left: 2em; font-size:30px; box-sizing:border-box; }
    .grid_box li a.item1 { background-image: url("./im/12345.JPG");}
    .grid_box li a.item2 { background-image: url("./im/1234556.JPG"); }
    .grid_box li a.item3 { height:624px; background-image: url("./im/img04.jpg");  
    background-size:auto 100%; }
    .grid_box li a.item4 { background-image: url("./im/img04@2x-min.png"); }
    .grid_box li a.item5 { background-image: url("./im/zxczxc.JPG"); }
    .grid_box li a .grid_tit { line-height: 1.8; }
    .grid_box li a.item3 .grid_tit { padding-top:9.2em; line-height: 1.8; }
    .grid_box li a .grid_com { font-size:16px; }

    #page3 { background-image : url("./im/img04.jpg");color:#fff; }
    #page3 .page_wrap { width: 1280px; padding-top:80px; }
    .col_fr { clear:both; width: 1280px; padding-top: 40px; }
    .col_fr .col_box { clear: both; width: 1280px; }
    .col_fr .col_box li.left { float:left; width: 844px; height: 458px; 
    background-color:#ffffff; color:#000; border-radius:25px; box-sizing: border-box; 
padding:38px; }
    .one_line { font-size:28px; line-height: 2; padding-bottom:18px; }    
    .inv_p { clear:both; }
    .large_txt { float:left; font-size:70px; padding-right: 40px; }
    .small_txt { float:left; font-size:18px; padding-top: 14px; line-height: 1.8; }
    .col_dl { clear:both; padding-top:30px;  }
    .col_dl dd { width:250px; float:left; margin:20px 0px; font-size:22px; font-weight:100; 
    line-height: 1.6; }
    .col_dl dd .d_tit { font-weight: 200; color:#999; }
    .col_dl dd .d_com { font-weight: 100; }
    .gtxt { color:#37e3b5; padding-left: 24px; }
    .ltxt { color:#999; }
    .dot:after { content:"|"; padding-left: 24px; }
    .col_fr .col_box li.right { float:right; width: 410px; height: 458px; }
    .col_fr .col_box li.right a { display:block; background-color: #fff; color:#333; 
        height: 135px; line-height: 135px;  margin-bottom: 26px; border-radius:25px;   }
    .col_fr .col_box li.right a span { padding-left: 20px; }
    .col_fr .col_box li.right a:after { content:""; display:block; width: 28px; height: 35px; 
    background-image: url("./images/icons.png"); background-repeat: no-repeat; 
    background-position: -495px -72px; float:right; margin-top:50px; margin-right:20px; }
    .col_fr .col_box li.right a span:before { content:""; display:block; float:left; 
    width:79px; height:76px; background-image:url("./images/icons.png"); background-repeat: no-repeat;
    background-position:0px -682px; margin-top: 30px; margin-left: 20px; } 

    #page4 { background-color: #fff; color:#333; }
    #page4 .tit_box { clear:both; padding-top:80px; width: 1280px; margin: 0 auto; }
    .more { display:block; position:absolute; top:60px; right:200px; font-size:68px; font-weight:bold; 
    width:80px; height:80px; border:1px solid #ccc; text-align: center; color:#999; }
    .board_fr { clear:both; width: 1280px; margin:0px auto;  padding-top: 40px; }
    .tb1 { clear:both; display:table; border-collapse: collapse;  }
    .tb1 tr { display:table-row;  width: 1280px; }
    .tb1 td { display:table-cell; min-height:50px; padding-top: 20px; padding-bottom: 20px; 
    border-top:1px solid #ccc; }
    .tb1 tr:last-child td { border-bottom:1px solid #ccc; }
    .tb1 td.td1 { vertical-align:top; width:100px; text-align:left; font-size:32px; 
        color:#075d46; font-weight: 100; }
    .tb1 td a { display:block; color:#333; transition-duration:0.4s; }
    .tb1 td a .td_tit { width:1100px; font-size:28px; line-height:1.4; font-weight:200;  padding-right: 36px;
        white-space: nowrap; overflow:hidden; text-overflow: ellipsis; }
    .tb1 td a .td_com { width:1100px; font-size:18px; line-height:2.2; font-weight:100; 
        color:#999;  padding-right: 36px;
        white-space: nowrap; overflow:hidden; text-overflow: ellipsis; }
    .tb1 td a:hover { color:#075d46; }
    .tb1 td a:hover .td_com { color:#075d46;}


    #page5 { background-color: #eee; color:#222; }
    #page5 .tit_box { clear:both; padding-top: 80px; }
    .colm_fr { clear:both; }
    .colm_fr .lst_tit { clear:both; padding-top: 30px; font-size:28px; font-weight:100; 
        line-height: 2; }
    .lst1, .lst2 { clear:both; }
    .lst1 li, .lst2 li { float:left; width: 410px; margin-right: 25px; height: 250px;
        background-color: #fff;   border-radius:25px; box-sizing:border-box; padding: 28px; 
    padding-left: 40px; }
    .lst1 li:last-child, .lst2 li:last-child { margin-right: 0; }
    .colm_fr ul .item_tit { font-size:32px; line-height: 2.8; color:#075d46; }
    .colm_fr ul li:before { content:""; display:block; width:60px; height:60px;
    background-image: url("./images/icons.png"); background-repeat:no-repeat; 
    background-size:300px auto; }
    .colm_fr ul li a { display:block; width: 150px; line-height: 30px; padding-left: 18px; 
        background-color:#075d46; color:#fff; border-radius:20px; }
    .colm_fr ul li a:after { content:"→"; padding-left:60px;  }    
    .colm_fr .lst1 .item1:before { background-position: 0px -400px; }
    .colm_fr .lst1 .item2:before { background-position: -60px -400px; }
    .colm_fr .lst1 .item3:before { background-position: -120px -400px; }
    .colm_fr .lst2 .item1:before { background-position: -180px -400px; }
    .colm_fr .lst2 .item2:before { background-position: -240px -400px; }
    .colm_fr .lst2 .item3:before { background-position: 0px -460px; }


    #ft { clear:both;  }
    .ft .row { clear:both; padding-top: 25px; padding-bottom: 25px; min-height:60px; }
    .ft .row1 { background-color:#075d46;  }
    .ft .fnb li { float:left; margin-right: 50px; line-height: 60px; }
    .ft .fnb li a { color:#fff; font-size: 18px; }
    .ft .fnb li a:hover { color:gold; }
    .ft #favo { display:block; line-height: 60px; height: 60px; width: 200px; text-align: center;
    font-size: 18px;  }

    .ft .row2 { background-color: #f1f1f1; height: 224px; }
    .ft .slogan { font-size: 36px; color:#e0e0e0; }
    .ft .ft_link_fr dl { float:left; font-size:16px; line-height: 32px; padding-left: 28px; }
    .ft .ft_link_fr dl a { color:#a0a0a0; }
    .ft .ft_link_fr dl a:hover { color:#333; }

    .ft .row3 { background-color: #fff; }
    .ft .ft_logo { width: 125px; height: 45px; background-image: url("./images/headerlogo_pc_kor.png"); 
    background-size:125px auto; }
    .ft .copyright { height: 45px; line-height: 45px; font-style: normal; font-weight:100;
    color:#a0a0a0; }

    .ft_wrap { clear:both; width: 1280px; margin: 0 auto; }
    .ft_wrap .left { float: left; }
    .ft_wrap .right { float: right; }


    .fix_area { position:fixed; z-index:9999; bottom:40px; right:40px; }
    .fix_area .cir_box { display:block; width: 60px; height: 60px; text-align:center; 
    border-radius:35px; box-sizing: border-box; padding: 6px; font-size:12px; padding-top:15px; 
    overflow:hidden; box-shadow:1px 1px 6px #333; }
    .fix_area .counsel { background-color:rgba(255,255,255,0.75); color:#333; }
    .fix_area .totop { background-color:#075d46; color:#fff; margin-top: 20px; }
    </style>
</head>
<body>
    <div class="container">
        <header class="hd">
            <nav class="tnb">
                <div class="tnb_wrap">
                    <ul class="left_tnb">
                        <li><a href="">로그인</a></li>
                        <li><a href="">회원가입</a></li>
                    </ul>
                    <ul class="right_tnb">
                        <li><a href="" class="sns1">A1</a></li>
                        <li><a href="" class="sns2">A2</a></li>
                        <li><a href="" class="sns3">A3</a></li>
                    </ul>
                </div>
            </nav>
            <div class="main">
                <div class="main_wrap">
                    <a href="" class="logo">
                        <img src="./im/123123.JPG" alt="스마일게이트">
                    </a>
                    <nav class="gnb">
                        <ul class="gnb_fr">
                            <li><a href="">COMPANY</a>
                                <div class="sub item1">
                                    <ul class="dp2">
                                        <li><a href="">스마일게이트 소개</a></li>
                                        <li><a href="">연혁</a></li>
                                        <li><a href="">ICONIC 20</a></li>
                                        <li><a href="">다양성과 포용성</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="">GAME</a>
                                <div class="sub item2">
                                    <ul class="dp2">
                                        <li><a href="">마술양품점</a></li>
                                        <li><a href="">크로스파이어</a></li>
                                        <li><a href="">로스트아크</a></li>
                                        <li><a href="">테일즈런너</a></li>
                                        <li><a href="">에픽세븐</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="">MEDIA</a>
                                <div class="sub item3">
                                    <ul class="dp2">
                                        <li><a href="">뉴스룸</a></li>
                                        <li><a href="">IN THE PRESS</a></li>
                                        <li><a href="">멀티미디어</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="">CAREER</a>
                                <div class="sub item4">
                                    <ul class="dp2">
                                        <li><a href="">인재채용</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="">CONTRIBUTION</a>
                                <div class="sub item5">
                                    <ul class="dp2">
                                        <li><a href="">창업지원</a></li>
                                        <li><a href="">미래세대지원</a></li>
                                        <li><a href="">창의창작지원</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </nav>
                    <label for="sitemap_ck" class="sitemap_btn">사이트맵</label>
                </div>
            </div>
            <input type="checkbox" id="sitemap_ck">
            <div class="sitemap">
                <div class="sitemap_fr">
                    <label for="sitemap_ck" class="close_btn">닫기</label>
                    여기는 사이트 맵
                </div>
            </div>
        </header>
        <div class="content">
            <figure class="vs">
                <div class="img_box">
                    <video src="./movie/YUA.mp4" muted autoplay loop></video>
                </div>
            </figure>
            <!-- section.page#page$*5>h2.page_title{페이지제목$}+div.page_wrap -->
            <section class="page" id="page1">
                <h2 class="page_title" style="display:none;">DISCOVER MEGA VALUE</h2>
                <div class="page_wrap">
                    <div class="tit_box">
                        <h3 class="sub_title">ABOUT</h3>
                        <h2 class="main_title">SMILEGATE NOW</h2>
                    </div>
                    <article class="pg1_btn_box">
                        <!-- (input[type=radio][name=pg_ra]#pg1_ra$.pg1_ra+label[for=pg1_ra$].item$)*6 -->
                        <input type="radio" name="pg_ra" id="pg1_ra1" class="pg1_ra" checked>
                        <label for="pg1_ra1" class="item1">Smilegate</label>
                        <input type="radio" name="pg_ra" id="pg1_ra2" class="pg1_ra">
                        <label for="pg1_ra2" class="item2">YNA</label>
                        <input type="radio" name="pg_ra" id="pg1_ra3" class="pg1_ra">
                        <label for="pg1_ra3" class="item3">PLATFORM</label>
                        <input type="radio" name="pg_ra" id="pg1_ra4" class="pg1_ra">
                        <label for="pg1_ra4" class="item4">LET’S PLAY
                            PLAYSHOP</label>
                        <input type="radio" name="pg_ra" id="pg1_ra5" class="pg1_ra">
                        <label for="pg1_ra5" class="item5">DELIGHT EVERYONE</label>
                        <input type="radio" name="pg_ra" id="pg1_ra6" class="pg1_ra">
                        <label for="pg1_ra6" class="item6">HISTORY</label>
                        <!-- div.ban_fr>ul.ban_box>li.item$>img.pic+(div.ban_tit_box>h2.ban_tit1+h2.ban_tit2+p.ban_com) -->
                        <div class="ban_fr">
                            <ul class="ban_box">
                                <li class="item1">
                                    <img src="./im/banner-img-1.png" alt="스마일게이트" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">01</h2>
                                        <h2 class="ban_tit2">Smilegate</h2>
                                        <p class="ban_com">글로벌 엔터테인먼트 기업으로서
                                            더 나은 내일을<br> 만들기 위한 스마일게이트의 오늘을 소개합니다.
                                        </p>
                                    </div>
                                </li>
                                <li class="item2">
                                    <img src="./im/221115_press_000.jpg" alt="YNA" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">02</h2>
                                        <h2 class="ban_tit2">DISCOVER  MEGA VALUE</h2>
                                        <p class="ban_com">스마일게이트 인베스트먼트는 혁신 기업에 적극 투자하며 MEGA VALUE를 발굴하고, 
                                            스타트업이 유니콘으로 성장하도록 체계적인 지원을 하고 있습니다.
                                            </p>
                                    </div>
                                </li>
                                <li class="item3">
                                    <img src="./im/kv-bg4.jpg" alt="LET’S PLAY
                                    PLAYSHOP" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">03</h2>
                                        <h2 class="ban_tit2">LET’S PLAY
                                            PLAYSHOP</h2>
                                        <p class="ban_com">스마일게이트는 스토브, 스토브인디, 피풀 등 다양한 <br>플랫폼으로 유저에게는 자유로운 소통을 할 수 있는<br> 소셜 기능을,
                                            게임 개발사에게는 편리한 개발과 마케팅 환경을 제공합니다.</p>
                                    </div>
                                </li>
                                <li class="item4">
                                    <img src="./im/44444.JPG" alt="IP BUSINESS&TECH" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">04</h2>
                                        <h2 class="ban_tit2">LET’S PLAY
                                            PLAYSHOP</h2>
                                        <p class="ban_com">스마일게이트는 2022년 임직원들에게 최대 250만 원의 여행 경비와 4일간의 유급휴가를 지원했습니다.</p>
                                    </div>
                                </li>
                                <li class="item5">
                                    <img src="./im/di01.png" alt="DELIGHT EVERYONE" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">05</h2>
                                        <h2 class="ban_tit2">DELIGHT EVERYONE</h2>
                                        <p class="ban_com">모두를 위한 즐거움</p>
                                    </div>
                                </li>
                                <li class="item6">
                                    <img src="./im/1223331111.PNG" alt="HISTORY" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">06</h2>
                                        <h2 class="ban_tit2">THE GREAT EVOLUTION</h2>
                                        <p class="ban_com">글로벌 IP 명가를 향한 도전의 역사, 스마일게이트가 걸어온 길.</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </article>
                </div>
            </section>
            <section class="page" id="page2">
                <h2 class="page_title" style="display:none">ESG</h2>
                <div class="page_wrap">
                    <div class="tit_box">
                        <h3 class="sub_title">HISYTOR</h3>
                        <h2 class="main_title">BUSINESS</h2>
                    </div>
                    <!-- article.grid_fr>ul.grid_box>li*3>(a.item$>h3.grid_tit+p.grid_com)*2 -->
                    <article class="grid_fr">
                        <ul class="grid_box">
                            <li>
                                <a href="" class="item1">
                                    <h3 class="grid_tit">게임</h3>
                                    <p class="grid_com">The Stylish Fantasy World</p>
                                </a>
                                <a href="" class="item2">
                                    <h3 class="grid_tit">IP비즈니스&테크</h3>
                                    <p class="grid_com">GLOBAL NO.1 FPS</p>
                                </a>
                            </li>
                            <li>
                                <a href="" class="item3">
                                    <h3 class="grid_tit">투자</h3>
                                    <p class="grid_com">블록버스터 MMORPG</p>
                                </a>
                            </li>
                            <li>
                                <a href="" class="item4">
                                    <h3 class="grid_tit">플랫폼</h3>
                                    <p class="grid_com">아름다운 동화나라 속 모험!</p>
                                </a>
                                <a href="" class="item5">
                                    <h3 class="grid_tit">슈퍼탱크대작전</h3>
                                    <p class="grid_com">BE A SUPERTANKER</p>
                                </a>
                            </li>
                        </ul>
                    </article>
                </div>
            </section>
            <section class="page" id="page3">
                <h2 class="page_title" style="display:none">IR</h2>
                <div class="page_wrap">
                    <div class="tit_box">
                        <h3 class="sub_title">IR</h3>
                        <h2 class="main_title" style="color:#fff">GAME</h2>
                    </div>
                    <!-- article.col_fr>ul.col_box>li.left+li.right -->
                    <article class="col_fr">
                        <ul class="col_box">
                            <li class="left">
                                <p class="one_line"><span class="dot">GAME
                                    </span> <span class="gtxt">& TECH</span></p>
                                <div class="inv_p">
                                    <p class="large_txt">Smilegate</p>
                                    <p class="small_txt">
                                        <span class="ltxt">스마일게이트는 즐거움을 선사합니다.</span><br>
                                    <!-- <span class="btxt">─ 0 &nbsp; &nbsp; 0.00%</span> -->
                                    </p>
                                </div>
                                <dl class="col_dl">
                                    <dd>
                                        <h4 class="d_tit">GLOBAL NO.1FPS</h4>
                                        <p class="d_com">크로스파이어</p>
                                    </dd>
                                    <dd>
                                        <h4 class="d_tit">블록버스터 MMORPG</h4>
                                        <p class="d_com">로스트아크</p>
                                    </dd>
                                    <dd>
                                        <h4 class="d_tit">The Stylish Fantasy World</h4>
                                        <p class="d_com">마술양품점</p>
                                    </dd>
                                    <dd>
                                        <h4 class="d_tit">아름다운 동화나라 속 모험</h4>
                                        <p class="d_com">테일즈런너</p>
                                    </dd>
                                    <dd>
                                        <h4 class="d_tit">BE A SUPERTANKER</h4>
                                        <p class="d_com">슈퍼탱크대작전</p>
                                    </dd>
                                    <dd>
                                        <h4 class="d_tit">당신이 꿈꿔왔던 게임</h4>
                                        <p class="d_com">에픽세븐</p>
                                    </dd>
                                </dl>
                            </li>
                            <li class="right">
                                <a href="" class="item1"><span>STOVE</span></a>
                                <a href="" class="item2"><span>크로스파이어X</span></a>
                                <a href="" class="item3"><span>인디게임</span></a>
                            </li>
                        </ul>
                    </article>
                </div>
            </section>
            <section class="page" id="page4">
                <h2 class="page_title" style="display:none">PRESS</h2>
                <div class="page_wrap">
                    <div class="tit_box">
                        <h3 class="sub_title">PRESS</h3>
                        <h2 class="main_title">NEWSROOM</h2>
                    </div>
                    <a href="" class="more">+</a>
                    <!-- article.board_fr>table.tb1>tbody>tr*5>td.td1+(td.td2>a>h3.td_tit+p.td_com) -->
                    <article class="board_fr">
                        <table class="tb1">
                            <tbody>
                                <tr>
                                    <td class="td1">5</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">Smilegate 희망스튜디오</h3>
                                            <p class="td_com">국지역아동센터협의회에 제 14회 광주비엔날레 입장권 1,000장 기부</p>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">4</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">CJ프레시웨이, 병원급식 고객 서비스 질 높인다… 임상영양 전문가 육성</h3>
                                            <p class="td_com">CJ프레시웨이, 병원급식 고객 서비스 질 높인다... 임상영양 전문가 육성   병원 단체급식 운영그룹 '임상영양 마스터 과정' 수료식 진행 사내 영양사 30명 대상 병원 임상영양</p>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">3</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">CJ프레시웨이, 봄 성수기 맞아 컨세션 서비스 개편…</h3>
                                            <p class="td_com">CJ프레시웨이, 봄 성수기 맞아 컨세션 서비스 개편… “야구장 ‘직관 맥주’ 경험해 보세요”   광주-기아 챔피언스 필드 특별관람석 ‘비스트로 펍’ 개편, 야구장 맛집으로 인기 워</p>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">2</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">CJ프레시웨이, 홈페이지 리뉴얼… 고객 소통, ESG 경영 강화</h3>
                                            <p class="td_com">CJ프레시웨이, 홈페이지 리뉴얼… "고객 소통, ESG 경영 강화"     뉴스룸, 고객 상담 서비스 및 지속가능경영 콘텐츠 신설 '지디웹 디자인 어워즈' 우수작 선정… "고객 맞</p>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">1</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">CJ프레시웨이, 푸드 펀딩으로 착한 연어 선봬… 와디즈에 ASC 인증 수산물 출시</h3>
                                            <p class="td_com">CJ프레시웨이, 푸드 펀딩으로 '착한 연어' 선봬… 와디즈에 ASC 인증 수산물 출시     생산부터 유통까지 엄격한 기준 적용한 칠레 파타고니아 고품질 연어 새로운 맛 찾아 20</p>
                                        </a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </article>
                </div>
            </section>
            <section class="page" id="page5">
                <h2 class="page_title" style="display:none">CS CENTER</h2>
                <div class="page_wrap">
                    <div class="tit_box">
                        <h3 class="sub_title">CS CENTER</h3>
                        <h2 class="main_title">고객상담센터</h2>
                    </div>
                    <!-- article.colm_fr>(h3.lst_tit+(ul.lst$*2>li.item$*3>h3.item_tit+a.item_more{상담하기}))*2 -->
                    <article class="colm_fr">
                        <h3 class="lst_tit">비즈니스 상담센터</h3>
                        <ul class="lst1">
                            <li class="item1">
                                <h3 class="item_tit">식자재 구매 상담</h3>
                                <a href="" class="item_more">상담하기</a>
                            </li>
                            <li class="item2">
                                <h3 class="item_tit">단체급식 위탁 상담</h3>
                                <a href="" class="item_more">상담하기</a>
                            </li>
                            <li class="item3">
                                <h3 class="item_tit">협력사 상담</h3>
                                <a href="" class="item_more">상담하기</a>
                            </li>
                        </ul>
                        <h3 class="lst_tit">간편 상담센터</h3>
                        <ul class="lst2">
                            <li class="item1">
                                <h3 class="item_tit">챗봇 문의</h3>
                                <a href="" class="item_more">문의하기</a>
                            </li>
                            <li class="item2">
                                <h3 class="item_tit">고객의 소리</h3>
                                <a href="" class="item_more">상담하기</a>
                            </li>
                            <li class="item3">
                                <h3 class="item_tit">FAQ</h3>
                                <a href="" class="item_more">보러가기</a>
                            </li>
                        </ul>
                    </article>
                </div>
            </section>
        </div>
        <footer class="ft">
            <article class="row row1">
                <div class="ft_wrap">
                    <!-- (nav.fnb>ul.fnb_box>li*5>a{메뉴$})+(select.favorite>option{사이트$}*6) -->
                    <nav class="fnb left">
                        <ul class="fnb_box">
                            <li><a href="">개인정보처리방침</a></li>
                            <li><a href="">이용약관</a></li>
                            <li><a href="">법적고지</a></li>
                            <li><a href="">이메일 무단수집 거부</a></li>
                            <li><a href="">온라인 제보</a></li>
                        </ul>
                    </nav>
                    <select name="favo" id="favo" class="favo right" onchange="favo(this)">
                        <option value="">FAMILY SITE</option>
                        <option value="http://www.cj.net/">CJ주식회사</option>
                        <option value="http://www.cj.co.kr/">CJ제일제당</option>
                        <option value="https://www.cj.co.kr/kr/about/business/bio">CJ바이오</option>
                        <option value="https://www.cjlogistics.com/ko/main">CJ대한통운</option>
                        <option value="https://www.cjenm.com/ko/">CJ ENM</option>
                        <option value="http://corp.cgv.co.kr/">CJ CGV</option>
                    </select>
                    <script>
                    function favo(s){
                        var hs = s.value;
                        if(hs!=""){
                            window.open(hs, "팝업");
                        }
                    }    
                    </script>
                </div>
            </article>
            <article class="row row2">
                <div class="ft_wrap">
                    <div class="slogan left">
                        FOOD<br>
                        BUSINESS PARTNER<br>
                        CREATING<br>
                        THE SUCCESS WAY
                    </div>
                    <!-- nav.ft_col2>dl.ft_link.item$*5>dt{솔루션$}+(dd>a)*6 -->
                    <nav class="ft_link_fr right">
                        <dl class="ft_link item1">
                            <dt>솔루션</dt>
                            <dd><a href="">회사소개</a></dd>
                            <dd><a href="">사업영역</a></dd>
                            <dd><a href="">역량/인프라</a></dd>
                            <dd><a href="">브랜드</a></dd>
                        </dl>
                        <dl class="ft_link item2">
                            <dt>지속가능경영</dt>
                            <dd><a href="">OVERVIEW</a></dd>
                            <dd><a href="">전략</a></dd>
                            <dd><a href="">주요활동 및 성과</a></dd>
                            <dd><a href="">윤리경영</a></dd>
                            <dd><a href="">사회공헌</a></dd>
                            <dd><a href="">보고서 및 정책</a></dd>
                        </dl>
                        <dl class="ft_link item3">
                            <dt>뉴스룸</dt>
                            <dd><a href="">보도자료</a></dd>
                            <dd><a href="">미디어</a></dd>
                            <dd><a href="">홍보영상/브로슈어</a></dd>
                            <dd><a href="">공지사항</a></dd>
                        </dl>
                        <dl class="ft_link item4">
                            <dt>투자정보</dt>
                            <dd><a href="">경영정보</a></dd>
                            <dd><a href="">주가정보</a></dd>
                            <dd><a href="">재무정보</a></dd>
                            <dd><a href="">IR 자료실</a></dd>
                        </dl>
                        <dl class="ft_link item5">
                            <dt>채용</dt>
                            <dd><a href="">인사정보</a></dd>
                            <dd><a href="">CJ프레시웨이 人SIDE</a></dd>
                            <dd><a href="">채용정보</a></dd>
                            <dd><a href="">인재 POOL</a></dd>
                        </dl>
                    </nav>
                </div>
            </article>
            <article class="row row3">
                <div class="ft_wrap">
                    <div class="ft_logo left"></div>
                    <address class="copyright right">서울시 마포구 월드컵북로 54길 25 S-city   COPYRIGHT© CJ FRESHWAY. ALL RIGHTS RESERVED.</address>
                </div>
            </article>
        </footer>
    </div>
    <div class="fix_area">
        <a href="#page5" class="cir_box counsel">고객<br>상담센터</a>
        <a href="#" class="cir_box totop">↑<br>TOP</a>
    </div>
</body>
</html>
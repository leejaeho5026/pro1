<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>포트폴리오 - 스마일게이트</title>
    <!-- 문서 정보 등록 -->
    <!-- 검색엔진최적화(Search Engine Optimization) : SEO -->
    <meta name="subject" content="CJ프레시웨이 벤치마킹 사이트">
    <meta name="keywords" content="CJ프레시웨이, 식품, 식단, 주문제작">
    <meta name="description" content="CJ프레시웨이는 좋은 식자재를 유통하며, 건강하고 맛있는 식문화를 창출하는 대한민국 최고의 글로벌 식자재 유통 및 푸드서비스 전문 기업입니다.
    ">
    <meta name="author" content="mr. lee">

    <!-- 파비콘(favicon) 설정 -->
    <link rel="shortcut icon" href="<%=path %>/im/220921_press_000.jpg">

    <!-- https://okgunyang.github.io/web1 -->
    <!-- 오픈그래프 설정 -->
    <meta name="og:site_name" content="사이트이름">
    <meta name="og:title" content="포트폴리오 - 스마일게이트">
    <meta name="og:description" content="CJ프레시웨이는 좋은 식자재를 유통하며, 건강하고 맛있는 식문화를 창출하는 대한민국 최고의 글로벌 식자재 유통 및 푸드서비스 전문 기업입니다.">
    <mata name="og:url" content="https://okgunyang.github.io/web1">
    <mata name="og:image" content="<%=path %>/im/12345.jpg">  
          
    <!-- 기본 폰트 및 초기화 로딩 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <!-- 스타일 초기화 -->
    <!-- reset.css나 normalize.css를 CDN 또는 다운로드 받아 link로 연결 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">
    <style>
  
    </style>
</head>
<body>

        <div class="content">
    /*	<%@ include file="./header.jsp" %> */
            <figure class="vs">
                <div class="img_box">
                    <video src="<%=path %>/im/YUA.mp4" muted autoplay loop></video>
                </div>
            </figure>
            <section class="page" id="page1">
                <h2 class="page_title" style="display:none;">DISCOVER MEGA VALUE</h2>
                <div class="page_wrap">
                    <div class="tit_box">
                        <h3 class="sub_title">ABOUT</h3>
                        <h2 class="main_title">SMILEGATE NOW</h2>
                    </div>
                    <article class="pg1_btn_box">
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
                        <div class="ban_fr">
                            <ul class="ban_box">
                                <li class="item1">
                                    <img src="<%=path %>/im/banner-img-1.png" alt="스마일게이트" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">01</h2>
                                        <h2 class="ban_tit2">Smilegate</h2>
                                        <p class="ban_com">글로벌 엔터테인먼트 기업으로서
                                            더 나은 내일을<br> 만들기 위한 스마일게이트의 오늘을 소개합니다.
                                        </p>
                                    </div>
                                </li>
                                <li class="item2">
                                    <img src="<%=path %>/im/221115_press_000.jpg" alt="YNA" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">02</h2>
                                        <h2 class="ban_tit2">DISCOVER  MEGA VALUE</h2>
                                        <p class="ban_com">스마일게이트 인베스트먼트는 혁신 기업에 적극 투자하며 MEGA VALUE를 발굴하고, 
                                            스타트업이 유니콘으로 성장하도록 체계적인 지원을 하고 있습니다.
                                            </p>
                                    </div>
                                </li>
                                <li class="item3">
                                    <img src="<%=path %>/im/kv-bg4.jpg" alt="LET’S PLAY
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
                                    <img src="<%=path %>/im/44444.JPG" alt="IP BUSINESS&TECH" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">04</h2>
                                        <h2 class="ban_tit2">LET’S PLAY
                                            PLAYSHOP</h2>
                                        <p class="ban_com">스마일게이트는 2022년 임직원들에게 최대 250만 원의 여행 경비와 4일간의 유급휴가를 지원했습니다.</p>
                                    </div>
                                </li>
                                <li class="item5">
                                    <img src="<%=path %>/im/di01.png" alt="DELIGHT EVERYONE" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">05</h2>
                                        <h2 class="ban_tit2">DELIGHT EVERYONE</h2>
                                        <p class="ban_com">모두를 위한 즐거움</p>
                                    </div>
                                </li>
                                <li class="item6">
                                    <img src="<%=path %>/im/1223331111.PNG" alt="HISTORY" class="pic">
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
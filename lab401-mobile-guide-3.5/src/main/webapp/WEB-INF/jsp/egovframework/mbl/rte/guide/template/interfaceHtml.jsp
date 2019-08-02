<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : interfaceHtml.jsp
  Description :  지원 플랫폼
  Modification Information

      수정일         수정자           수정내용
    -------------    --------    ---------------------
     2011.07.20    구지연          최초 생성
 
    author   : 모바일 실행환경 개발팀 구지연
    since    : 2011.07.19
--%>
<!DOCTYPE html> 
<html lang="kr"> 
    <head> 
        <title>eGovFrame</title> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />    
        
        <!-- eGovFrame Common import -->        
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/cmm/jquery.mobile-1.4.5.css" />" />
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/cmm/EgovMobile-1.4.5.css" />" />
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/jquery-1.11.2.min.js"/>"></script>
		 
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/jquery.mobile-1.4.5.min.js" />"></script>
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/EgovMobile-1.4.5.js" />"></script>
        
        <!-- guide import -->
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/rte/guide/guide.css" />">
        <script type="text/javascript"  src="<c:url value="/js/egovframework/mbl/rte/guide/guide.js"/>"></script>
	</head>

    <body> 

        <!-- 모바일 페이지 start -->
		<div data-role="page" class="type-index">
		
            <!-- header start -->
            <div data-role="header" data-position="inline" data-theme="z"  class="egovBarHeader">
                <a href="<c:url value="/guide/guide.do"/>" data-icon="home" class="ui-btn-left" data-ajax="false">Home</a>
                <a href="<c:url value="/guide/guide.do"/>" data-icon="back" class="ui-btn-right" data-ajax="false">Back</a>
                <h1><img src="<c:url value="/images/egovframework/mbl/rte/guide/h1_logo.png"/>" alt="egovframework" /></h1>
            </div>  
            <!-- header end -->
			
			<!-- content start -->		
			<div data-role="content" data-theme="d">
			
                <!-- content-primary start -->
				<div class="content-primary">
					<div class="egov-tit">
						<h1>HTML5와 CSS3.0 기본활용</h1>
						<p>전자정부 모바일 표준프레임워크는 HTML5 구조와 문법, CSS3.0 기본 활용에 관한 디자인 가이드를 제공한다.</p>
					</div>
					
					<div class="egov-deth1">
						<h2>사용자 경험 (UX) 선언</h2>
						<p>전자정부 모바일은 HTML5 의 DOCTYPE 으로 선언하여야 한다.<br>
						문서에 사용된 문자 인코딩을 간소화된 구문을 통해 meta 태그를 사용할 수 있다.문서의 인코딩은 “UTF-8” 사용을 권장한다.</p>
						<div class="egov-deth2">
							<ul class="link">
								<li><strong>&lt;!DOCTYPE html&gt;</strong></li>
								<li>&lt;html&gt;</li>
								<li class="egov-txtIn1">&lt;head&gt;</li>
								<li class="egov-txtIn2">&lt;title&gt;eGovFrame&lt;/title&gt;</li>
								 <li class="egov-txtIn2"><strong>&lt;meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/&gt;</strong></li>
								<li class="egov-txtIn2"><strong>&lt;link rel="stylesheet" href="/css/egovframework/mbl/cmm/jquery.mobile-1.4.5.css"/&gt;</strong></li>
								<li class="egov-txtIn2"><strong>&lt;link rel="stylesheet" href="/css/egovframework/mbl/cmm/EgovMobile-1.4.5.css" /&gt;</strong></li>
								<li class="egov-txtIn2"><strong>&lt;script src="/js/egovframework/mbl/cmm/jquery-1.11.2.min.js"&gt;&lt;/script&gt;</strong></li>
								<li class="egov-txtIn2"><strong>&lt;script src="/js/egovframework/mbl/cmm/jquery.mobile-1.4.5.js"&gt;&lt;/script&gt;</strong></li>
								<li class="egov-txtIn2"><strong>&lt;script src="/js/egovframework/mbl/cmm/EgovMobile-1.4.5.js"&gt;&lt;/script&gt;</strong></li>
								<li class="egov-txtIn1">&lt;/head&gt;</li>
								<li class="egov-txtIn1">&lt;body&gt;</li>
								<li class="egov-txtIn2">...</li>
								<li class="egov-txtIn1">&lt;/body&gt;</li>
								<li>&lt;/html&gt;</li>
					 		</ul>
						</div>
					</div>
					
					<div class="egov-deth1">
						<h2>모바일 페이지 구조</h2>
						<p>모바일 의 Page 구조는 DIV 태그의 data-role=“page” 속성을 이용하여 표출 한다.<br>
						Page 내부의 구조는 마찬가지로 data-role 의 header, contents, footer 의 속성을 이용하여 표출 한다.</p>
						<div class="egov-deth2">
							<ul class="link">
								<li>&lt;body&gt;</li> 
								<li class="egov-txtIn1">&lt;!-- 모바일 페이지 start --&gt;</li>
								<li class="egov-txtIn1">&lt;div <strong>data-role="page"</strong>&gt;</li>
								<li><br></li>
								<li class="egov-txtIn2">&lt;!-- header start --&gt;</li>
								<li class="egov-txtIn2">&lt;div <strong>data-role="header"</strong>&gt;</li>
								<li class="egov-txtIn3">&lt;h1&gt;header Title&lt;/h1&gt;</li>
								<li class="egov-txtIn2">&lt;/div&gt;</li>
								<li class="egov-txtIn2">&lt;!-- header end --&gt;</li>
								<li><br></li>
								<li class="egov-txtIn2">&lt;!-- content start --&gt;</li>
								<li class="egov-txtIn2">&lt;div <strong>data-role="content"</strong>&gt;</li>	
								<li class="egov-txtIn3">&lt;p&gt;전자정부 모바일 표준프레임워크 default Page 화면 입니다.&lt;/p&gt;</li> 
								<li class="egov-txtIn2">&lt;/div&gt;</li>
								<li class="egov-txtIn2">&lt;!-- content end --&gt;</li>
								<li><br></li>
								<li class="egov-txtIn2">&lt;!-- footer start --&gt;</li>
								<li class="egov-txtIn2">&lt;div <strong>data-role="footer"</strong>&gt;</li>
								<li class="egov-txtIn3">&lt;h4&gt;footer title&lt;/h4&gt;</li>
								<li class="egov-txtIn2">&lt;/div&gt;</li>
								<li class="egov-txtIn2">&lt;!-- footer end --&gt;</li>
								<li><br></li>
								<li class="egov-txtIn1">&lt;/div&gt;</li>
								<li class="egov-txtIn1">&lt;!-- 모바일 페이지 end --&gt;</li>
								<li>&lt;/body&gt;</li>
					 		</ul>
						</div>
					</div>
					
					<div class="egov-deth1">
						<h2>CSS3.0 기본 활용</h2>
						<p>개별적으로 스타일을 지정하는 것보다는 클래스(class)와 외부 CSS 파일을 이용하는  
						 것이 문서 전체의 일관성은 물론 스타일 변경시에도 작업의 효율성을 높여줍니다.	</p>
						<dl class="egov-deth3">
							<dt>CSS 문법과 클래스(class) 와 아이디 (id)</dt>
							<dd>CSS 구문을 이해하기 위해서는 선택자(selector), 속성(property) 그리고 속성값(value) 이 3가지를 이해하여야 합니다.</dd>
							<dd>	
									<ul class="link">
										<li>선택자 { 속성: 값(단위); } //주석</li>
									</ul>
							</dd>	
							<dd>클래스를 독립적으로 지정하는 방법이 좋으며 여러 클래스를 사용가능하다.</dd>
							<dd>	
									<ul class="link">
										<li>&lt;h3 class="red"&gt;소제목에도 red 클래스를 지정합니다.&lt;/h3&gt;</li>
									</ul>
							</dd>	
							<dd>아이디는 고유성을 가지므로 한 문서에 한번만 사용할 수 있다.</dd>
							<dd>	
									<ul class="link">
										<li>&lt;p id="red"&gt;이 문단의 id 는 red 입니다.&lt;/p&gt;</li>
									</ul>
							</dd>	
						</dl>
						
						<dl class="egov-deth3">
							<dt>CSS3.0 기본 기능</dt>
							<dd class="egovBul">둥근 모서리</dd>
							<dd>이미지를 사용하지 않고, 둥근 모서리 또는 테두리와 버튼을 생성할 수 있다.<br>
							둥근 사각형 (Rounded Rectangle): border-radius 속성 값의 비율로 모서리에 곡선 적용</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_html3.gif" />" alt="html3" />
						</div>
						
						<dl class="egov-deth3">
							<dd class="egovBul">그라데이션(Gradients)</dd>
							<dd class="egovArr">배경색상을 변경할 때 사용할 수 있다.<br>linear (선형 gradient) 와 radial(원형 gradient) 두 가지로 나눌 수 있다.</dd>
							<dd class="egovArr">CSS 에서 Gradient 효과가 가능하도록 Webkit 에서 지원한다.</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_html4.gif" />" alt="html4" />
						</div>
						
						<dl class="egov-deth3">
							<dd class="egovBul">box-sizing을 내가 원하는 대로 표현할 수 있다.</dd>
							<dd>min/max-width/height와 함께 사용 할 수 없다.</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_html5.gif" />" alt="html5" />
						</div>
						
						<dl class="egov-deth3">
							<dd class="egovBul">다양한 투명도를 사용할 수 있다.</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_html6.gif" />" alt="html6" />
						</div>
						
						<dl class="egov-deth3">
							<dd class="egovBul">다운로드하여 웹 폰트를 가져올 수 있다.</dd>
							<dd>웹 폰트의 경로명을 통해 폰트를 쉽게 추가할 수 있다.</dd>
						</dl>
						<div class="egov-deth2">
							<ul class="link">
								<li>@font-face {font-family: "yunache"; src: url(http://..../yunache.ttf)   format("truetype");}</li>
								<li>h1 { font-family: "yunache", sans-serif; }</li>
							</ul>
						</div>
						
						<dl class="egov-deth3">
							<dd class="egovBul">CSS3에서 텍스트 그림자 속성은 텍스트에 그림자를 적용할 수 있다.</dd>
							<dd>수평 그림자, 수직 그림자, 흐림 효과와 그림자의 색상을 지정할 수 있다.</dd>
						</dl>
						<div class="egov-deth2">
							<ul class="egov-noBack">
								<li>사용법은 아래와 같다.</li>
								<li><img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_html7.gif" />" alt="html7" /></li>
							</ul>
						</div>
						
						<dl class="egov-deth3">
							<dd class="egovBul">상자에 그림자를 추가하여 사용할 수 있다.</dd>
							<dd class="egovArr">대부분의 요소의(element) 프레임에 그림자 효과를 적용한다.</dd>
							<dd class="egovArr">box-shadow: offsetX offsetY blurRadius color</dd>
						</dl>
						<div class="egov-deth2">
							<ul class="egov-noBack">
								<li>offsetX : X축으로 +/- 픽셀 위치 : 박스(텍스트) 왼쪽(-) 또는 오른쪽(+)</li>
								<li>offsetY : Y축으로+/- 픽셀 위치 : 박스(텍스트) 위쪽(-) 또는 아래쪽(+)</li>
								<li>blurRadius : 흐려짐 정도</li>
								<li>color : 색상</li>
								<li>사용법은 아래와 같다.</li>
								<li><img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_html8.gif" />" alt="html8" /></li>
							</ul>
						</div>
						
						<dl class="egov-deth3">
							<dd class="egovBul">Word-Wrap 속성을 이용하여 강제로 줄 바꾸기</dd>
							<dd>숫자나 영문에 뛰어쓰기 없이 쓰여진 문자는 요소의 너비를 무시하고 다음 공백이  나타날 때 까지 줄바꿈 되지 않을 때 사용할 수 있다.</dd>
						</dl>
						<div class="egov-deth2">
							<ul class="egov-noBack">
								<li><img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_html9.gif" />" alt="html9" /></li>
								<li>사용법은 아래와 같다.</li>
								<li>.break-word {word-wrap: break-word;}</li>
							</ul>
						</div>
						
						<dl class="egov-deth3">
							<dd class="egovBul">벤더(vendor) 별 확장 속성 및 브라우저 엔진</dd>
							<dd class="egovArr">대부분의 브라우저 벤더들은 자신들의 브라우저가 현재 지원하는 속성이 표준과  상이하거나 변경 될 수 있다라고 생각하고 벤더확장 속성을 만들었다. 
							실제로 속성을  지원하지만 100% 표준스펙이 나온 상태가 아니기 때문에 개선점이나 버그 발생시 피드백을 쉽게 하기 위해 만든 것이다.</dd>
							<dd class="egovArr">브라우저 /벤더확장 속성/브라우저 엔진<br>사용예는 아래와 같다.</dd>
						</dl>
						<div class="egov-deth2">
							<ul class="egov-noBack">
								<li>사파리 S5/ -webkit- / webkit</li>
								<li>크롬 C8/ -webkit- / webkit</li>
								<li>파이어폭스 F3.6/ -moz-/ Gecko</li>
								<li>오페라 O11 / -o- / presto	</li>
								<li>인터넷익스플러우 IE9 / -ms-, filter / Tasman</li>
							</ul>
						</div>
					</div>

				</div>
	              
	            <div class="content-secondary"> 
					<jsp:include page="../introMenu.jsp"></jsp:include>
				</div>
			</div>	             
            
			<!-- footer start -->
			<div data-role="footer" data-theme="z"  class="egovBar">
				<h4>Copyright(c)2012 Ministry of Government Administration and Home Affairs.</h4>
			</div>
			<!-- footer end --> 
      
        </div> 
        <!-- 모바일 페이지 end -->

    </body>
    
</html>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : grid.jsp
  Description :  UX grid view component
  Modification Information

      수정일         수정자           수정내용
    -------------    --------    ---------------------
     2011.07.14    황민희          최초 생성
 
    author   : 모바일 실행환경 개발팀 황민희
    since    : 2011.07.06
--%>
<!DOCTYPE html> 
<html lang="kr"> 
    <head>
        <title>UX Component - Grid View</title> 
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
    
        <!-- page start -->
		<div data-role="page" class="type-index">
		
            <!-- header start -->
            <div data-role="header" data-position="inline" data-theme="z" class="egovBarHeader">
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
						<h1>Grid View</h1>
						<p>Grid View는 UX Component를 같은 넓이, 같은 행으로 나타 낼 때 사용되며 Grid View  안에 컴포넌트를 
						넣어 나란하게 배열 할 수 있다.
						</p>
					</div>
					
					<div class="egov-deth1">
						<h2>기본코드</h2>
						<p>Grid 속성으로 칼럼(column) 수를 지정하고 Block 속성으로 내부의 셀을 지정한다. 
						class 속성 값을 ui-grid-[a~d] 갖도록 하여 격자 형태의 레이아웃을 구성하며 ui-grid-[a~d] 는 각각 [2~5]개의 칼럼을 
						제공한다. 기본적으로 각 칼럼의 너비는 동일하며 class 속성 값을 ui-block-[a~e] 으로 설정하여 내부 셀을 추가 한다.</p>
						<div class="egov-deth2">
							<div class="ui-grid-a">
							 <div class="ui-block-a"><strong>I'm Block A</strong>&nbsp;and text inside will wrap</div>
							 <div class="ui-block-b"><strong>I'm Block B</strong>&nbsp;and text inside will wrap</div>
					       </div>
					 		<ul class="link"><!-- css typ1~ typ7 까지 만들어 놓았습니다. 들여쓰기 순서대로 적용하시면 됩니다.-->
					 			<li>&lt;div class="ui-grid-a"&gt;</li>
								<li class="egov-txtIn1">&lt;div class="ui-block-a"&gt;&lt;strong&gt;I'm Block A&lt;/strong&gt; and text inside will wrap&lt;/div&gt;</li>
								<li class="egov-txtIn1">&lt;div class="ui-block-b"&gt;&lt;strong&gt;I'm Block B&lt;/strong&gt; and text inside will wrap&lt;/div&gt;</li>
								<li>&lt;/div&gt;</li>
					 		</ul>
						</div>

						<dl class="egov-deth3">
							<dt>한 줄 Grid(동일 넓이)</dt>
							<dd>기본 코드에  class="ui-grid-[a~d]"를 추가한다.<br>
								Grid Layout 에서 칼럼의 너비는 class 속성 값을 ui-grid-[a~d] 값에 따라 전체 Grid의 크기를 N등분한 길이이다.</dd>
							<dd class="egovBul">ui-grid-a : 2등분</dd>
						</dl>
						<div class="egov-deth2">
							<div class="ui-grid-a">
								<div class="ui-block-a"><div class="ui-body-e" style="text-align:center"><h3>ui-block-a</h3></div></div>
								<div class="ui-block-b"><div class="ui-body-e" style="text-align:center"><h3>ui-block-b</h3></div></div> 
						   </div>
							<ul class="link">
								<li>&lt;div class="ui-grid-a"&gt;</li>
								<li class="egov-txtIn1">&lt;div class="ui-block-a"&gt;&lt;div class="ui-body-e" style="text-align:center"&gt;&lt;h3&gt;ui-block-a&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
								<li class="egov-txtIn1">&lt;div class="ui-block-b"&gt;&lt;div class="ui-body-e" style="text-align:center"&gt;&lt;h3&gt;ui-block-b&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
								<li>&lt;/div&gt;</li>
							</ul>
						</div>

						<dl class="egov-deth3">
							<dd class="egovBul">ui-grid-b : 3등분</dd>
						</dl>
						<div class="egov-deth2">
							<div class="ui-grid-b">
								<div class="ui-block-a"><div class="ui-body-e" style="text-align:center"><h3>ui-block-a</h3></div></div>
								<div class="ui-block-b"><div class="ui-body-e" style="text-align:center"><h3>ui-block-b</h3></div></div>
								<div class="ui-block-c"><div class="ui-body-e" style="text-align:center"><h3>ui-block-c</h3></div></div> 
							</div>
							<ul class="link">
								<li>&lt;div class="ui-grid-b"&gt;</li>
								<li class="egov-txtIn1">&lt;div class="ui-block-a"&gt;&lt;div class="ui-body-e" style="text-align:center"&gt;&lt;h3&gt;ui-block-a&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
								<li class="egov-txtIn1">&lt;div class="ui-block-b"&gt;&lt;div class="ui-body-e" style="text-align:center"&gt;&lt;h3&gt;ui-block-b&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
								<li class="egov-txtIn1">&lt;div class="ui-block-c"&gt;&lt;div class="ui-body-e" style="text-align:center"&gt;&lt;h3&gt;ui-block-c&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
								<li>&lt;/div&gt;</li>
							</ul>
						</div>
						
						<dl class="egov-deth3">
							<dd class="egovBul">ui-grid-c : 4등분</dd>
						</dl>
						<div class="egov-deth2">
							<div class="ui-grid-c">
								<div class="ui-block-a"><div class="ui-body-e" style="text-align:center"><h3>ui-block-a</h3></div></div>
								<div class="ui-block-b"><div class="ui-body-e" style="text-align:center"><h3>ui-block-b</h3></div></div>
								<div class="ui-block-c"><div class="ui-body-e" style="text-align:center"><h3>ui-block-c</h3></div></div>
								<div class="ui-block-d"><div class="ui-body-e" style="text-align:center"><h3>ui-block-d</h3></div></div> 
							</div>
							<ul class="link">
								<li>&lt;div class="ui-grid-c"&gt;</li>
								<li class="egov-txtIn1">&lt;div class="ui-block-a"&gt;&lt;div class="ui-body-e" style="text-align:center"&gt;&lt;h3&gt;ui-block-a&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
								<li class="egov-txtIn1">&lt;div class="ui-block-b"&gt;&lt;div class="ui-body-e" style="text-align:center"&gt;&lt;h3&gt;ui-block-b&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
								<li class="egov-txtIn1">&lt;div class="ui-block-c"&gt;&lt;div class="ui-body-e" style="text-align:center"&gt;&lt;h3&gt;ui-block-c&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li> 
								<li class="egov-txtIn1">&lt;div class="ui-block-d"&gt;&lt;div class="ui-body-e" style="text-align:center"&gt;&lt;h3&gt;ui-block-d&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li> 
								<li>&lt;/div&gt;</li>
							</ul>
						</div>
						
						<dl class="egov-deth3">
							<dd class="egovBul">ui-grid-d : 5등분</dd>
						</dl>
						<div class="egov-deth2">
							<div class="ui-grid-d">
								<div class="ui-block-a"><div class="ui-body-e" style="text-align:center"><h3>ui-block-a</h3></div></div>
								<div class="ui-block-b"><div class="ui-body-e" style="text-align:center"><h3>ui-block-b</h3></div></div>
								<div class="ui-block-c"><div class="ui-body-e" style="text-align:center"><h3>ui-block-c</h3></div></div>
								<div class="ui-block-d"><div class="ui-body-e" style="text-align:center"><h3>ui-block-d</h3></div></div>
								<div class="ui-block-e"><div class="ui-body-e" style="text-align:center"><h3>ui-block-e</h3></div></div> 						 
							</div>
							<ul class="link">
								<li>&lt;div class="ui-grid-d"&gt;</li>
								<li class="egov-txtIn1">&lt;div class="ui-block-a"&gt;&lt;div class="ui-body-e" style="text-align:center"&gt;&lt;h3&gt;ui-block-a&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
								<li class="egov-txtIn1">&lt;div class="ui-block-b"&gt;&lt;div class="ui-body-e" style="text-align:center"&gt;&lt;h3&gt;ui-block-b&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
								<li class="egov-txtIn1">&lt;div class="ui-block-c"&gt;&lt;div class="ui-body-e" style="text-align:center"&gt;&lt;h3&gt;ui-block-c&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li> 
								<li class="egov-txtIn1">&lt;div class="ui-block-d"&gt;&lt;div class="ui-body-e" style="text-align:center"&gt;&lt;h3&gt;ui-block-d&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
								<li class="egov-txtIn1">&lt;div class="ui-block-e"&gt;&lt;div class="ui-body-e" style="text-align:center"&gt;&lt;h3&gt;ui-block-e&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
								<li>&lt;/div&gt;</li>
							</ul>
						</div>
						
						<dl class="egov-deth3">
							<dt>다중 행 Grid(동일넓이)</dt>
							<dd>&lt;div class="ui-grid-[a~d]"&gt; Tag 에 &lt;div class="ui-block-[a~d]"&gt; Tag를 반복적으로 추가하여 여러 개의 행을 생성할 수 있다.</dd>
						</dl>
						<div class="egov-deth2">
							<div class="ui-grid-b">
								<div class="ui-block-a"><div class="ui-body-e" style="text-align:center"><h3>ui-block-a</h3></div></div>
								<div class="ui-block-b"><div class="ui-body-e" style="text-align:center"><h3>ui-block-b</h3></div></div>
								<div class="ui-block-c"><div class="ui-body-e" style="text-align:center"><h3>ui-block-c</h3></div></div>
								<div class="ui-block-a"><div class="ui-body-e" style="text-align:center"><h3>ui-block-a</h3></div></div>
								<div class="ui-block-b"><div class="ui-body-e" style="text-align:center"><h3>ui-block-b</h3></div></div>
								<div class="ui-block-c"><div class="ui-body-e" style="text-align:center"><h3>ui-block-c</h3></div></div>
							</div>
							<ul class="link">
								<li>&lt;div class="ui-grid-b"&gt;</li>
								<li class="egov-txtIn1">&lt;div class="ui-block-a"&gt;&lt;div class="ui-body-e" style="text-align:center"&gt;&lt;h3&gt;ui-block-a&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
								<li class="egov-txtIn1">&lt;div class="ui-block-b"&gt;&lt;div class="ui-body-e" style="text-align:center"&gt;&lt;h3&gt;ui-block-b&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
								<li class="egov-txtIn1">&lt;div class="ui-block-c"&gt;&lt;div class="ui-body-e" style="text-align:center"&gt;&lt;h3&gt;ui-block-c&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
								<li class="egov-txtIn1">&lt;div class="ui-block-a"&gt;&lt;div class="ui-body-e" style="text-align:center"&gt;&lt;h3&gt;ui-block-a&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
								<li class="egov-txtIn1">&lt;div class="ui-block-b"&gt;&lt;div class="ui-body-e" style="text-align:center"&gt;&lt;h3&gt;ui-block-b&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
								<li class="egov-txtIn1">&lt;div class="ui-block-c"&gt;&lt;div class="ui-body-e" style="text-align:center"&gt;&lt;h3&gt;ui-block-c&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
								<li>&lt;/div&gt;</li>
							</ul>
						</div>
						
						<dl class="egov-deth3">
							<dt>한 줄 Grid(다른 넓이)</dt>
							<dd>&lt;div class="egov-grid"&gt;내
							class="egov-wid[1~11]"의 class 속성을 사용하여 총 가로 길이가 egov-wid12로 표현되며 각 grid의 크기를 다르게 줄 수 있다.<br>
							* 총 grid의 합이 12가 되어야 한다.</dd>
						</dl>
						<div class="egov-deth2">
							<div class="egov-grid">
								<div class="egov-wid3"><div class="ui-bar-c" style="text-align:center"><h3>wid3</h3></div></div>
								<div class="egov-wid9"><div class="ui-bar-c" style="text-align:center"><h3>wid9</h3></div></div>
							</div>
							<ul class="link">
								<li>&lt;div class="egov-grid"&gt;</li>
								<li class="egov-txtIn1">&lt;div class="egov-wid3"&gt;&lt;div class="ui-bar-c" style="text-align:center"&gt;&lt;h3&gt;wid3&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
								<li class="egov-txtIn1">&lt;div class="egov-wid9"&gt;&lt;div class="ui-bar-c" style="text-align:center"&gt;&lt;h3&gt;wid9&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
								<li>&lt;/div&gt;</li>
							</ul>
						</div>
						<div class="egov-deth2">
							<div class="egov-grid">
								<div class="egov-wid6"><div class="ui-bar-c" style="text-align:center"><h3>wid6</h3></div></div>
								<div class="egov-wid6"><div class="ui-bar-c" style="text-align:center"><h3>wid6</h3></div></div>
							</div>
							<ul class="link">
								 <li>&lt;div class="egov-grid"&gt;</li>
								 <li class="egov-txtIn1">&lt;div class="egov-wid6"&gt;&lt;div class="ui-bar-c" style="text-align:center"&gt;&lt;h3&gt;wid6&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
								 <li class="egov-txtIn1">&lt;div class="egov-wid6"&gt;&lt;div class="ui-bar-c" style="text-align:center"&gt;&lt;h3&gt;wid6&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
								 <li>&lt;/div&gt;</li>
							</ul>
						</div>
						
						<dl class="egov-deth3">
							<dt>다중 행 Grid(다른넓이)</dt>
							<dd>&lt;div class="egov-wid[1~11]"&gt; Tag에 &lt;div class="egov-wid[1~11]"&gt; Tag를  반복적으로 추가하여 여러 개의 Row 생성이 가능하다.</dd>
						</dl>
						<div class="egov-deth2">
							<div class="egov-grid">
								<div class="egov-wid2"><div class="ui-bar-c" style="text-align:center"><h3>wid2</h3></div></div>
								<div class="egov-wid10"><div class="ui-bar-c" style="text-align:center"><h3>wid10</h3></div></div>
								<div class="egov-wid3"><div class="ui-bar-c" style="text-align:center"><h3>wid3</h3></div></div>
								<div class="egov-wid9"><div class="ui-bar-c" style="text-align:center"><h3>wid9</h3></div></div>
								<div class="egov-wid10"><div class="ui-bar-c" style="text-align:center"><h3>wid10</h3></div></div>
								<div class="egov-wid2"><div class="ui-bar-c" style="text-align:center"><h3>wid2</h3></div></div>						
							</div>
							<ul class="link">
								<li>&lt;div class="egov-grid"&gt;</li>
									<li class="egov-txtIn1">&lt;div class="egov-wid2"&gt;&lt;div class="ui-bar-c" style="text-align:center"&gt;&lt;h3&gt;egov-wid2&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
									<li class="egov-txtIn1">&lt;div class="egov-wid10"&gt;&lt;div class="ui-bar-c" style="text-align:center"&gt;&lt;h3&gt;egov-wid10&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
									<li class="egov-txtIn1">&lt;div class="egov-wid3"&gt;&lt;div class="ui-bar-c" style="text-align:center"&gt;&lt;h3&gt;egov-wid3&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
									<li class="egov-txtIn1">&lt;div class="egov-wid9"&gt;&lt;div class="ui-bar-c" style="text-align:center"&gt;&lt;h3&gt;egov-wid9&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
									<li class="egov-txtIn1">&lt;div class="egov-wid10"&gt;&lt;div class="ui-bar-c" style="text-align:center"&gt;&lt;h3&gt;egov-wid10&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
									<li class="egov-txtIn1">&lt;div class="egov-wid2"&gt;&lt;div class="ui-bar-c" style="text-align:center"&gt;&lt;h3&gt;egov-wid2&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;</li>
								<li>&lt;/div&gt;</li>
							</ul>
						</div>
					</div>

					<div class="egov-deth1">
						<h2>응용</h2>
						<p>Grid 선언 클래스 내 컴포넌트 들을 넣으면  해당 컴포넌트가 그 크기에 맞게 나타난다.</p>
						<div class="egov-deth2">
							<div class="ui-grid-a">
								<div class="ui-block-a"><button type="submit" data-theme="c">block1</button></div>
								<div class="ui-block-b"><button type="submit" data-theme="b">block2</button></div>	
							</div>
					 		<ul class="link">
					 			<li>&lt;div class="ui-grid-a"&gt;</li>
								<li class="egov-txtIn1">&lt;div class="ui-block-a"&gt;&lt;button type="submit" data-theme="c"&gt;block1&lt;/button&gt;&lt;/div&gt;</li>
								<li class="egov-txtIn1">&lt;div class="ui-block-b"&gt;&lt;button type="submit" data-theme="b"&gt;block2&lt;/button&gt;&lt;/div&gt;</li>
								<li>&lt;/div&gt;</li>
					 		</ul>
						</div>
						<div class="egov-deth2">
							<div class="egov-grid">
								<div class="egov-wid5"><button type="submit" data-theme="a">wid5</button></div>
								<div class="egov-wid7"><button type="submit" data-theme="b">wid7</button></div>
							 </div>
					 		<ul class="link">
								<li>&lt;div class="egov-grid"&gt;</li>
								<li class="egov-txtIn1">&lt;div class="egov-wid7"&gt;&lt;button type="submit" data-theme="a"&gt;button1&lt;/button&gt;&lt;/div&gt;</li>
								<li class="egov-txtIn1">&lt;div class="egov-wid5"&gt;&lt;button type="submit" data-theme="b"&gt;button2&lt;/button&gt;&lt;/div&gt;</li>
								<li>&lt;/div&gt;</li>
					 		</ul>
						</div>
					</div>

	             </div> 
	            
	             <div class="content-secondary"> 
					<jsp:include page="../../componentMenu.jsp"></jsp:include>
				</div>
			</div>	             
            
			<!-- footer start -->
			<div data-role="footer" data-theme="z" class="egovBar">
				<h4>Copyright(c)2012 Ministry of Government Administration and Home Affairs.</h4>
			</div>
			<!-- footer end --> 
      
         </div> 
     </body>
 </html>
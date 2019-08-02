<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : interfaceDesign.jsp
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
						<h1>디자인 가이드 정의</h1>
						<p>전자정부 모바일 표준프레임워크는 기본원칙, 사용자 및 환경정의, 페이지 레이아웃 정의에 대한 디자인 가이드를 제공한다.</p>
					</div>
					
					<div class="egov-deth1">
						<h2>기본 원칙</h2>
						<dl class="egov-deth3">
							<dd class="egovArr">사용자 경험에 초점을 맞춘다.</dd>
							<dd class="egovArr">소수의 핵심 기능에 집중한다.</dd>
							<dd class="egovArr">디바이스 호환성, 확장성을 고려한다.</dd>
							<dd class="egovArr">정보 소외계층의 접근성을 고려한다.</dd>
							<dd class="egovArr">웹 표준을 준수하여 개발한다.</dd>
							<dd class="egovArr">일관성을 유지한다.</dd>
							<dd class="egovArr">이미지를 제한적으로 사용한다.</dd>
							<dd class="egovArr">모바일 환경의 유해 요소를 제거한다</dd>
							<dd class="egovArr">웹 네비게이션을 최적화한다.</dd>
						</dl>
					</div>
					
					<div class="egov-deth1">
						<h2>사용자 및 환경 정의</h2>
						<dl class="egov-deth3">
							<dt>사용자</dt>
							<dd class="egovArr">대상 사용자 군에 따라 공공 모바일 서비스는 크게 대국민 서비스와 행정 서비스, 두 가지로 분류될 수 있다.</dd>
							<dd class="egovArr">대국민 서비스는 모든 대한민국 국민을 대상으로 한다. 이는 다양한 연령, 성별 및 지적·사회적 수준까지 고려해야 함을 의미한다. 
							그러나 개별 서비스는 그 성격과 목적에 따라  국민 중 특별히 정의된 사용자 군을 대상으로 할 수 있다.</dd>
							<dd class="egovArr">행정 서비스는 해당 서비스에 관련된 공무원을 대상으로 한다.</dd>
							
							<dt>모바일 환경</dt>
							<dd class="egovArr">대국민 모바일 서비스는 사용자의 다양한 디바이스 환경에서 호환 가능해야 한다.</dd>
							<dd class="egovArr">모바일 웹은 HTML, CSS, Javascript를 사용하여 구현된다.</dd>
							<dd class="egovArr">디바이스는 풀터치로 사용하는 스마트폰과 태블릿 PC를 대상으로 하며, 피처폰은 고려하지 않는다. 
							디바이스는 최신 버전뿐만 아니라 하위버전의 기기도 고려한다.</dd>
							<dd class="egovArr">모바일 디바이스 브라우저의 기본 해상도는 320X480px 이며 고해상도 스마트폰의 지속적인 출시에 따라 확장성을 고려해야 한다. 
							또한 스마트폰의 PPI(Pixel Per Inch)는 LCD모니터의 PPI(72ppi)보다 높기 때문에 디자인 작업 시 PC환경 보다 실제 
							적용대상 디바이스에서 확인해야 한다.</dd>
							<dd class="egovArr">모바일 환경은 탭(tap) 이벤트를 통해 동작하기 때문에 PC 웹과의 차이점에 대한 충분한 이해를 기반으로 설계해야 한다. 
							예를 들어, 모바일 화면에서는 페이지 내에서의 스크롤바 사용이 불가능하기 때문에 웹에서 사용하는 프레임 형식을 사용할 수 없다. 
							또한 터치스크린 기반의 디바이스는 마우스 롤오버(mouse rollover) 같은 이벤트를 사용할 수 없다.</dd>
							<dd class="egovArr">스마트폰과 태블릿은 UI의 기본원칙은 동일하나 화면의 해상도 및 레이아웃에서는 차이를 보인다. 
							현재 태블릿 PC의 기준 해상도는 600*1024px, 768*1024px 이다.</dd>
							<dd class="egovArr">태블릿은 일반적으로 모바일 웹이 아닌 일반 웹사이트를 접속하여 브라우징 하는 경우가 대부분이나, 
							웹사이트에서 많이 사용되는 플래시, GIF 애니메이션, 동영상 등의 몇몇  기술은 특정 태블릿에서 동작하지 않는다. 
							따라서 모바일 웹 뿐만 아니라  태블릿 환경을 고려한 일반 웹사이트를 구축하기 위해서는 본 가이드에서 제시하는 기본 원칙을 준수하여 
							개발할 것을 권장한다.</dd>
						</dl>
					</div>
					
					<div class="egov-deth1">
						<h2>페이지 Layout 정의</h2>
						<dl class="egov-deth3">
							<dt>구성요소</dt>
							<dd>일반적으로 화면을 구성하는 요소들은 다음과 같으며, 이러한 요소들을 조합하여 다양한 화면을 구성할 수 있다.</dd>
							<dd class="egovArr">Indicator 영역 : 각종 서비스의 알림 및 수신, 네트워크, 배터리 상태 등을 아이콘화 하여 표시한다.</dd>
							<dd class="egovArr">Header 영역 : 기관의 로고 또는 사이트 명을 표시하여 사이트의 아이덴티티를 전달한다.</dd>
							<dd class="egovArr">Navigation 영역 : 주로 홈이나 이전 페이지 또는 최상위 메뉴와 같은 주요 링크만 제공하며 모바일웹의 경우 브라우저 내비게이션
							 버튼을 활용하므로 생략하는 경우도 있다.</dd>
							<dd class="egovArr">Content 영역 : 사용자에게 전달하고자 하는 주요 정보를 담는다.</dd>
							<dd class="egovArr">Button 영역 : 필요한 경우에만 사용하며, 버튼은 해당 콘텐츠 아래에 배치하는 것이 일반적이나 상단에 위치시키는 경우도 있다.</dd>
							<dd class="egovArr">Footer 영역 : 저작권, 연락처 PC 웹사이트로의 링크 등의 정보가 표시된다.</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_layout1.png" />" alt="layout1" />
						</div>
						<dl class="egov-deth3">	
							<dt>기본 원칙</dt>
							<dd class="egovArr">대국민 서비스의 Header 영역에는 공공 서비스로서의 Identity 를 드러낼 수 있는 사이트명, 로고, 혹은 소속 기관명이 노출되어야 한다.</dd>
							<dd class="egovArr">대국민 서비스의 Footer 영역에는 PC 버전의 웹 사이트가 있는 서비스의 경우 PC 버전으로의 링크를 제공하는 것이 좋다. (행정 서비스는 예외)</dd>
							<dd class="egovArr">모바일 서비스가 제공되는 웹 사이트의 경우에는 하단에 모바일 버전으로의 링크가 제공되도록 가이드 하는 것이 좋다.</dd>
							<dd class="egovArr">Footer 영역은 좁은 공간을 고려하여 PC 버전의 웹 사이트 보다는 간략화 된 내용을 담도록 한다.</dd>
							<dd class="egovArr">유형에 따라 레이아웃을 일관되게 적용하여 시각적인 안정감을 주는 것이 좋다.</dd>
							<dd class="egovArr">콘텐츠의 정렬이 적절히 이루어지도록 그리드 시스템을 사용하는 것이 좋다.</dd>
							<dd class="egovArr">공공 모바일 서비스에서 적합한 레이아웃은 콘텐츠를 읽기 쉽고 보기 좋게 효율적으로 배치하는 것이다. 사용자가 원하는 정보를 쉽게 얻을 수 있도록 
							사용 환경과 방문 목적을 충분히 고려하여 정보를 배치해야 한다.</dd>
							<dd class="egovArr">콘텐츠의 효과적인 전달을 위해 사용자가 반드시 읽어야 하는 주요 콘텐츠는 주목도가 높은 곳에 우선 배치하고 관심을 끌 수 있는 스타일을 적용하는 것을 권장한다.</dd>
							<dd class="egovArr">여백을 적절히 사용하여 시선의 흐름을 유도하는 것이 좋다.	</dd>
						</dl>
						<dl class="egov-deth3">	
							<dt>모바일 레이아웃</dt>
							<dd class="egovBul">작은 스크린에 적합한 콘텐츠</dd>
							<dd class="egovArr">대국민 서비스를 모바일 버전으로 전환할 때 PC 버전의 웹 사이트에 있는 모든 정보를 모바일 버전으로 전환하는 것은 디바이스 화면 크기의 물리적 제약으로 인해 
							무척 어렵기 때문에 주요 콘텐츠에 대한 선택적으로 적용해야 한다.</dd>
							<dd class="egovArr">동일한 콘텐츠를 PC 화면과 모바일 화면에 담았을 때, 모바일의 경우에는 PC 에 비해 사용자의 이해도가 현저하게 떨어진다는 점을 고려하여 
							상대적으로 큰 글씨와 간결한 내용을 담도록 한다.</dd>
							<dd class="egovArr">작은 화면에 너무 많은 콘텐츠를 배치하면 사용자가 원하는 콘텐츠에 빠르게 접근하기 어렵다. 긴 내용은 여러 페이지로 적절하게 
							나누어 배치하는 것이 좋다.</dd>
							<dd class="egovBul">세로형 배치</dd>
							<dd>모바일 화면은 가로 스크롤보다는 세로 스크롤이 편리하게 사용되므로  공공서비스의  콘텐츠 레이아웃은 단일 칼럼의 세로 레이아웃을 기본형으로 적용한다. 
							그러나 서비스의 성격에 따라 가로 레이아웃을 기본형으로 적용하는 것이 가능하다.</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_layout2.png" />" alt="layout2" />
						</div>
						<dl class="egov-deth3">	
							<dt>Lists</dt>
							<dd class="egovBul">기본형태</dd>
							<dd class="egovArr">리스트형 레이아웃은 정보성 데이터가 많은 대국민/행정 서비스에서 적합한 레이아웃이다.</dd>
							<dd class="egovArr">썸네일 뷰보다는 긴 텍스트 타이틀을 보여줄 수 있는 장점이 있으며 비교적 얕은 계층구조의 표현이 가능하다.	</dd>
							<dd class="egovArr">동일 레벨의 내용을 일정한 기준에 따라 순차적으로 정렬한다.</dd>
							<dd class="egovArr">한 화면에 목록을 다 보여줄 수 없는 경우, 하단에 마지막 목록의 일부분만 나타내어 목록이 계속 있다는 시각적인 단서를 제공한다. ①</dd>
							<dd class="egovArr">목록의 상하 구조를 표현하는 경우 시각적인 구분을 위하여 아이콘이나 블릿을 사용하기도 한다. ②</dd>
							<dd class="egovArr">모든 목록을 한꺼번에 가져오기 어려운 경우, 우선 일부 목록만 제공하고 사용자가 필요한 경우 추가 목록을 불러올 수 있도록 한다. ③</dd>
							<dd class="egovArr">편집모드 에서는 목록 앞에 체크 박스를 두거나 목록 뒤에 삭제 버튼 등을 두어 기본 목록 화면과는 명확하게 구분되도록 한다.④</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_layout3.png" />" alt="layout3" />
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_layout4.png" />" alt="layout4" />
						</div>
						<dl class="egov-deth3">
							<dd class="egovBul">이미지형 List (Gallery)</dd>
							<dd class="egovArr">리스트를 이미지형식으로 표현하는 레이아웃 스타일이다.</dd>
							<dd class="egovArr">사진 리스트와 같은 이미지 데이터를 보여주거나 메인 화면의 메뉴선택과 같은 경우 적용 가능한 유형이다.</dd>
							<dd class="egovArr">이미지 개수가 많아지는 경우 하단스크롤 혹은 페이지 내비게이션이 제공된다.</dd>
							<dd class="egovArr">메뉴를 표현하기 위한 형태로 사용되는 경우 메뉴의 개수가 지나치게 많아져서 하단으로 길게 스크롤 되는 것은 바람직하지 않다.</dd>
							<dd class="egovArr">이미지 형식의 메뉴이므로 메뉴 별로 개별적인 디자인 작업이 필요하다.</dd>
							<dd class="egovArr">이미지크기에 따라 배치되는 이미지의 개수가 달라질 수 있으며  중앙정렬의 등간격 배치가 되도록 한다.	</dd>
							<dd class="egovArr">상세화면에서는 이미지를 확대/축소하는 기능이 지원된다. </dd>
							<dd class="egovArr">가로모드로 전환할 때는 우측 빈 공간이 생기지 않도록 가로 폭에 보여지는 메뉴 개수를 더 늘려서 배치하는 것이 좋다.</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_layout5.png" />" alt="layout5" />
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_layout6.png" />" alt="layout6" />
						</div>
						<dl class="egov-deth3">
							<dd class="egovBul">Indexed List</dd>
							<dd class="egovArr">리스트 형태의 레이아웃에 인덱스(Index)가 제공되는 형태이다.</dd>
							<dd class="egovArr">주소록처럼 한 화면에 제공되는 목록이 많아서 시각적으로 그룹핑이 필요할 경우 사용되며, 일반 리스트형태에 비해 시각적으로 원하는 
							정보로의 검색이 용이한 장점이 있다.	</dd>
							<dd class="egovArr">정보량이 많은 행정 서비스 등에서 적용 가능한 유형의 레이아웃이다.</dd>
							<dd class="egovArr">인덱스 그룹은 서로 중복되거나 종속되지 않고 명확하게 구분할 수 있어야 한다.</dd>
							<dd class="egovArr">깊은 계층구조의 메뉴를 보여주는 유형에는 적합하지 않다.</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_layout7.png" />" alt="layout7" />
						</div>
						<dl class="egov-deth3">
							<dd class="egovBul">Tabbed List</dd>
							<dd class="egovArr">탭 버튼 아래 목록이 같이 제공되는 화면으로 하나의 화면에서 여러 개의 목록을 한번에 보여줄 수 있다.</dd>
							<dd class="egovArr">세부 카테고리가 나뉘어있는 목록 콘텐츠에 적합하며, 탭 명은 목록에 대한 타이틀 역할을 한다.</dd>
							<dd class="egovArr">탭 버튼을 선택하면 하단에 해당 목록의 데이터가 나오며, 일반적으로 첫 번째 탭의 목록이 열려있는 상태이다.</dd>
							<dd class="egovArr">비교적 많은 양의 정보를 한 화면에서 내비게이션할 수 있기 때문에 정보전달성 서비스에서 가장 많이 사용되는 유형이다.</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_layout8.png" />" alt="layout8" />
						</div>
						
						<dl class="egov-deth3">
							<dt>Search</dt>
							<dd class="egovBul">기본 원칙</dd>
							<dd class="egovArr">검색은 많은 정보를 담고 있는 대국민/행정 서비스에서 사용자가 빠르게 원하는 서비스에 접근할 수 있도록 해주기 위해 제공하는 기능이다.</dd>
							<dd class="egovArr">검색창의 위치는 화면 상단에 위치하는 경우가 많으며, 경우에 따라 화면의 상 하단에 중복 노출시키는 경우도 있다.</dd>
							<dd class="egovArr">검색어를 입력하고 버튼을 누르면 그에 대한 결과 값을 보여준다.	</dd>
							<dd class="egovArr">검색에 대한 결과 건수가 1건 일 경우 해당 결과에 대한 상세 화면이 제공되고, 검색에 대한 결과 건수가 2건 이상 일 경우 목록화면 
							그리고 상세화면의 순으로 제공된다.</dd>
							<dd class="egovArr">포탈 성격의 대국민 서비스의 경우 상단에 검색기능을 제공해 주는 것이 권장된다.	</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_layout9.png" />" alt="layout9" />
						</div>
						
						<dl class="egov-deth3">	
							<dd class="egovBul">검색 제공 방식</dd>
							<dd class="egovArr">검색 활용 빈도가 높은 경우 주요 화면 내에 검색창을 제공한다. ①</dd>
							<dd class="egovArr">검색 옵션이 다양하여 사용자 설정이 많은 경우 검색 화면을 별도로 제공한다. ②</dd>
							<dd class="egovArr">다른 콘텐츠의 공간 확보를 위하여, 검색이 필요한 경우에만 사용자가 별도로 검색창을 꺼내서 사용할 수 있도록 한다. ③ </dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_layout10.png" />" alt="layout10" />
						</div>
						<dl class="egov-deth3">	
							<dd class="egovBul">텍스트 검색</dd>
							<dd class="egovArr">검색어를 텍스트로 입력할 수 있는 입력 필드와 검색버튼이 제공된다.</dd>
							<dd class="egovArr">검색창은 주로 상단에 제공되거나 텍스트를 입력하기 위한 키패드가 생성되면 자동적으로 상단으로 올라간다.	</dd>
							<dd class="egovArr">사용자의 편의를 고려하여 초성검색이나 자동완성기능과 같은 검색어를 제안하는 방식이 적용되기도 한다.</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_layout11.png" />" alt="layout11" />
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
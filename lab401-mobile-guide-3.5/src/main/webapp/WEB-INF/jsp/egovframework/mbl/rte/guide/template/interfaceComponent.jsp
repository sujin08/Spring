<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : interfaceComponent.jsp
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
						<h1>디자인 구성요소</h1>
						<p>전자정부 모바일 표준프레임워크는 화면 내비게이션, 화면 구성요소 정의, 해상도의 정의에 대한 디자인 가이드를 제공한다.</p>
					</div>

					<div class="egov-deth1">
						<h2>화면 Navigation</h2>
						<dl class="egov-deth3">
							<dt>기본 원칙</dt>
							<dd class="egovArr">정보 구조의 단순화</dd>
							<dd>정보 계층의 폭(width)은 계층의 최상위 단계에서 제공하는 옵션들의 수를 의미하며, 깊이(depth)는 계층의 단계 수이다. 
							정보의 계층이 너무 깊으면 다른 정보를 찾기 위한 이동방법이 복잡해지기 쉽다. 따라서 모바일 환경에서는 3 depth 이상 깊이는 지양하고 화면 연결
							설계 시 정보 계층의 폭과 깊이를 고려하여 콘텐츠에 빠르게 접근할 수 있고 콘텐츠 추가도 용이하도록 구성해야 한다.</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_component1.gif" />" alt="structure" />
						</div>
						
						<dl class="egov-deth3">	
							<dt>메뉴</dt>
							<dd class="egovBul">Grid 형식 메뉴</dd>
							<dd class="egovArr">비슷한 레벨의 콘텐츠 여러 개를 아이콘화하여  배치할 경우 사용된다.</dd>
							<dd class="egovArr">메뉴 정렬 순서는 좌측에서 우측, 위에서 아래 방향으로 배치한다. ①	</dd>
							<dd class="egovArr">2개 이상의 메뉴 페이지가 존재하는 경우 현재 메뉴 페이지의 위치와 전체 메뉴 페이지 개수에 대한 시각적인 단서를 제공한다. ②</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_component2.gif" />" alt="gridstyle" />
						</div>
						
						<dl class="egov-deth3">
							<dd class="egovBul">List 형식 메뉴</dd>
							<dd class="egovArr">각 메뉴마다 하위 콘텐츠를 대표하는 성격의 레이블이나 아이콘을 제공한다.	추가 메뉴에 대한 공간 제약이 덜하므로 확장성이 좋다.</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_component3.gif" />" alt="liststyle" />
						</div>
						
						<dl class="egov-deth3">
							<dd class="egovBul">Bar 형식 메뉴</dd>
							<dd class="egovArr">텍스트 형식의 메뉴표현으로 웹화면에서의 Global Navigation Bar와 유사한 형태의 내비게이션 바이다.</dd>
							<dd class="egovArr">메뉴명을 가로로 배치한다.</dd>
							<dd class="egovArr">모든 화면마다 고정된 메뉴영역을 제공해야 할 때 사용된다.</dd>
							<dd class="egovArr">한 화면에서 레벨이 다른 메뉴간 이동이 가능하다.	</dd>
							<dd class="egovArr">콘텐츠 영역 확보를 위한 공간의 제약 때문에 2 depth 이하의 정보 구조를 적용하는 것이 적합하다.	</dd>
							<dd class="egovArr">화면에 모든 메뉴명이 표현되지 못하였을 경우 숨겨져 있는 메뉴를  볼 수 있는 시각적인 단서를 제공한다.</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_component4.gif" />" alt="barstyle" />
						</div>
						
						<dl class="egov-deth3">
							<dd class="egovBul">Accordion 형식 메뉴</dd>
							<dd class="egovArr">텍스트 형식의 메뉴표현으로 메뉴 목록을 접고 펼치는 방식을 적용한다.</dd>
							<dd class="egovArr">화면에서 메뉴가 차지하는 영역이 크므로 보통 첫 화면에만 제공되는 편이다.	</dd>
							<dd class="egovArr">하나의 화면에서 레벨이 다른 메뉴간 바로 이동이 가능하다.</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_component5.gif" />" alt="accordionstyle" />
						</div>
						
						<dl class="egov-deth3">	
							<dt>Location history</dt>
							<dd class="egovArr">Location History 는 사용자의 현재 위치와 이전 경로를 함께 보여준다.</dd>
							<dd class="egovArr">현재 위치를 기준으로 상위 메뉴까지 각각의 화면으로 바로 이동할 수 있는 링크 기능을 함께 제공하는 편이다.</dd>
							<dd class="egovArr">화면 내에 고정적인 내비게이션 영역이 없거나 depth 가 깊은 메뉴 구조를 갖고 있을 때 적용된다.</dd>
							<dd class="egovArr">주로 타이틀 영역 아래, 화면의 상단영역에 위치한다.	</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_component6.gif" />" alt="history" />
						</div>
						
						<dl class="egov-deth3">	
							<dt>기타 화면 이동</dt>
							<dd class="egovBul">홈</dd>
							<dd class="egovArr">어느 화면이라도 홈 화면으로 이동할 수 있어야 한다.</dd>
							<dd class="egovArr">홈 버튼 또는 로고영역 등 다양한 표현이 가능하다.</dd>
							<dd class="egovBul">페이지 내비게이션</dd>
							<dd class="egovArr">페이지 단위 별로 이동할 경우 사용된다. 일반적으로 콘텐츠 영역 하단에 제공한다.</dd>
							<dd class="egovBul">이전(뒤로가기)/상위</dd>
							<dd class="egovArr">이전화면으로의 이동은 브라우저나 디바이스에 기본적으로 제공할 수 있으나 상황에 따라 화면 내에 버튼형식으로  제공한다.</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_component7.gif" />" alt="home" />
						</div>
						
						<dl class="egov-deth3">
							<dd class="egovBul">전체 메뉴/서비스</dd>
							<dd class="egovArr">최상위 단계의 메뉴로 바로 이동할 수 있는 기능을 버튼형식으로 제공하며 주로 상단에 배치한다.</dd>
							<dd class="egovArr">홈 화면이 별도로 존재하지 않는 경우에 필수적으로 사용되어야 한다.</dd>
							<dd class="egovBul">맨 위 (TOP)</dd>
							<dd class="egovArr">현재 화면 내에서 상위로 올라갈 때 쓰이며 주로 하단에 배치한다.</dd>
							<dd class="egovArr">전체 화면을 한눈에 보기 어려울 정도로 콘텐츠가 많은 화면에 주로 사용된다.</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_component8.gif" />" alt="menutype" />
						</div>
					</div>
					
					<div class="egov-deth1">
						<h2>화면 구성요소 정의</h2>
						<dl class="egov-deth3">
							<dt>타이틀</dt>
							<dd class="egovBul">정의</dd>
							<dd>현재 화면에 대한 제목 영역이다.</dd>
							
							<dd class="egovBul">적용가이드</dd>
							<dd class="egovArr">항상 화면 상단에 나타나며 중앙정렬 혹은 경우에 따라 왼쪽 정렬이 가능하다.</dd>
							<dd class="egovArr">화면 타이틀 영역은 비교적 좁은 영역에 표현되므로 글자 수의 제한이 필요하다.</dd>
							<dd class="egovArr">탭 형식으로 표현된 메뉴의 경우 선택된 메뉴표현으로 타이틀을 대신할 수도 있다.	</dd>
							<dd class="egovArr">화면 타이틀 영역만을 위해 1줄을 할애하는 것은 권장하지 않는다.</dd>
							<dd class="egovArr">가독성에 주의하여 표현한다. 장식적인 폰트나 현란한 색상을 사용하여 명확성을 해치지 않도록 한다.</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_component9.gif" />" alt="title" />
						</div>
						
						<dl class="egov-deth3">
							<dt>메뉴</dt>
							<dd class="egovBul">정의</dd>
							<dd>메뉴는 사용자가 어느 화면에 있더라도 원하는 화면으로 쉽게 이동할 수 있도록 제공하는 콘텐츠 그룹이다.</dd>
							
							<dd class="egovBul">적용가이드</dd>
							<dd class="egovArr">각 메뉴 항목들은 하위항목이 서로 중복되지 않으며 명확하게 구분가능 해야 한다.</dd>
							<dd class="egovArr">효율적이고 일관된 흐름을 위하여 메뉴 구조는 상하구조를 계층적으로 조직화한다.</dd>
							<dd class="egovArr">메뉴는 고정된 위치에 일관성 있게 배치하며 한눈에 파악할 수 있도록 간단명료하게 제공한다.</dd>
							<dd class="egovArr">메뉴는 본문 내용과 구분되어 터치 가능한 요소임을 시각적으로 구분할 수 있도록 스타일을 명확하게 정의한다.</dd>
							<dd class="egovArr">메뉴를 조작할 때 메뉴의 선택한 상태나 이동 후 결과화면의 변화가 확실하게 반영되어야 한다.</dd>
							<dd class="egovArr">화면에서 메뉴영역이 본문 영역보다 큰 비중을 차지하는 것은 권장하지 않는다. (메뉴의 레이아웃은 UI 패턴별가이드 참조)</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_component10.gif" />" alt="menu" />
						</div>
						
						<dl class="egov-deth3">
							<dt>탭바</dt>
							<dd class="egovBul">정의</dd>
							<dd>탭바는 복수개의 메뉴를 선택할 때 사용하는 컴포넌트이다.</dd>
							
							<dd class="egovBul">적용가이드</dd>
							<dd class="egovArr">1개의 메뉴로 이루어진 탭을 타이틀표현으로 사용하는 것은 바람직하지 않다.</dd>
							<dd class="egovArr">탭은 최대 4개를 넘지 않는 것이 좋으며 5개 이상으로 표현할 때는 5번째 버튼에 more 버튼을 사용하여 접혀진 메뉴로 제공하거나, 리스트 메뉴의 형태로 표현하는 것이 좋다.</dd>
							<dd class="egovArr">탭은 선택된 탭의 시각적 형태를 달리하여 선택된 탭을 확연히 구분할 수 있도록 해 주어야 한다.</dd>
							<dd class="egovArr">태블릿의 경우 4개 이상의 표현이 가능하나 너무 많은 탭을 넣는 경우 복잡성을 증가시키므로 7개 이하를 권장한다.</dd>
							<dd class="egovArr">탭바는 디바이스의 방향을 바꾸어도 개수나 스타일 표현이 달라지지 않아야 한다.</dd>
							<dd class="egovArr">탭바의 타이틀에 아이콘을 사용하는 경우 아이콘과 텍스트를 함께 제공해 주어야 한다.</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_component11.gif" />" alt="tabbar" />
						</div>
						
						<dl class="egov-deth3">
							<dt>버튼</dt>
							<dd class="egovBul">정의</dd>
							<dd>버튼은 액션이나 내비게이션을 위해 사용하는 컴포넌트이다.</dd>
							
							<dd class="egovBul">적용가이드</dd>
							<dd class="egovArr">버튼은 터치 가능한 최소영역 40*40 Pixel 이상의 크기로 제작되어야 한다.</dd>
							<dd class="egovArr">버튼을 탭 했을 때는 시각적으로 적절한 피드백을 제공해 주어야 한다.</dd>
							<dd class="egovArr">중요한 버튼의 경우 크고 잘 보이는 위치에 표현한다.</dd>
							<dd class="egovArr">버튼 명은 가능한 짧고, 직관적으로 의미전달이 가능해야 한다. </dd>
							<dd class="egovArr">버튼 명은 한글을 기본으로 한다.</dd>
							<dd class="egovArr">버튼의 레이블은 영문명을 제외하고는 붙여쓰기 하는 것이 좋다.(예: 신청서 작성→신청서작성)</dd>
							<dd class="egovArr">버튼의 텍스트는 충분한 가독성을 확보할 수 있는 크기로 제공되어야 한다.</dd>
							<dd class="egovArr">버튼의 형태는 클릭 가능한 상태로 보여야 한다.</dd>
							<dd class="egovArr">버튼은 Default, Disabled, Focused, Pressed 의 4가지 상태를 가진다. (터치스크린 화면에서는 Focused 상태의 동작이 안 됨)</dd>
							<dd class="egovArr">버튼의 정렬은 화면의 중앙이나 우측정렬이 가능하며 전체사이트에 페이지 별로 일관된 규칙성을 가지는 것이 좋다.	</dd>
							<dd class="egovArr">버튼의 배치는 중요한 순으로 좌측에서 우측으로 배치하는 것이 좋다.</dd>
							<dd class="egovArr">CSS3에서 추가된 항목 중 이전에는 이미지를 이용해야만 가능했던 Gradient, DropShadow, Round Corner 같은 효과들을 태그를 이용하여 만들 수 있으며 이 기능들을 이용하면 불필요한 이미지 사용을 줄일 수 있다.</dd>
							<dd class="egovArr">액션의 결과가 부정적 영향을 미칠 수 있는 버튼은 색상을 달리하여 표현하고 추가로 확인하는 절차를 두는 것이 좋다. (예: 전체삭제 버튼 등)</dd>
							<dd class="egovArr">현재 화면에서 선택이 가능한 버튼과 불가능한 버튼은 명확히 구분되도록 한다.</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_component12.gif" />"  alt="button" />
						</div>
						
						<dl class="egov-deth3">
							<dt>폰트 &amp; 레이블링</dt>
							<dd class="egovBul">적용가이드</dd>
							<dd class="egovArr">제조사 디바이스별 기본적으로 제공되는 폰트가 다르기 때문에 가능하면 디바이스 별 기본 폰트를 사용하는 것을 권장한다.</dd>
							<dd class="egovArr">같은 플랫폼에서 제공하는 폰트라도 버전에 따라 기본 자간과 볼드처리가능여부 등의 차이가 있으므로 가능하면 다양한 디바이스환경에서 테스트 하는 것이 바람직하다.</dd>
							<dd class="egovArr">모바일 기기의 특성상 사용자가 임의로 폰트의 크기나 서체를 바꿀 수 있다는 점을 감안하여야 한다. (iPhone은 설정 불가)</dd>
							<dd class="egovArr">모바일 디바이스의 PPI는 PC모니터의 PPI보다 높기 때문에 같은 크기의 폰트를 적용하면 모바일에서는 더 작게 보인다는 점을 고려해야 한다. 따라서 최소 14px 이하의 폰트 사이즈는 지정하지 않을 것을 권장한다.</dd>
							<dd class="egovArr">사용자가 반드시 읽어야 하는 내용의 콘텐츠는 본문텍스트 폰트확대 기능을 추가적으로 제공해 주는 것이 좋다.</dd>
							<dd class="egovArr">폰트의 색상은 바탕색과 명도대비를 크게 하여 명확히 구분될 수 있도록 한다.</dd>
							<dd class="egovArr">여러 줄의 콘텐츠는 충분한 줄 간격을 확보하여야 가독성을 해치지 않는다.</dd>
							<dd class="egovArr">레이블링은 제한된 공간 안에 제공해야 하므로 최대한 간략하게 표현해야 한다.</dd>
							<dd class="egovArr">레이블링은 한글표기를 기본으로 하며 고유명사의 경우 영문 그대로 표기한다. (News(x) 뉴스(o))	</dd>
							<dd class="egovArr">레이블링은 명사형이나 동사의 명사형, 수식어와 명사형으로 한다. 서술적인 표현이나  형용사는 레이블링으로 적합하지 않다.</dd>
						</dl>
						
						<dl class="egov-deth3">
							<dt>스크롤</dt>
							<dd class="egovBul">정의</dd>
							<dd>스크롤은 콘텐츠의 내용이 현재 화면보다 더 길거나 넓은 경우 현재위치를 표시하기 위한 컨트롤이다.</dd>
							
							<dd class="egovBul">적용가이드</dd>
							<dd class="egovArr">화면의 우측이나 하단에 바 형태로 나타난다.</dd>
							<dd class="egovArr">기본스크롤이 나타나게 하는 것을 기본으로 한다.</dd>
							<dd class="egovArr">스크롤은 세로스크롤이나 가로스크롤 중 한쪽 방향만 나타나게 하는 것이 바람직하다.</dd>
							<dd class="egovArr">화면에 부분적으로 스크롤이 나타나게 하는 경우 전체 스크롤과 중복되어 나타나게 되면 동작이 어려우므로 권장하지 않는다.</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_component13.gif" />" alt="scroll" />
						</div>
						
						<dl class="egov-deth3">
							<dt>컬러</dt>
							<dd class="egovBul">적용가이드</dd>
							<dd class="egovArr">일반적으로 컬러는 아이덴티티의 중요한 역할을 수행하게 된다.</dd>
							<dd class="egovArr">아이덴티티의 일관성 유지를 위하여 모든 페이지에 발생하는 이미지 요소는 컬러의 구성 및 적용범위를 규정하여 적용하거나 응용하여 사용하도록 한다.</dd>
							<dd class="egovArr">컬러시스템 적용이 어려운 사진 이미지는 컬러 시스템의 적용 범위에서 제외하도록 한다.</dd>
							<dd class="egovArr">필요 시 특별한 주제의 강조나 특별한 콘텐츠 내용의 표현을 위하여 특수한 컬러를 도입하여 사용할 수 있도록 한다.</dd>
							<dd class="egovArr">시각적인 피로도가 높은 컬러의 사용은 자제하도록 한다.</dd>
							<dd class="egovArr">텍스트 색상은 배경색과 충분한 대비를 두어 글자가 눈에 잘 들어오도록 한다.</dd>
							<dd class="egovArr">본문 내용이 들어가는 영역의 배경에는 패턴이나 텍스쳐 적용을 자제한다.</dd>
							<dd class="egovArr">지나치게 다양한 색상을 적용하면 시선이 분산되어 혼란스러우므로 색상 가지 수를 제한한다.</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_component14.gif" />" alt="color" />
						</div>
						
						<dl class="egov-deth3">
							<dt>페이지 표현</dt>
							<dd class="egovBul">정의</dd>
							<dd>페이지 Indicator는 얼마나 많은 화면이 있고 현재 보여지는 것은 어떤 페이지인지 보여준다.</dd>
							
							<dd class="egovBul">적용가이드</dd>
							<dd class="egovArr">페이지순서는 왼쪽에서 오른쪽 순으로 표현된다.</dd>
							<dd class="egovArr">현재 선택된 페이지에 대해서는 시각적인 차별화를 통해 명확히 구분되도록 해야 한다.</dd>
							<dd class="egovArr">사용자는 좌우 버튼이나 페이지를 직접 탭하여 내비게이션 할 수 있다.</dd>
							<dd class="egovArr">화면이 동등한 레벨일 때 표현할 수 있는 방법이며, 계층구조를 보여주기에는 적합하지 않다.</dd>
							<dd class="egovArr">Dot 으로 표현된 페이지 Indicator 는 제한된 수의 페이지만을 표현할 수 있다.</dd>
							<dd class="egovArr">더 많은 페이지를 표현해야 하는 경우는 숫자로 표현된 페이지 내비게이션을 활용하는 것을 권장한다.</dd>
							<dd class="egovArr">페이지 Indicator 처럼 사용자가 작은 영역을 탭하는 경우는 좌우 여백을 충분히 확보하여야 오작동을 줄일 수 있다.</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_component15.gif" />" alt="pagestyle" />
						</div>
						
						<dl class="egov-deth3">
							<dt>팝업</dt>
							<dd class="egovBul">정의</dd>
							<dd>팝업은 현재의 창에서 처리할 수 없는 독립된 내용을 추가적인 창을 띄어서 보여주기 위해 사용된다.</dd>
							
							<dd class="egovBul">적용가이드</dd>
							<dd class="egovArr">모바일에서 불필요한 팝업은 최대한 사용을 자제하는 것이 좋다.</dd>
							<dd class="egovArr">선택이나 확인 창을 과도하게 사용하지 않아야 한다.</dd>
						</dl>
						
						<dl class="egov-deth3">
							<dt>체크박스</dt>
							<dd class="egovBul">정의</dd>
							<dd>체크박스는 여러 개의 메뉴 중 복수선택이 가능할 때 사용되는 컨트롤이다.</dd>
							
							<dd class="egovBul">적용가이드</dd>
							<dd class="egovArr">Default 상태에서는 아무것도 선택되지 않은 상태로 나타나야 한다.</dd>
							<dd class="egovArr">체크박스를 탭하면 V마크로 표현되며, 기선택된 체크박스를 터치하면 사라진다.</dd>
							<dd class="egovArr">전체선택, 전체해제가 필요한 경우는 상단영역에 해당버튼을 두어 컨트롤 하도록 한다.</dd>
							<dd class="egovArr">지나치게 많은 선택항목을 제시하여 스크롤영역 하단으로 내려가는 것은 사용성을 저하시키므로 항목을 최소화 하는 것을 권장한다.</dd>
						</dl>
						
						<dl class="egov-deth3">
							<dt>라디오버튼</dt>
							<dd class="egovBul">정의</dd>
							<dd>라디오버튼은 여러 개의 메뉴 중에서 하나의 메뉴만 선택 가능할 때 사용되는 컨트롤이다.</dd>
							
							<dd class="egovBul">적용가이드</dd>
							<dd class="egovArr">Default 상태에서는 현재 설정된 값이  선택된 상태로 나타난다.</dd>
							<dd class="egovArr">라디오 버튼은 선택항목을 한 화면에 표시해야 한다.</dd>
							<dd class="egovArr">선택되지 않은 라디오버튼을 탭하면 해당 버튼이 체크되고 기 선택된 버튼은 자동으로 해제된다.</dd>
							<dd class="egovArr">라디오 버튼 조작 후 저장버튼을 두지 않아도 자동으로 저장되도록 한다.</dd>
						</dl>
						
						<dl class="egov-deth3">
							<dt>아이콘 &amp; 이미지</dt>
							
							<dd class="egovBul">적용가이드</dd>
							<dd class="egovArr">아이콘은 텍스트 레이블을 사용하기에 공간이 좁거나 아이콘으로 의미전달에 더 명확할 때 사용한다.</dd>
							<dd class="egovArr">이미지사용은 가능한 최소한의 요소만을 적용하여 경량화된 디자인을 제공하는 것이 좋다.</dd>
							<dd class="egovArr">이미지 포맷은 PNG, JPG, GIF 포맷을 권장한다.</dd>
							<dd class="egovArr">아이콘과 이미지는 서비스의 Look&amp;Feel을 형성하는 요소이므로 각 서비스의 Identity를 살려 제작한다.</dd>
							<dd class="egovArr">아이콘 제작 시 사용자가 내용을 직관적으로 식별할 수 있는 메타포를 사용해야 한다.</dd>
							<dd class="egovArr">아이콘은 전체 디자인과 조화를 이룰 수 있도록 디자인 되어야 한다.</dd>
							<dd class="egovArr">여러 개의 아이콘이 사용되는 경우, 아이콘들 간의 스타일과 크기의 일관성을 가지도록 제작한다.</dd>
							<dd class="egovArr">간결하게 표현하며 작은 이미지에 과도한 장식이나 여러 가지 컬러를 적용하지 않는 것이 좋다.</dd>
							<dd class="egovArr">타인의 저작권을 침해하는 사진 이미지나 아이콘은 사용하지 않는다.</dd>
							<dd class="egovArr">공공서비스의 다양한 사용자에 이해를 높이기 위해서 아이콘은 가능하면 텍스트 레이블과 함께 사용하는 것을 권장한다.</dd>
						</dl>
						
						<dl class="egov-deth3">
							<dt>입력 폼</dt>
							<dd class="egovBul">정의</dd>
							<dd>사용자가 화면내 키보드를 이용하여 정보를 넣는 영역이다.</dd>
							
							<dd class="egovBul">적용가이드</dd>
							<dd class="egovArr">모바일은 일반 PC보다 상대적으로 입력방식이 어려우므로, 사용자가 입력하는 화면은 되도록 자제하며, 불가피하게 입력화면이 필요할 경우 항목을 단순화하고 
							한 화면에 제공하는 입력 항목이 길어지지 않게 여러 단계를 나누어서 입력하도록 한다. 입력화면에서는 스크롤 사용을 자제한다.</dd>
							<dd class="egovArr">직접 입력보다는 사용자에게 옵션을 보여주어 선택하는 방식을 제공하는 것이 바람직하다. 빈도수가 높은 옵션이나 최근에 사용한 옵션이 디폴트 상태가 되도록 한다.</dd>
							<dd class="egovArr">필요한 입력 콘텐츠가 일반 웹에 존재할 경우 PC버전을 사용하도록 유도한다. ① </dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_component16.gif" />" alt="inputform" />
						</div>
						
						<dl class="egov-deth3">
							<dt>동영상/멀티미디어</dt>
							
							<dd class="egovBul">적용가이드</dd>
							<dd class="egovArr">GIF Animation과 Flash의 경우 Platform별로 지원하지 않는 경우가 많으므로 사용을 지양 한다. 
							Apple계열의 제품들은 Flash를 지원하지 않고 있으며 안드로이드도 상위 버전에서만 지원이 가능하다.</dd>
							<dd class="egovArr">동영상 정보는 대체 텍스트 또는 설명 글을 같이 제공한다.</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_os.jpg" />" alt="multimediaos" />
							<table class="egov-table-platform" style="max-width:100%">
							<colgroup><col class="egov-colwidth15"><col class="egov-colwidth10"><col class="egov-colwidth10"><col class="egov-colwidth15"><col class="egov-colwidth30"></colgroup>
							<thead>
							<tr>
								<th>OS<br>(Platform)</th>
								<th>브라우저</th>
								<th>Flash</th>
								<th>GIF<br>Animation</th>
								<th>Multimedia</th>
							</tr>
							</thead>
							<tbody>
							<tr>
								<td>Android (v2.2)</td>
								<td>Chrome</td>
								<td>O</td>
								<td>O</td>
								<td>MP4,  AVI, WMV, ASF (디바이스별로 다름)	</td>
							</tr>
							<tr>
								<td>iOS</td>
								<td>Safari</td>
								<td>X</td>
								<td>X</td>
								<td>MP4</td>
							</tr>
							</tbody>
							</table>
							</div>
						</div>
						
						<dl class="egov-deth3">
							<dt>Progress bar</dt>
							<dd class="egovBul">정의</dd>
							<dd>프로그레스 바는 작업의 진행을 나타내는 바 형태의 컨트롤이다.</dd>
							<dd>데이터의 다운로드나 전송시에 완료시간을 예측할 수 있는 상황에 사용한다.	</dd>
							
							<dd class="egovBul">적용가이드</dd>
							<dd class="egovArr">프로그레스 바는 좌에서 우측 방향으로 진행한다.</dd>
							<dd class="egovArr">여러 개의 작업이 순차적으로 진행되는 경우 프로그레스 바는 각 작업당 1회씩 나타난다.</dd>
							<dd class="egovArr">작업시간이 2초 미만인 경우는 프로그레스 바를 생략할 수 있다.</dd>
							<dd class="egovArr">진행 중 취소버튼을 함께 제공할 수 있다.</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_component17.gif" />" alt="progressbar" />
						</div>
						
						<dl class="egov-deth3">
							<dt>Progress indicator</dt>
							<dd class="egovBul">정의</dd>
							<dd>프로그레스 인디케이터는 콘텐츠가 로딩될 때 완료시점을 예측할 수 없는 상황에 진행 중인 상태를 보여주는 컨트롤이다.</dd>
							
							<dd class="egovBul">적용가이드</dd>
							<dd class="egovArr">콘텐츠 영역에서 이미지 등 로딩시간이 오래 걸리는 이미지가 있는 경우 텍스트를 먼저 표시하고 Progress indicator를 사용하는 것이 좋다.</dd>
							<dd class="egovArr">프로그레스 인디케이터는 사용자와 상호작용하지 않는다.</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_component18.gif" />" alt="indicator" />
						</div>
						
						<dl class="egov-deth3">
							<dt>드롭다운/피커</dt>
							<dd class="egovBul">정의</dd>
							<dd>두 가지 모두 선택 가능한 여러 항목 중 하나를 선택할 때 사용하는 컨트롤이다.</dd>
							
							<dd class="egovBul">적용가이드</dd>
							<dd class="egovArr">옵션바나 콘텐츠 영역을 탭 하면 하단에 나타난다.</dd>
							<dd class="egovArr">현재 설정 값과 선택할 수 있는 다른 항목을 보면서 선택할 수 있다.</dd>
							<dd>탭 조작을 통해 콘텐츠를 선택하면 드롭다운이나 피커가 닫히지 않은 상태에서 선택항목에 선택된 내용이 표기된다.	</dd>
							<dd>드롭 박스 선택항목이 많은 경우 박스 안에 스크롤이 생겨 하단으로 메뉴가 나타날 수 있다.</dd>
						</dl>
						<div class="egov-deth2">
							<img style="max-width:100%;" src="<c:url value="/images/egovframework/mbl/rte/guide/img_component19.gif" />" alt="picker" />
						</div>
					
					
					<div class="egov-deth1">
						<h2>화면해상도의 정의</h2>
						<dl class="egov-deth3">
							<dt>미디어 쿼리 정의</dt>
							<dd>모바일 기기별로 스타일을 다르게 적용해 주어야 한다.</dd>
							<dd class="egovBul">모바일 기기별 스타일을 제공한다.</dd>
							<dd>
								
									<ul class="link">
									<li>&lt;link media="only screen and (max-device-width: 480px)" href="small-device.css" type= "text/css" rel="stylesheet"&gt;</li>
									<li>&lt;link media="screen and (min-device-width: 481px)" href="not-small-device.css" type="text/css" rel="stylesheet"&gt;</li>
									</ul>
								
							</dd>

							<dd class="egovBul">가로, 세로 모드로 구분할 경우 각각의 다른 스타일로 제공한다.</dd>
							<dd>
								
									<ul class="link">
									<li>&lt;link rel="stylesheet" media="all and (orientation:portrait)" href="portrait.css"&gt;</li>
									<li>&lt;link rel="stylesheet" media="all and (orientation:landscape)" href="landscape.css"&gt;</li>
									</ul>
								
							</dd>
						</dl>
						<dl class="egov-deth3">
							<dt>viewport 메타 태그의 정의</dt>
							<dd>모바일 브라우저가 각각 다르기 때문에 이들 브라우저의 크기 별로 적절하게 표현하기 위해서 사용하는 방법으로써 
							viewport 메타 태그를 head 영역에 삽입하여 문제점을 해결할 수 있습니다.</dd>
							
							<dd class="egovBul">viewport의 가로 크기를 디바이스 가로 크기로 설정할 경우</dd>
							
							<dd>	
									<ul class="link">
									<li>&lt;meta name = "viewport" content = "width = device-width" /&gt;</li>
									</ul>
							</dd>	
							<dd class="egovBul">viewport의 기본 확대비율을 100%로 설정할 경우</dd>
							<dd>	
									<ul class="link">
									<li>&lt;meta name = "viewport" content = "initial-scale = 1.0" /&gt;</li>
									</ul>
							</dd>	
							<dd class="egovBul">viewport의 기본 확대비율을 230% 및 사용자 확대 기능 불가로 설정할 경우</dd>
							<dd>	
									<ul class="link">
									<li>&lt;meta name = "viewport" content = "initial-scale = 2.3, user-scalable = no" /&gt;</li>
									</ul>
							</dd>	
							<dd class="egovBul">아이폰을 기준으로 옴니아 viewport 설정할 경우</dd>
							<dd>	
									<ul class="link">
									<li>&lt;meta name="viewport" content="width=device-width; initial-scale=0.75;   maximum-scale=0.75;“ /&gt;</li>
									</ul>
							</dd>	
							<dd class="egovBul">사파리, 오페라, 크롬 브라우저를 모두 충족하는 경우</dd>
							<dd>	
									<ul class="link">
									<li>&lt;meta name="viewport" content="width=device-width, initial-scale=1.0,    maximum-scale=1.0, user-scalable=no" /&gt;</li>
									</ul>
							</dd>	
							<dd class="egovBul">viewport가 지원되지 않을 경우</dd>
							<dd>viewport는 모든 모바일 브라우저에서 지원되지 않습니다. 이러한 경우에는   다른 meta tag를 사용하도록 합니다.</dd>
							<dd>	
									<ul class="link">
										<li>&lt;meta name="HandheldFriendly" content="true" /&gt;</li>
										<li>&lt;meta name="MobileOptimized" content="320" /&gt;</li>
									</ul>
							</dd>										
						</dl>
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
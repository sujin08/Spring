<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : icon.jsp
  Description :  UX icon component
  Modification Information

      수정일         수정자           수정내용
    -------------    --------    ---------------------
     2011.07.14    권자영          최초 생성
 
    author   : 모바일 실행환경 개발팀 권자영
    since    : 2011.07.06
--%>
<!DOCTYPE html> 
<html lang="kr"> 
    <head>
        <title>UX Component - Icon</title> 
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
			     		<h1>Icon</h1>
			     		<p>모바일 어플리케이션에 가장 많이 사용되는 아이콘을 선별하여 제공한다. 
			     		 기본으로 제공되는 아이콘은 흰색의 아이콘 모양과 반투명의 검은 원형 배경으로 이루어져있어 
			     		어떤 배경색과도 대비를 이룰 수 있다.</p> 
		     		</div>
					
					<div class="egov-deth1">
						<h2>기본코드</h2> 
						<p><strong>data-icon</strong> 속성값으로 생성할 아이콘 이름을 지정하여 아이콘을 추가한다.</p>
						
						<div class="egov-deth2">
							<a href="#" data-role="button" data-icon="home">Home</a>
					     	<ul class="link">
					     		<li>&lt;a href="#" data-role="button" data-icon="home"&gt;Home&lt;/a&gt;</li>
					     	</ul>
				     	</div>
			     	</div>
			     	
					<div class="egov-deth1">
				     	<h2>아이콘의 위치</h2>
				     	<p>기본적으로 버튼에 추가된 아이콘은 버튼내용 왼쪽에 위치한다.
				     	<strong>data-iconpos</strong> 속성을 추가하여 아이콘을 버튼내용 오른쪽, 위쪽, 아래쪽에 위치시킬 수 있다.</p>
				     	
				     	<div class="egov-deth2">
					     	<div class="ui-grid-a">
						     	<div class="ui-block-a"><a href="#" data-role="button" data-icon="gear" data-iconpos="left">왼쪽</a></div>
						     	<div class="ui-block-b"><a href="#" data-role="button" data-icon="gear" data-iconpos="right">오른쪽</a></div>
						     	<div class="ui-block-a"><a href="#" data-role="button" data-icon="gear" data-iconpos="top">위쪽</a></div>
						     	<div class="ui-block-b"><a href="#" data-role="button" data-icon="gear" data-iconpos="bottom">아래쪽</a></div>
					     	</div>
					     	<ul class="link">
						        <li>&lt;a href="#" data-role="button" data-icon="gear" data-iconpos="left"&gt;왼쪽&lt;/a&gt;</li>
						     	<li>&lt;a href="#" data-role="button" data-icon="gear" data-iconpos="right"&gt;오른쪽&lt;/a&gt;</li>
						     	<li>&lt;a href="#" data-role="button" data-icon="gear" data-iconpos="top"&gt;위쪽&lt;/a&gt;</li>
						     	<li>&lt;a href="#" data-role="button" data-icon="gear" data-iconpos="bottom"&gt;아래쪽&lt;/a&gt;</li>
					     	</ul>
					    </div>
					  
						<p>data-iconpos 속성값을 <strong>"notext"</strong>로 지정하여 버튼에 아이콘만 존재하도록 설정할 수 있다.</p>
  						<div class="egov-deth2">
						     <a href="#" data-role="button" data-icon="gear" data-iconpos="notext" data-theme="a" data-inline="true">gear</a>
						     <a href="#" data-role="button" data-icon="home" data-iconpos="notext" data-theme="b" data-inline="true">home</a>
						     <a href="#" data-role="button" data-icon="grid" data-iconpos="notext" data-theme="e" data-inline="true">grid</a>
						
						     <ul class="link">
						     	<li>&lt;a href="#" data-role="button" data-icon="gear" data-iconpos="notext"&gt;gear&lt;/a&gt;</li>
						     </ul>
			     		</div>	
			     	</div>

					<div class="egov-deth1">			     	
				     	<h2>기본 아이콘 26종 </h2> 
				     	<p>data-icon 속성에 각 아이콘의 이름을 넣어 아이콘을 생성한다.</p>
				     	
						<div class="egov-deth2">
							<div class="ui-grid-a">
								<div class="ui-block-a"><a href="#" data-role="button" data-icon="arrow-l">arrow-l</a></div>
								<div class="ui-block-b"><a href="#" data-role="button" data-icon="arrow-r">arrow-r</a></div>
								
								<div class="ui-block-a"><a href="#" data-role="button" data-icon="arrow-u">arrow-u</a></div>
								<div class="ui-block-b"><a href="#" data-role="button" data-icon="arrow-d">arrow-d</a></div>

								<div class="ui-block-a"><a href="#" data-role="button" data-icon="delete">delete</a></div>
								<div class="ui-block-b"><a href="#" data-role="button" data-icon="plus">plus</a></div>
								
								<div class="ui-block-a"><a href="#" data-role="button" data-icon="minus">minus</a></div>
								<div class="ui-block-b"><a href="#" data-role="button" data-icon="check">check</a></div>
								
								<div class="ui-block-a"><a href="#" data-role="button" data-icon="gear">gear</a></div>
								<div class="ui-block-b"><a href="#" data-role="button" data-icon="refresh">refresh</a></div>
								
								<div class="ui-block-a"><a href="#" data-role="button" data-icon="forward">forward</a></div>
								<div class="ui-block-b"><a href="#" data-role="button" data-icon="back">back</a></div>
								
								<div class="ui-block-a"><a href="#" data-role="button" data-icon="grid">grid</a></div>
								<div class="ui-block-b"><a href="#" data-role="button" data-icon="star">star</a></div>
								
								<div class="ui-block-a"><a href="#" data-role="button" data-icon="alert">alert</a></div>
								<div class="ui-block-b"><a href="#" data-role="button" data-icon="info">info</a></div>

								<div class="ui-block-a"><a href="#" data-role="button" data-icon="search">search</a></div>
								<div class="ui-block-b"><a href="#" data-role="button" data-icon="home">home</a></div>
								
								<div class="ui-block-a"><a href="#" data-role="button" data-icon="phone">phone</a></div>
								<div class="ui-block-b"><a href="#" data-role="button" data-icon="mail">mail</a></div>
								
								<div class="ui-block-a"><a href="#" data-role="button" data-icon="gps">gps</a></div>
								<div class="ui-block-b"><a href="#" data-role="button" data-icon="audio">audio</a></div>
								
								<div class="ui-block-a"><a href="#" data-role="button" data-icon="camera">camera</a></div>
								<div class="ui-block-b"><a href="#" data-role="button" data-icon="file">file</a></div>
								
								<div class="ui-block-a"><a href="#" data-role="button" data-icon="mic">mic</a></div>								
								<div class="ui-block-b"><a href="#" data-role="button" data-icon="explorer">explorer</a></div>
							</div>	
						</div>
			     	</div>
			     	
			     	<div class="egov-deth1">	
				     	<h2>사용자 정의 아이콘</h2> 
				     	<p>전자정부 모바일 표준프레임워크에서 아이콘에 적용하는 기본 CSS 스타일을 변경하여 사용자 정의 아이콘을 사용할 수 있다. 
				     	사용자 정의 아이콘(Custom Icon)을 사용하기 위해서는 data-icon 속성값을 고유한 이름으로 지정하여 사용해야한다. 
				     	기존의 아이콘과 통일성을 유지하려면 아이콘의 사이즈를 18X18 픽셀로 지정하고 이미지를 PNG-8, alpha transparency 로 저장한다.</p>
				     	
				     	<div class="egov-deth2">	
					     	<a href="#" data-role="button" data-icon="chat" data-inline="true" data-iconpos="top">chat</a>
					     	<a href="#" data-role="button" data-icon="magnify" data-inline="true" data-iconpos="top">magnify</a>
					     	<a href="#" data-role="button" data-icon="piggy" data-inline="true" data-iconpos="top">piggy</a>
					     	<a href="#"  data-role="button" data-icon="egov" data-inline="true" data-iconpos="top">egov</a>
					     	
				     		<ul class="link">
				     			<li>.ui-icon-<strong>[ideal_icon_name]</strong> {</li>
								<li class="egov-txtIn1">background-image: url(/images/egovframework/mbl/cmm/<strong>[icon_filename]);</strong></li>
								<li class="egov-txtIn1">background-repeat: no-repeat;</li>   
								<li>}</li>
				     		</ul>
			     		</div>
			     	</div>
			     	
			     	<div class="egov-deth1">	
				     	<h2>아이콘 색상 지정</h2> 
				     	<p><strong>data-theme</strong> 속성에 테마를 적용하여 아이콘의 색상을 변경한다.</p>
						
						<div class="egov-deth2">					     
					     	<div data-role="controlgroup" data-type="horizontal">
								<a href="#" data-role="button" data-icon="arrow-l" data-iconpos="notext" data-theme="a">arrow-l</a>
								<a href="#" data-role="button" data-icon="arrow-r" data-iconpos="notext" data-theme="a">arrow-r</a>
								<a href="#" data-role="button" data-icon="arrow-u" data-iconpos="notext" data-theme="a">arrow-u</a>
								<a href="#" data-role="button" data-icon="arrow-d" data-iconpos="notext" data-theme="a">arrow-d</a>
								<a href="#" data-role="button" data-icon="delete" data-iconpos="notext" data-theme="a">delete</a>
								<a href="#" data-role="button" data-icon="plus" data-iconpos="notext" data-theme="a">plus</a>
				
								<a href="#" data-role="button" data-icon="minus" data-iconpos="notext" data-theme="a">minus</a>
								<a href="#" data-role="button" data-icon="check" data-iconpos="notext" data-theme="a">check</a>
								<a href="#" data-role="button" data-icon="gear" data-iconpos="notext" data-theme="a">gear</a>
								<a href="#" data-role="button" data-icon="refresh" data-iconpos="notext" data-theme="a">refresh</a>
								<a href="#" data-role="button" data-icon="forward" data-iconpos="notext" data-theme="a">forward</a>
								<a href="#" data-role="button" data-icon="back" data-iconpos="notext" data-theme="a">back</a>
		
								<a href="#" data-role="button" data-icon="grid" data-iconpos="notext" data-theme="a">grid</a>
								<a href="#" data-role="button" data-icon="star" data-iconpos="notext" data-theme="a">star</a>
								<a href="#" data-role="button" data-icon="alert" data-iconpos="notext" data-theme="a">alert</a>
								<a href="#" data-role="button" data-icon="info" data-iconpos="notext" data-theme="a">info</a>
								<a href="#" data-role="button" data-icon="search" data-iconpos="notext" data-theme="a">search</a>
								<a href="#" data-role="button" data-icon="home" data-iconpos="notext" data-theme="a">home</a>
								
                                <a href="#" data-role="button" data-icon="phone" data-iconpos="notext" data-theme="a">phone</a>
                                <a href="#" data-role="button" data-icon="mail" data-iconpos="notext" data-theme="a">mail</a>
                                
                                <a href="#" data-role="button" data-icon="gps" data-iconpos="notext" data-theme="a">gps</a>
                                <a href="#" data-role="button" data-icon="audio" data-iconpos="notext" data-theme="a">audio</a>
                                <a href="#" data-role="button" data-icon="camera" data-iconpos="notext" data-theme="a">camera</a>
                                <a href="#" data-role="button" data-icon="file" data-iconpos="notext" data-theme="a">file</a>
                                <a href="#" data-role="button" data-icon="mic" data-iconpos="notext" data-theme="a">mic</a>
                                <a href="#" data-role="button" data-icon="explorer" data-iconpos="notext" data-theme="a">explorer</a>                                								
							</div>
						
							<div data-role="controlgroup" data-type="horizontal">
								<a href="#" data-role="button" data-icon="arrow-l" data-iconpos="notext" data-theme="b">arrow-l</a>
								<a href="#" data-role="button" data-icon="arrow-r" data-iconpos="notext" data-theme="b">arrow-r</a>
								<a href="#" data-role="button" data-icon="arrow-u" data-iconpos="notext" data-theme="b">arrow-u</a>
								<a href="#" data-role="button" data-icon="arrow-d" data-iconpos="notext" data-theme="b">arrow-d</a>
								<a href="#" data-role="button" data-icon="delete" data-iconpos="notext" data-theme="b">delete</a>
								<a href="#" data-role="button" data-icon="plus" data-iconpos="notext" data-theme="b">plus</a>
				
								<a href="#" data-role="button" data-icon="minus" data-iconpos="notext" data-theme="b">minus</a>
								<a href="#" data-role="button" data-icon="check" data-iconpos="notext" data-theme="b">check</a>
								<a href="#" data-role="button" data-icon="gear" data-iconpos="notext" data-theme="b">gear</a>
								<a href="#" data-role="button" data-icon="refresh" data-iconpos="notext" data-theme="b">refresh</a>
								<a href="#" data-role="button" data-icon="forward" data-iconpos="notext" data-theme="b">forward</a>
								<a href="#" data-role="button" data-icon="back" data-iconpos="notext" data-theme="b">back</a>
		
								<a href="#" data-role="button" data-icon="grid" data-iconpos="notext" data-theme="b">grid</a>
								<a href="#" data-role="button" data-icon="star" data-iconpos="notext" data-theme="b">star</a>
								<a href="#" data-role="button" data-icon="alert" data-iconpos="notext" data-theme="b">alert</a>
								<a href="#" data-role="button" data-icon="info" data-iconpos="notext" data-theme="b">info</a>
								<a href="#" data-role="button" data-icon="search" data-iconpos="notext" data-theme="b">search</a>
								<a href="#" data-role="button" data-icon="home" data-iconpos="notext" data-theme="b">home</a>
								
                                <a href="#" data-role="button" data-icon="phone" data-iconpos="notext" data-theme="b">phone</a>
                                <a href="#" data-role="button" data-icon="mail" data-iconpos="notext" data-theme="b">mail</a>
                                
                                <a href="#" data-role="button" data-icon="gps" data-iconpos="notext" data-theme="b">gps</a>
                                <a href="#" data-role="button" data-icon="audio" data-iconpos="notext" data-theme="b">audio</a>
                                <a href="#" data-role="button" data-icon="camera" data-iconpos="notext" data-theme="b">camera</a>
                                <a href="#" data-role="button" data-icon="file" data-iconpos="notext" data-theme="b">file</a>
                                <a href="#" data-role="button" data-icon="mic" data-iconpos="notext" data-theme="b">mic</a>								
                                <a href="#" data-role="button" data-icon="explorer" data-iconpos="notext" data-theme="b">explorer</a>
							</div>	
					
							<div data-role="controlgroup" data-type="horizontal">
								<a href="#" data-role="button" data-icon="arrow-l" data-iconpos="notext" data-theme="c">arrow-l</a>
								<a href="#" data-role="button" data-icon="arrow-r" data-iconpos="notext" data-theme="c">arrow-r</a>
								<a href="#" data-role="button" data-icon="arrow-u" data-iconpos="notext" data-theme="c">arrow-u</a>
								<a href="#" data-role="button" data-icon="arrow-d" data-iconpos="notext" data-theme="c">arrow-d</a>
								<a href="#" data-role="button" data-icon="delete" data-iconpos="notext" data-theme="c">delete</a>
								<a href="#" data-role="button" data-icon="plus" data-iconpos="notext" data-theme="c">plus</a>
				
								<a href="#" data-role="button" data-icon="minus" data-iconpos="notext" data-theme="c">minus</a>
								<a href="#" data-role="button" data-icon="check" data-iconpos="notext" data-theme="c">check</a>
								<a href="#" data-role="button" data-icon="gear" data-iconpos="notext" data-theme="c">gear</a>
								<a href="#" data-role="button" data-icon="refresh" data-iconpos="notext" data-theme="c">refresh</a>
								<a href="#" data-role="button" data-icon="forward" data-iconpos="notext" data-theme="c">forward</a>
								<a href="#" data-role="button" data-icon="back" data-iconpos="notext" data-theme="c">back</a>
		
								<a href="#" data-role="button" data-icon="grid" data-iconpos="notext" data-theme="c">grid</a>
								<a href="#" data-role="button" data-icon="star" data-iconpos="notext" data-theme="c">star</a>
								<a href="#" data-role="button" data-icon="alert" data-iconpos="notext" data-theme="c">alert</a>
								<a href="#" data-role="button" data-icon="info" data-iconpos="notext" data-theme="c">info</a>
								<a href="#" data-role="button" data-icon="search" data-iconpos="notext" data-theme="c">search</a>
								<a href="#" data-role="button" data-icon="home" data-iconpos="notext" data-theme="c">home</a>
								
                                <a href="#" data-role="button" data-icon="phone" data-iconpos="notext" data-theme="c">phone</a>
                                <a href="#" data-role="button" data-icon="mail" data-iconpos="notext" data-theme="c">mail</a>
                                
                                <a href="#" data-role="button" data-icon="gps" data-iconpos="notext" data-theme="c">gps</a>
                                <a href="#" data-role="button" data-icon="audio" data-iconpos="notext" data-theme="c">audio</a>
                                <a href="#" data-role="button" data-icon="camera" data-iconpos="notext" data-theme="c">camera</a>
                                <a href="#" data-role="button" data-icon="file" data-iconpos="notext" data-theme="c">file</a>
                                <a href="#" data-role="button" data-icon="mic" data-iconpos="notext" data-theme="c">mic</a>
                                <a href="#" data-role="button" data-icon="explorer" data-iconpos="notext" data-theme="c">explorer</a>
							</div>						
					
							<div data-role="controlgroup" data-type="horizontal">
								<a href="#" data-role="button" data-icon="arrow-l" data-iconpos="notext" data-theme="d">arrow-l</a>
								<a href="#" data-role="button" data-icon="arrow-r" data-iconpos="notext" data-theme="d">arrow-r</a>
								<a href="#" data-role="button" data-icon="arrow-u" data-iconpos="notext" data-theme="d">arrow-u</a>
								<a href="#" data-role="button" data-icon="arrow-d" data-iconpos="notext" data-theme="d">arrow-d</a>
								<a href="#" data-role="button" data-icon="delete" data-iconpos="notext" data-theme="d">delete</a>
								<a href="#" data-role="button" data-icon="plus" data-iconpos="notext" data-theme="d">plus</a>
				
								<a href="#" data-role="button" data-icon="minus" data-iconpos="notext">minus</a>
								<a href="#" data-role="button" data-icon="check" data-iconpos="notext">check</a>
								<a href="#" data-role="button" data-icon="gear" data-iconpos="notext">gear</a>
								<a href="#" data-role="button" data-icon="refresh" data-iconpos="notext">refresh</a>
								<a href="#" data-role="button" data-icon="forward" data-iconpos="notext">forward</a>
								<a href="#" data-role="button" data-icon="back" data-iconpos="notext">back</a>
		
								<a href="#" data-role="button" data-icon="grid" data-iconpos="notext">grid</a>
								<a href="#" data-role="button" data-icon="star" data-iconpos="notext">star</a>
								<a href="#" data-role="button" data-icon="alert" data-iconpos="notext">alert</a>
								<a href="#" data-role="button" data-icon="info" data-iconpos="notext">info</a>
								<a href="#" data-role="button" data-icon="search" data-iconpos="notext">search</a>
								<a href="#" data-role="button" data-icon="home" data-iconpos="notext">home</a>
								
                                <a href="#" data-role="button" data-icon="phone" data-iconpos="notext">phone</a>
                                <a href="#" data-role="button" data-icon="mail" data-iconpos="notext">mail</a>
                                
                                <a href="#" data-role="button" data-icon="gps" data-iconpos="notext" data-theme="d">gps</a>
                                <a href="#" data-role="button" data-icon="audio" data-iconpos="notext" data-theme="d">audio</a>
                                <a href="#" data-role="button" data-icon="camera" data-iconpos="notext" data-theme="d">camera</a>
                                <a href="#" data-role="button" data-icon="file" data-iconpos="notext" data-theme="d">file</a>
                                <a href="#" data-role="button" data-icon="mic" data-iconpos="notext" data-theme="d">mic</a>
                                <a href="#" data-role="button" data-icon="explorer" data-iconpos="notext" data-theme="d">explorer</a>
							</div>	
							
							<div data-role="controlgroup" data-type="horizontal">
								<a href="#" data-role="button" data-icon="arrow-l" data-iconpos="notext" data-theme="e">arrow-l</a>
								<a href="#" data-role="button" data-icon="arrow-r" data-iconpos="notext" data-theme="e">arrow-r</a>
								<a href="#" data-role="button" data-icon="arrow-u" data-iconpos="notext" data-theme="e">arrow-u</a>
								<a href="#" data-role="button" data-icon="arrow-d" data-iconpos="notext" data-theme="e">arrow-d</a>
								<a href="#" data-role="button" data-icon="delete" data-iconpos="notext" data-theme="e">delete</a>
								<a href="#" data-role="button" data-icon="plus" data-iconpos="notext" data-theme="e">plus</a>
				
								<a href="#" data-role="button" data-icon="minus" data-iconpos="notext" data-theme="e">minus</a>
								<a href="#" data-role="button" data-icon="check" data-iconpos="notext" data-theme="e">check</a>
								<a href="#" data-role="button" data-icon="gear" data-iconpos="notext" data-theme="e">gear</a>
								<a href="#" data-role="button" data-icon="refresh" data-iconpos="notext" data-theme="e">refresh</a>
								<a href="#" data-role="button" data-icon="forward" data-iconpos="notext" data-theme="e">forward</a>
								<a href="#" data-role="button" data-icon="back" data-iconpos="notext" data-theme="e">back</a>
		
								<a href="#" data-role="button" data-icon="grid" data-iconpos="notext" data-theme="e">grid</a>
								<a href="#" data-role="button" data-icon="star" data-iconpos="notext" data-theme="e">star</a>
								<a href="#" data-role="button" data-icon="alert" data-iconpos="notext" data-theme="e">alert</a>
								<a href="#" data-role="button" data-icon="info" data-iconpos="notext" data-theme="e">info</a>
								<a href="#" data-role="button" data-icon="search" data-iconpos="notext" data-theme="e">search</a>
								<a href="#" data-role="button" data-icon="home" data-iconpos="notext" data-theme="e">home</a>
                                
                                <a href="#" data-role="button" data-icon="phone" data-iconpos="notext" data-theme="e">phone</a>
                                <a href="#" data-role="button" data-icon="mail" data-iconpos="notext" data-theme="e">mail</a>
                                
                                <a href="#" data-role="button" data-icon="gps" data-iconpos="notext" data-theme="e">gps</a>
                                <a href="#" data-role="button" data-icon="audio" data-iconpos="notext" data-theme="e">audio</a>
                                <a href="#" data-role="button" data-icon="camera" data-iconpos="notext" data-theme="e">camera</a>
                                <a href="#" data-role="button" data-icon="file" data-iconpos="notext" data-theme="e">file</a>
                                <a href="#" data-role="button" data-icon="mic" data-iconpos="notext" data-theme="e">mic</a>
								<a href="#" data-role="button" data-icon="explorer" data-iconpos="notext" data-theme="e">explorer</a>
							</div>	
							
							<div data-role="controlgroup" data-type="horizontal">
								<a href="#" data-role="button" data-icon="arrow-l" data-iconpos="notext" data-theme="f">arrow-l</a>
								<a href="#" data-role="button" data-icon="arrow-r" data-iconpos="notext" data-theme="f">arrow-r</a>
								<a href="#" data-role="button" data-icon="arrow-u" data-iconpos="notext" data-theme="f">arrow-u</a>
								<a href="#" data-role="button" data-icon="arrow-d" data-iconpos="notext" data-theme="f">arrow-d</a>
								<a href="#" data-role="button" data-icon="delete" data-iconpos="notext" data-theme="f">delete</a>
								<a href="#" data-role="button" data-icon="plus" data-iconpos="notext" data-theme="f">plus</a>
				
								<a href="#" data-role="button" data-icon="minus" data-iconpos="notext" data-theme="f">minus</a>
								<a href="#" data-role="button" data-icon="check" data-iconpos="notext" data-theme="f">check</a>
								<a href="#" data-role="button" data-icon="gear" data-iconpos="notext" data-theme="f">gear</a>
								<a href="#" data-role="button" data-icon="refresh" data-iconpos="notext" data-theme="f">refresh</a>
								<a href="#" data-role="button" data-icon="forward" data-iconpos="notext" data-theme="f">forward</a>
								<a href="#" data-role="button" data-icon="back" data-iconpos="notext" data-theme="f">back</a>
		
								<a href="#" data-role="button" data-icon="grid" data-iconpos="notext" data-theme="f">grid</a>
								<a href="#" data-role="button" data-icon="star" data-iconpos="notext" data-theme="f">star</a>
								<a href="#" data-role="button" data-icon="alert" data-iconpos="notext" data-theme="f">alert</a>
								<a href="#" data-role="button" data-icon="info" data-iconpos="notext" data-theme="f">info</a>
								<a href="#" data-role="button" data-icon="search" data-iconpos="notext" data-theme="f">search</a>
								<a href="#" data-role="button" data-icon="home" data-iconpos="notext" data-theme="f">home</a>
								
                                <a href="#" data-role="button" data-icon="phone" data-iconpos="notext" data-theme="f">phone</a>
                                <a href="#" data-role="button" data-icon="mail" data-iconpos="notext" data-theme="f">mail</a>
                                
                                <a href="#" data-role="button" data-icon="gps" data-iconpos="notext" data-theme="f">gps</a>
                                <a href="#" data-role="button" data-icon="audio" data-iconpos="notext" data-theme="f">audio</a>
                                <a href="#" data-role="button" data-icon="camera" data-iconpos="notext" data-theme="f">camera</a>
                                <a href="#" data-role="button" data-icon="file" data-iconpos="notext" data-theme="f">file</a>
                                <a href="#" data-role="button" data-icon="mic" data-iconpos="notext" data-theme="f">mic</a>
                                <a href="#" data-role="button" data-icon="explorer" data-iconpos="notext" data-theme="f">explorer</a>
                                								
							</div>	
					
							<div data-role="controlgroup" data-type="horizontal">
								<a href="#" data-role="button" data-icon="arrow-l" data-iconpos="notext" data-theme="g">arrow-l</a>
								<a href="#" data-role="button" data-icon="arrow-r" data-iconpos="notext" data-theme="g">arrow-r</a>
								<a href="#" data-role="button" data-icon="arrow-u" data-iconpos="notext" data-theme="g">arrow-u</a>
								<a href="#" data-role="button" data-icon="arrow-d" data-iconpos="notext" data-theme="g">arrow-d</a>
								<a href="#" data-role="button" data-icon="delete" data-iconpos="notext" data-theme="g">delete</a>
								<a href="#" data-role="button" data-icon="plus" data-iconpos="notext" data-theme="g">plus</a>
				
								<a href="#" data-role="button" data-icon="minus" data-iconpos="notext" data-theme="g">minus</a>
								<a href="#" data-role="button" data-icon="check" data-iconpos="notext" data-theme="g">check</a>
								<a href="#" data-role="button" data-icon="gear" data-iconpos="notext" data-theme="g">gear</a>
								<a href="#" data-role="button" data-icon="refresh" data-iconpos="notext" data-theme="g">refresh</a>
								<a href="#" data-role="button" data-icon="forward" data-iconpos="notext" data-theme="g">forward</a>
								<a href="#" data-role="button" data-icon="back" data-iconpos="notext" data-theme="g">back</a>
		
								<a href="#" data-role="button" data-icon="grid" data-iconpos="notext" data-theme="g">grid</a>
								<a href="#" data-role="button" data-icon="star" data-iconpos="notext" data-theme="g">star</a>
								<a href="#" data-role="button" data-icon="alert" data-iconpos="notext" data-theme="g">alert</a>
								<a href="#" data-role="button" data-icon="info" data-iconpos="notext" data-theme="g">info</a>
								<a href="#" data-role="button" data-icon="search" data-iconpos="notext" data-theme="g">search</a>
								<a href="#" data-role="button" data-icon="home" data-iconpos="notext" data-theme="g">home</a>
								
                                <a href="#" data-role="button" data-icon="phone" data-iconpos="notext" data-theme="g">phone</a>
                                <a href="#" data-role="button" data-icon="mail" data-iconpos="notext" data-theme="g">mail</a>

								<a href="#" data-role="button" data-icon="gps" data-iconpos="notext" data-theme="g">gps</a>
                                <a href="#" data-role="button" data-icon="audio" data-iconpos="notext" data-theme="g">audio</a>
                                <a href="#" data-role="button" data-icon="camera" data-iconpos="notext" data-theme="g">camera</a>
                                <a href="#" data-role="button" data-icon="file" data-iconpos="notext" data-theme="g">file</a>
                                <a href="#" data-role="button" data-icon="mic" data-iconpos="notext" data-theme="g">mic</a>
                                <a href="#" data-role="button" data-icon="explorer" data-iconpos="notext" data-theme="g">explorer</a>
							</div>	
							
							<ul class="link">
								<li>&lt;a href="#" data-role="button" data-icon="arrow-l" data-iconpos="notext" data-theme="h"&gt;arrow-l&lt;/a&gt;</li>
							</ul>
						</div>
					</div>
							
				</div>
				<!-- content-primary end -->
				
				<!-- content-secondary start -->						     	            
				<div class="content-secondary"> 
					<jsp:include page="../../componentMenu.jsp"></jsp:include>
				</div>
				<!-- content-secondary end -->
				
			</div> 
			<!-- content end -->
				       
			<!-- footer start -->
			<div data-role="footer" data-theme="z"  class="egovBar">
				 <h4>Copyright(c)2012 Ministry of Government Administration and Home Affairs.</h4>
			</div>
			<!-- footer end -->
	     
         </div> 
         <!-- page end -->
         
     </body>
 </html>
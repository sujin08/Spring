<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : labelText.jsp
  Description :  UX label/text component
  Modification Information

      수정일         수정자           수정내용
    -------------    --------    ---------------------
     2011.07.14    구지연          최초 생성
 
    author   : 모바일 실행환경 개발팀 구지연
    since    : 2011.07.06
--%>
<!DOCTYPE html> 
<html lang="kr"> 
    <head>
        <title>UX Component - Label / Text</title>
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
                        <h1>Label / Text</h1>
                        <p>Label / Text 는 HTML 의 &lt;h1&gt;, &lt;p&gt; Tag 를 사용하며 CSS 정의하여 색상, 크기, 폰트를 변경 하여 사용 할 수 있다.</p>
                    </div>                
                    
                    <div class="egov-deth1">
						<h2>기본코드</h2>
                        <dl class="egov-deth3">
                            <dd class="egovBul">Label</dd>
                            <dd class="egovArr">&lt;h1&gt; Tag는 문서 전체의 타이틀이나 매우 중요한 부분을 나타내기 위해 사용한다. </dd>
                            <dd class="egovArr">&lt;h2&gt; Tag는 문서의 보조 섹션을 나타내기 위해 사용되며 &lt;h1&gt; Tag 보다 비교적 중요도가 덜한 부분을 나타내기 위해 사용한다.</dd>
                            <dd class="egovArr">가장 높은 수준의 헤더 &lt;h1&gt;로 시작하고 중요도에 따라 아래와 같이 헤더의 수준을 낮춰서 사용하는 것을 권장한다.</dd>
                            <dd class="egovArr">글자를 진하게 표현할 수 있도록 &lt;strong&gt; 을 사용할 수 있고, 또한 내용을 강조하기 위해 들여쓰기 효과와 비슷한 &lt;blockquote&gt; 를 사용할 수 있다.</dd>
                        </dl>
                        
                        <div class="egov-deth2">
                        
                            <h1>H1 Heading</h1>
                            <h2>H2 Heading</h2>
                            <h3>H3 Heading</h3>
                            <h4>H4 Heading</h4>
                            <h5>H5 Heading</h5>
                            <h6>H6 Heading</h6>
                            <strong>Strong</strong>                            
                            <blockquote>Blockquote</blockquote>                            
                        
                            <ul class="link">
                                <li>&lt;h1&gt;H1 Heading&lt;/h1&gt;</li>
                                <li>&lt;h2&gt;H2 Heading&lt;/h2&gt;</li>
                                <li>&lt;h3&gt;H3 Heading&lt;/h3&gt;</li>
                                <li>&lt;h4&gt;H4 Heading&lt;/h4&gt;</li>
                                <li>&lt;h5&gt;H5 Heading&lt;/h5&gt;</li>
                                <li>&lt;h6&gt;H6 Heading&lt;/h6&gt;</li>
                                <li>&lt;strong&gt;Strong&lt;/strong&gt;</li>
                                <li>&lt;blockquote&gt;Blockquote&lt;/blockquote&gt;</li>
                            </ul>
                            
                        </div>

                        <dl class="egov-deth3">
                            <dd class="egovBul">Text</dd>
                            <dd class="egovArr">HTML의 &lt;p&gt;, &lt;div&gt; Tag 를 사용하며 CSS 를 정의하여 색상, 폰트, 크기를 변경 한다.</dd>
                        </dl>
						
						<dl class="egov-deth3">
							<dd>스타일시트를 이용하여 텍스트의 배열을 다르게 설정해 줄 수 있다.</dd>	
						</dl>
						<div class="egov-deth2">  	
							<div class="egov-align-left">left</div>
							<div class="egov-align-center">center</div>
							<div class="egov-align-right">right</div>
							<br>
							<ul class="link">
								<li>&lt;div class="egov-align-left"&gt;left&lt;/div&gt;</li>
								<li>&lt;div class="egov-align-center"&gt;center&lt;/div&gt;</li>   
								<li>&lt;div class="egov-align-right"&gt;right&lt;/div&gt;</li>
							</ul>
						</div>
						
						
						<dl class="egov-deth3">
							<dd>스타일 시트를 이용하여 폰트를 다르게 설정해 줄 수 있다.</dd>
						</dl>
						<div class="egov-deth2">	
							<div class="egov-font-helvetica">This paragraph is in helvetica.</div>
							<div class="egov-font-verdana">This paragraph is in verdana.</div>
							<div class="egov-font-tahoma">This paragraph is in tahoma.</div>							
							<br>
							<ul class="link">
								<li>&lt;div class="egov-font-helvetica"&gt;This paragraph is in helvetica.&lt;/div&gt;</li>
								<li>&lt;div class="egov-font-verdana"&gt;This paragraph is in verdana.&lt;/div&gt;</li>
								<li>&lt;div class="egov-font-tahoma"&gt;This paragraph is in tahoma.&lt;/div&gt;</li>
							</ul>
							
						</div>	
						
						<dl class="egov-deth3">
							<dd>스타일 시트를 이용하여 텍스트의 크기를 다르게 설정해 줄 수 있다.</dd>
						</dl>
						<div class="egov-deth2">
							
							<div class="egov-font-size30">This paragraph is in size 30px.</div>
							<div class="egov-font-size25">This paragraph is in size 25px.</div>
							<div class="egov-font-size15">This paragraph is in size 15px.</div>
                            <br>
                            
							<ul class="link">
								<li>&lt;div class="egov-font-size30"&gt;This paragraph is in size 30px.&lt;/div&gt;</li>
								<li>&lt;div class="egov-font-size25"&gt;This paragraph is in size 25px.&lt;/div&gt;</li>
								<li>&lt;div class="egov-font-size15"&gt;This paragraph is in size 15px.&lt;/div&gt;</li>
							</ul>
						 </div>
						
						<dl class="egov-deth3">
							<dd>스타일 시트를 이용하여 텍스트의 색상을 다르게 설정해 줄 수 있다.</dd>
						</dl>
						<div class="egov-deth2">		
						
							<div class="egov-color-green">This paragraph is in green.</div>
							<div class="egov-color-red">This paragraph is in red.</div>
							<div class="egov-color-blue">This paragraph is in blue.</div>
							
							<ul class="link">
								<li>&lt;div class="egov-color-green"&gt;This paragraph is in green.&lt;/div&gt;</li>
								<li>&lt;div class="egov-color-red"&gt;This paragraph is in red.&lt;/div&gt;</li>
								<li>&lt;div class="egov-color-blue"&gt;This paragraph is in blue.&lt;/div&gt;</li>
							</ul>
						</div>
                    </div>
					
                </div>
                <!-- content-primary end -->
                
                <!-- content-secondary start -->
                <div class="content-secondary"> 
                    <jsp:include page="../../componentMenu.jsp"></jsp:include>
                </div>          
                <!-- content-secondary start -->
                
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

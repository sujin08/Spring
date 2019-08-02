<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : mode-page2.jsp
  Description :  UX List component
  Modification Information

      수정일         수정자           수정내용
    -------------    --------    ---------------------
     2012.08.07    박지민          최초 생성
 
    author   : 모바일 실행환경 개발팀 박지민
    since    : 2011.07.06
--%>
<!DOCTYPE html> 
<html lang="kr"> 
    <head> 
        <title>eGovframe</title> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />    
        
        <!-- eGovFrame Common import -->        
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/cmm/jquery.mobile-1.4.5.css" />" />
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/cmm/EgovMobile-1.4.5.css" />" />
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/jquery-1.11.2.min.js"/>"></script>
		 
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/jquery.mobile-1.4.5.min.js" />"></script>
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/EgovMobile-1.4.5.js" />"></script>
	</head>

    <body> 

        <!-- 모바일 페이지 start -->
        <div data-role="page">

            <!-- header start -->
            <div data-role="header" data-position="inline" data-theme="e">
                <a href="<c:url value="/guide/guide.do"/>" data-icon="home" class="ui-btn-left" data-ajax="false">Home</a>
                <a href="<c:url value="/guide/components/list/changemode.do"/>" data-icon="back" class="ui-btn-right" data-ajax="false">Back</a>
                <h1><img src="<c:url value="/images/egovframework/mbl/rte/guide/h1_logo.png"/>" alt="egovframework" /></h1>
                <div data-role="navbar" role="navigation">
                    <ul>
                        <li><a href="list.do" data-icon="star">Button2에 의해 이동된 페이지입니다.</a></li>                        
                    </ul>
                </div>                  
            </div>  
            <!-- header end -->

			<!-- contents start -->
			<div data-role="content">                
                <a href="<c:url value="list.do" />" data-ajax="false" data-role="button">Back to List Home</a>
                
			</div>
			<!-- contents end -->

            <!-- footer start -->
            <div data-role="footer" data-theme="z">
                 <h4 class="main">Copyright(c)2012 Ministry of Government Administration and Home Affairs.</h4>
            </div>
            <!-- footer end --> 

        </div>
        <!-- 모바일 페이지 end -->

    </body>
    
</html>
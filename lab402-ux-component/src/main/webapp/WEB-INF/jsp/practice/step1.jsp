<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
    <head>
        <title>UX-Component 3.5</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <!-- eGovFrame Common import -->
		<link rel="stylesheet" href="<c:url value='/css/egovframework/mbl/cmm/jquery.mobile-1.4.5.css' />" />
		<link rel="stylesheet" href="<c:url value='/css/egovframework/mbl/cmm/EgovMobile-1.4.5.css' />" />
		<script type="text/javascript" src="<c:url value='/js/egovframework/mbl/cmm/jquery-1.11.2.min.js' />"></script>
		<script type="text/javascript" src="<c:url value='/js/egovframework/mbl/cmm/jquery.mobile-1.4.5.min.js' />"></script>
		<script type="text/javascript" src="<c:url value='/js/egovframework/mbl/cmm/EgovMobile-1.4.5.js' />"></script>

		<!-- CSS for Custom Icon -->
		<link rel="stylesheet" href="<c:url value='/css/egovframework/mbl/customIcon.css'/>"/>
    </head>

    <body>
        <!-- page start -->
        <div data-role="page" data-theme="c">

            <!-- header start -->
            <div data-role="header" data-theme="g">
               	<a href="/start.do" data-ajax="false" data-icon="arrow-l">Back</a>
                <h1>Step1</h1>
				<a href="/practice/step2.do" data-ajax="false" data-icon="arrow-r" class="ui-btn-right">Next</a>
            </div>
            <!-- header end -->

            <!-- content start -->
            <div data-role="content">
				<a href="#">Icon</a>
				<a href="#">Mini</a>
				<a href="#">No Rounded</a>
				<a href="#">Inline</a>
				<a href="#">Only Icon</a>
				<a href="#">Custom Icon</a>
            </div>
            <!-- content end -->

            <!-- footer start -->
            <div data-role="footer" data-theme="g" data-position="fixed" id="fixedFooter">
				<a href="/tutor/step1.do" data-ajax="false" data-icon="info" class="ui-btn-left">Tutor</a>
				<h1>m.egovframe.go.kr</h1>
				<a href="/start.do" data-ajax="false" data-icon="home" class="ui-btn-right">Home</a>
            </div>
            <!-- footer end -->

        </div>
        <!-- page end -->
    </body>
</html>
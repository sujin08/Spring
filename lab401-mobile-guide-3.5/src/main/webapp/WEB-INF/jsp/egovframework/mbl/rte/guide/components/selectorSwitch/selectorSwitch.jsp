<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : selectorSwitch.jsp
  Description :  UX selector/switch component
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
        <title>UX Component - Selector</title> 
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

         <script type="text/javascript" >
			function selectRefresh() {
			    var myselect = $("#group_1"); 
			    myselect[0].selectedIndex = 1; 
			    myselect.selectmenu("refresh");
			}

			function switchRefresh() {
			    var myswitch = $("#group_2"); 
			    myswitch[0].selectedIndex = 0; 
			    myswitch.slider("refresh");
			}   
         </script>           
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
						<h1>Selector</h1>
						<p>Selector의 기본 형식은 OS의 Selector 메뉴 형식에 따라 다르게 나타난다.
							 또한 팝업 형으로 펼침 방식을 변경 할 수 있으며 &lt;option&gt;의 개수에 따라 자동적으로 형태를 바꿔준다.
							 &lt;label&gt;과 같은 행으로 나타 내고 싶을 때는 &lt;fieldcontain&gt;으로 &lt;label&gt; 과 &lt;selector&gt;를 감싸야 하며 &lt;label&gt;의 for 속성과 Selector의 id 속성 값이 동일 해야한다.
						</p>
					</div>
					
					<div class="egov-deth1">
						<h2>기본코드</h2>
						<p>&lt;label&gt;과 같은 행으로 나타 내고 싶을 때는 &lt;fieldcontain&gt;으로 &lt;label&gt;과 &lt;select&gt;를 감싸야 하며 
						      &lt;label&gt; for 속성과 &lt;selector&gt;의 id 속성의 값이 동일 해야한다.</p>
						<div class="egov-deth2">
							<div data-role="fieldcontain">
								<label for="select-choice-1" class="select">선택 하시오:</label>
								<select name="select-choice-1" id="select-choice-1">
									<option value="apple">사과</option>
									<option value="banana">바나나</option>
									<option value="grapes">포도</option>
									<option value="onion">양파</option>
								</select>
			        	    </div>
					 		<ul class="link">
								<li>&lt;div data-role="fieldcontain"&gt;</li>
								<li class="typ1">&lt;label for="select-choice-1" class="select"&gt;선택 하시오:&lt;/label&gt;</li>
								<li class="typ1">&lt;select name="select-choice-1" id="select-choice-1"&gt;</li>
								<li class="typ2">&lt;option value="apple"&gt;사과&lt;/option&gt;</li>
								<li class="typ2">&lt;option value="banana"&gt;바나나&lt;/option&gt;</li>
								<li class="typ2">&lt;option value="grapes"&gt;포도&lt;/option&gt;</li>
								<li class="typ2">&lt;option value="onion"&gt;양파&lt;/option&gt;</li>
								<li class="typ1">&lt;/select&gt;</li>
								<li>&lt;/div&gt;</li>
					 		</ul>
						</div>
					</div>
					
	        		<div class="egov-deth1">
						<h2>모양변경</h2>
						<p>Selector의 모양을 사각으로 만들고 싶다면 &lt;select&gt; Tag에 <strong>data-corners="false"</strong>을 추가한다</p>
						<div class="egov-deth2">
							<div data-role="fieldcontain">
								<label for="select-choice-2" class="select">선택 하시오:</label>
								<select name="select-choice-1" id="select-choice-2" data-corners="false">
									<option value="apple">사과</option>
									<option value="banana">바나나</option>
									<option value="grapes">포도</option>
									<option value="onion">양파</option>
								</select>
			        	    </div>
					 		<ul class="link">
								<li>&lt;div data-role="fieldcontain"&gt;</li>
								<li class="typ1">&lt;label for="select-choice-2" class="select"&gt;선택 하시오:&lt;/label&gt;</li>
								<li class="typ1">&lt;select name="select-choice-1" id="select-choice-2" data-corners="false"&gt;</li>
								<li class="typ2">&lt;option value="apple"&gt;사과&lt;/option&gt;</li>
								<li class="typ2">&lt;option value="banana"&gt;바나나&lt;/option&gt;</li>
								<li class="typ2">&lt;option value="grapes"&gt;포도&lt;/option&gt;</li>
								<li class="typ2">&lt;option value="onion"&gt;양파&lt;/option&gt;</li>
								<li class="typ1">&lt;/select&gt;</li>
								<li>&lt;/div&gt;</li>
					 		</ul>
						</div>						

						<p>Selector의 아이콘을 변경하고 싶다면  &lt;select&gt; Tag에 <strong>data-icon="[icon]"</strong>을 추가한다</p>
						<div class="egov-deth2">
							<div data-role="fieldcontain">
								<label for="select-choice-3" class="select">선택 하시오:</label>
								<select name="select-choice-1" id="select-choice-3"  data-icon="star">
									<option value="apple">사과</option>
									<option value="banana">바나나</option>
									<option value="grapes">포도</option>
									<option value="onion">양파</option>
								</select>
			        	    </div>
					 		<ul class="link">
								<li>&lt;div data-role="fieldcontain"&gt;</li>
								<li class="typ1">&lt;label for="select-choice-3" class="select"&gt;선택 하시오:&lt;/label&gt;</li>
								<li class="typ1">&lt;select name="select-choice-1" id="select-choice-3" data-icon="star"&gt;</li>
								<li class="typ2">&lt;option value="apple"&gt;사과&lt;/option&gt;</li>
								<li class="typ2">&lt;option value="banana"&gt;바나나&lt;/option&gt;</li>
								<li class="typ2">&lt;option value="grapes"&gt;포도&lt;/option&gt;</li>
								<li class="typ2">&lt;option value="onion"&gt;양파&lt;/option&gt;</li>
								<li class="typ1">&lt;/select&gt;</li>
								<li>&lt;/div&gt;</li>
					 		</ul>
						</div>
						
						<p>Selector의 아이콘의 위치를 변경하고 싶다면  &lt;select&gt; Tag에 <strong>data-iconpos="[right, left]"</strong>을 추가한다</p>
						<div class="egov-deth2">
							<div data-role="fieldcontain">
								<label for="select-choice-4" class="select">선택 하시오:</label>
								<select name="select-choice-1" id="select-choice-4"  data-iconpos="left">
									<option value="apple">사과</option>
									<option value="banana">바나나</option>
									<option value="grapes">포도</option>
									<option value="onion">양파</option>
								</select>
			        	    </div>
					 		<ul class="link">
								<li>&lt;div data-role="fieldcontain"&gt;</li>
								<li class="typ1">&lt;label for="select-choice-4" class="select"&gt;선택 하시오:&lt;/label&gt;</li>
								<li class="typ1">&lt;select name="select-choice-1" id="select-choice-4" data-iconpos="left"&gt;</li>
								<li class="typ2">&lt;option value="apple"&gt;사과&lt;/option&gt;</li>
								<li class="typ2">&lt;option value="banana"&gt;바나나&lt;/option&gt;</li>
								<li class="typ2">&lt;option value="grapes"&gt;포도&lt;/option&gt;</li>
								<li class="typ2">&lt;option value="onion"&gt;양파&lt;/option&gt;</li>
								<li class="typ1">&lt;/select&gt;</li>
								<li>&lt;/div&gt;</li>
					 		</ul>
						</div>
						
						<p>Selector의 크기를 작게 하고 싶다면  &lt;select&gt; Tag에 <strong>data-inline="true"</strong>을 추가한다</p>
						<div class="egov-deth2">
							<div data-role="fieldcontain">
								<label for="select-choice-5" class="select">선택 하시오:</label>
								<select name="select-choice-1" id="select-choice-5" data-inline="true">
									<option value="apple">사과</option>
									<option value="banana">바나나</option>
									<option value="grapes">포도</option>
									<option value="onion">양파</option>
								</select>
			        	    </div>
					 		<ul class="link">
								<li>&lt;div data-role="fieldcontain"&gt;</li>
								<li class="typ1">&lt;label for="select-choice-5" class="select"&gt;선택 하시오:&lt;/label&gt;</li>
								<li class="typ1">&lt;select name="select-choice-1" id="select-choice-5" data-inline="true"&gt;</li>
								<li class="typ2">&lt;option value="apple"&gt;사과&lt;/option&gt;</li>
								<li class="typ2">&lt;option value="banana"&gt;바나나&lt;/option&gt;</li>
								<li class="typ2">&lt;option value="grapes"&gt;포도&lt;/option&gt;</li>
								<li class="typ2">&lt;option value="onion"&gt;양파&lt;/option&gt;</li>
								<li class="typ1">&lt;/select&gt;</li>
								<li>&lt;/div&gt;</li>
					 		</ul>
						</div>
						
						<p>Selector의 색상을 변경하고 싶다면  &lt;select&gt; Tag에 <strong>data-theme="a~g"</strong> 를 추가한다</p>
						<div class="egov-deth2">
							<div data-role="fieldcontain">
								<label for="select-choice-6" class="select">선택 하시오:</label>
								<select name="select-choice-1" id="select-choice-6" data-theme="e">
									<option value="apple">사과</option>
									<option value="banana">바나나</option>
									<option value="grapes">포도</option>
									<option value="onion">양파</option>
								</select>
			        	    </div>
					 		<ul class="link">
								<li>&lt;div data-role="fieldcontain"&gt;</li>
								<li class="typ1">&lt;label for="select-choice-6" class="select"&gt;선택 하시오:&lt;/label&gt;</li>
								<li class="typ1">&lt;select name="select-choice-1" id="select-choice-6" data-theme="e"&gt;</li>
								<li class="typ2">&lt;option value="apple"&gt;사과&lt;/option&gt;</li>
								<li class="typ2">&lt;option value="banana"&gt;바나나&lt;/option&gt;</li>
								<li class="typ2">&lt;option value="grapes"&gt;포도&lt;/option&gt;</li>
								<li class="typ2">&lt;option value="onion"&gt;양파&lt;/option&gt;</li>
								<li class="typ1">&lt;/select&gt;</li>
								<li>&lt;/div&gt;</li>
					 		</ul>
						</div>
						
						<p>Selector의 Shadow를 제거하고싶다면  &lt;select&gt; Tag에 <strong>data-shadow="false"</strong>을 추가한다</p>
						<div class="egov-deth2">
							<div data-role="fieldcontain">
								<label for="select-choice-7" class="select">선택 하시오:</label>
								<select name="select-choice-1" id="select-choice-7" data-shadow="false">
									<option value="apple">사과</option>
									<option value="banana">바나나</option>
									<option value="grapes">포도</option>
									<option value="onion">양파</option>
								</select>
			        	    </div>
					 		<ul class="link">
								<li>&lt;div data-role="fieldcontain"&gt;</li>
								<li class="typ1">&lt;label for="select-choice-7" class="select"&gt;선택 하시오:&lt;/label&gt;</li>
								<li class="typ1">&lt;select name="select-choice-1" id="select-choice-7" data-shadow="false"&gt;</li>
								<li class="typ2">&lt;option value="apple"&gt;사과&lt;/option&gt;</li>
								<li class="typ2">&lt;option value="banana"&gt;바나나&lt;/option&gt;</li>
								<li class="typ2">&lt;option value="grapes"&gt;포도&lt;/option&gt;</li>
								<li class="typ2">&lt;option value="onion"&gt;양파&lt;/option&gt;</li>
								<li class="typ1">&lt;/select&gt;</li>
								<li>&lt;/div&gt;</li>
					 		</ul>
						</div>						
																									
					</div>
	               
	               	<div class="egov-deth1">
						<h2>형태 변경</h2>
						<p>Selector option을 그룹화 하여 나타낼 수 있으며 기본코드에 <Strong>&lt;optgroup label=&quot;그룹이름&quot;&gt;</Strong>를 추가하여 
						       그룹화 할  option들을 감싼다.</p>
						<div class="egov-deth2">
						    <div data-role="fieldcontain">
								<label for="select-choice-nc" class="select">선택하시오:</label>
								<select name="select-choice-8" id="select-choice-nc">
									<optgroup label="과일">
										<option value="apple">사과</option>
										<option value="banana">바나나</option>
										<option value="grapes">포도</option>
									</optgroup>
									<optgroup label="야채">
										<option value="onion">양파</option>
										<option value="tomato">토마토</option>
										<option value="carrot" disabled="disabled">당근 (disabled)</option>
										<option value="cabbage">양배추</option>
									</optgroup>
								</select>			
							</div>
							<ul class="link">
								<li>&lt;div data-role=&quot;fieldcontain&quot;&gt;</li>
								<li class="egov-txtIn1">&lt;label for=&quot;select-choice-nc&quot; class=&quot;select&quot;&gt;선택하시오:&lt;/label&gt;</li>
								<li class="egov-txtIn1">&lt;select name=&quot;select-choice-8&quot; id=&quot;select-choice-nc&quot;&gt;</li>
								<li class="egov-txtIn2">&lt;optgroup label=&quot;과일&quot;&gt;</li>
								<li class="egov-txtIn3">&lt;option value=&quot;apple&quot;&gt;사과&lt;/option&gt;</li>
								<li class="egov-txtIn3">&lt;option value=&quot;banana&quot;&gt;바나나&lt;/option&gt;</li>
								<li class="egov-txtIn3">&lt;option value=&quot;grapes&quot;&gt;포도&lt;/option&gt;</li>
								<li class="egov-txtIn2">&lt;/optgroup&gt;</li>
								<li class="egov-txtIn2">&lt;optgroup label=&quot;야채&quot;&gt;</li>
								<li class="egov-txtIn3">&lt;option value=&quot;onion&quot;&gt;양파&lt;/option&gt;</li>
								<li class="egov-txtIn3">&lt;option value=&quot;tomato&quot;&gt;토마토&lt;/option&gt;</li>
								<li class="egov-txtIn3">&lt;option value=&quot;carrot&quot; disabled=&quot;disabled&quot;&gt;당근 (disabled)&lt;/option&gt;</li>
								<li class="egov-txtIn3">&lt;option value=&quot;cabbage&quot;&gt;양배추&lt;/option&gt;</li>
								<li class="egov-txtIn2">&lt;/optgroup&gt;</li>
								<li class="egov-txtIn1">&lt;/select&gt;</li>
								<li>&lt;/div&gt;</li>	
					 		</ul>
						</div>

						<p>Selector를 눌렀을 때 option이 팝업형태와 페이지 형태로 보이도록 한다.
		     	                팝업 효과는  기본코드의 &lt;select name&gt; tag에  <strong>data-native-menu="false"</strong>를 추가하며  option의 길이가 브라우저 넓이를 초과할 시 
		     	                자동으로 팝업 형태로 출력된다.</p>
						<div class="egov-deth2">
					     	<div data-role="fieldcontain">
							<label for="select-choice-custom" class="select">선택하시오 : </label>
							<select name="select-choice-1" id="select-choice-custom" data-native-menu="false">
								<option value="apple">사과</option>
								<option value="banana">바나나</option>
								<option value="grapes">포도</option>
								<option value="onion">양파</option>
							</select>
						    </div>							
							<ul class="link">
								<li>&lt;script&gt;</li>
							    <li>        $(document).on( "pageinit", function() {</li>
          	  					<li>		$.mobile.selectmenu.prototype.options.nativeMenu = false;</li>
          						<li>		});</li>
          						<li>&lt;/script&gt;</li>
          						</br>
					 			<li>&lt;select name=&quot;select-choice-1&quot; id=&quot;select-choice-custom&quot; data-native-menu="false"&gt;</li>
					 		</ul>
						</div>
						<p>또한 Selector의  기본 선택을 위해서는 첫번째 &lt;option&gt; Tag 에 기본 option을 추가한다.</p>
						<div class="egov-deth2">
					     	<div data-role="fieldcontain">
							<label for="select-choice-custom2" class="select">선택하시오 : </label>
							<select name="select-choice-1" id="select-choice-custom2" data-native-menu="false">
								<option></option>
								<option value="apple">사과</option>
								<option value="banana">바나나</option>
								<option value="grapes">포도</option>
								<option value="onion">양파</option>
							</select>							
						    </div>							
							<ul class="link">							  	
								<li>&lt;div data-role=&quot;fieldcontain&quot;&gt;</li>
								<li class="egov-txtIn1">&lt;label for=&quot;select-choice-5&quot; class=&quot;select&quot;&gt;선택하시오 : &lt;/label&gt;</li>
								<li class="egov-txtIn1">&lt;select name=&quot;select-choice-5&quot; id=&quot;select-choice-5&quot; data-native-menu=&quot;false&quot;&gt;</li>
								<li class="egov-txtIn2">&lt;option&gt;&lt;/option&gt;</li>
								<li class="egov-txtIn2">&lt;option value=&quot;apple&quot;&gt;사과&lt;/option&gt;</li>
								<li class="egov-txtIn2">&lt;option value=&quot;banana&quot;&gt;바나나&lt;/option&gt;</li>
								<li class="egov-txtIn2">&lt;option value=&quot;grapes&quot;&gt;포도&lt;/option&gt;</li>
								<li class="egov-txtIn2">&lt;option value=&quot;onion&quot;&gt;양파&lt;/option&gt;</li>
								<li class="egov-txtIn1">&lt;/select&gt;</li>
								<li>&lt;/div&gt;</li>
					 		</ul>
						</div>						
						<p>특정 option을 비활성화하고 싶다면 &lt;option value&gt;에 <strong>disabled="disabled"</strong>를 추가한다</p>
						<div class="egov-deth2">
					     	<div data-role="fieldcontain">
							<label for="select-choice-custom3" class="select">선택하시오 : </label>
							<select name="select-choice-1" id="select-choice-custom3" data-native-menu="false">
								<option>과일</option>
								<option value="apple">사과</option>
								<option value="banana" disabled="disabled">바나나</option>
								<option value="grapes">포도</option>
								<option value="onion">양파</option>
							</select>
						    </div>							
							<ul class="link">							  	
								<li>&lt;option value=&quot;banana&quot; disabled=&quot;disabled&quot;>바나나 &lt;/option&gt;</li>
					 		</ul>
						</div>											
					</div>
					
					<div class="egov-deth1">
						<h2>선택 효과</h2>
						<p>여러개의 속성을 선택 할수 있으며 Select Tag에 <strong>multiple="multiple"</strong>을 추가 한다.
						이 역시 형태 변경과 동일하게 option의 길이가 브라우저 넓이를 초과 할시 자동으로 팝업 형태로 출력된다	</p>
						<div class="egov-deth2">
							<div data-role="fieldcontain">
							<label for="select-choice-9" 	class="select">선택 하시오:</label> 
								<select name="select-choice-9" id="select-choice-9" multiple="multiple" data-native-menu="false">
								<option>과일</option>
								<option value="apple">사과</option>
								<option value="banana">바나나</option>
								<option value="grapes">포도</option>
								<option value="onion">양파</option>
							</select></div>
			                <ul class="link">
								<li>&lt;div data-role=&quot;fieldcontain&quot;&gt;</li>
								<li class="egov-txtIn1">&lt;label for=&quot;select-choice-9&quot; class=&quot;select&quot;&gt;선택 하시오:&lt;/label&gt;</li>
								<li class="egov-txtIn1">&lt;select name=&quot;select-choice-9&quot; id=&quot;select-choice-9&quot; multiple=&quot;multiple&quot; data-native-menu=&quot;false&quot;&gt;</li>
								<li class="egov-txtIn2">&lt;option&gt;과일선택&lt;/option&gt;</li>
								<li class="egov-txtIn2">&lt;option value=&quot;apple&quot;&gt;사과&lt;/option&gt;</li>
								<li class="egov-txtIn2">&lt;option value=&quot;banana&quot;&gt;바나나&lt;/option&gt;</li>
								<li class="egov-txtIn2">&lt;option value=&quot;grapes&quot;&gt;포도&lt;/option&gt;</li>
								<li class="egov-txtIn2">&lt;option value=&quot;onion&quot;&gt;양파&lt;/option&gt;</li>
								<li class="egov-txtIn1">&lt;/select&gt;</li>
								<li>&lt;/div&gt;</li>
							</ul>
						</div>
					</div>

                    <div class="egov-deth1">
                        <h2>새로고침</h2>
                        <p>Selector는 새로고침 기능이 제공된다.
						Javascript에 아래 코드를 추가 한 후 이벤트로 연결 해주면 지정한 option으로 돌아간다.
                        </p>                    
                        <div class="egov-deth2">
                            <div data-role="fieldcontain">
                                <label for="group_1" class="select">선택하시오 : </label>
                                <select name="select-choice-1" id="group_1" data-native-menu="false">
                                    <option>과일</option>
                                    <option value="apple">사과</option>
                                    <option value="banana" >바나나</option>
                                    <option value="grapes">포도</option>
                                    <option value="onion">양파</option>
                                  </select>
                              </div>
                           <a href="javascript:selectRefresh()" data-role="button">refresh</a>                         
                            <ul class="link">
                                 <li>var myselect = $("select#foo");</li>
                                 <li>myselect[0].selectedIndex = 3;</li>
                                 <li>myselect.selectmenu("refresh")</li>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="egov-deth1">
						<h2>그룹 배치</h2>
						<p>&lt;div&gt;내에 <strong>&lt;fieldset data-role="controlgroup"&gt;</strong>으로 설정하게 되면 
						이에 포함된 select inputs는 그룹화되고, default로 세로로 표현된다. 
						버튼들을 가로로 그룹화하여 배치하기 위해서는 &lt;fieldset&gt;에 <strong>data-type="horizontal"</strong>을 추가한다.</p>
						<div class="egov-deth2">							
							<div data-role="fieldcontain">
								<fieldset data-role="controlgroup">																
									<select name="select-choice-11" id="select-choice-11">
										<option value="apple">사과</option>
										<option value="kiwi">키위</option>
										<option value="lemon">레몬</option>										
									</select>
									<select name="select-choice-12" id="select-choice-12">
										<option value="orange">오렌지</option>
										<option value="banana">바나나</option>
										<option value="strawberry">딸기</option>										
									</select>
									<select name="select-choice-13" id="select-choice-13">										
										<option value="fish">생선</option>
										<option value="ginger">생강</option>
										<option value="onion">양파</option>
									</select>
								</fieldset>
			        	    </div>
			        	    
			        	    <ul class="link">
								<li>&lt;div data-role="fieldcontain"&gt;</li>
								<li class="egov-txtIn1">&lt;fieldset data-role="controlgroup"&gt;</li>
								<li class="egov-txtIn2">&lt;select name="select-choice-11" id="select-choice-11"&gt;</li>
								<li class="egov-txtIn3">&lt;option value="apple"&gt;사과&lt;/option&gt;</li>
								<li class="egov-txtIn3">&lt;option value="banana"&gt;키위&lt;/option&gt;</li>
								<li class="egov-txtIn3">&lt;option value="grapes"&gt;레몬&lt;/option&gt;</li>
								<li class="egov-txtIn2">&lt;/select&gt;</li>
								<li class="egov-txtIn2">&lt;select name="select-choice-12" id="select-choice-12"&gt;</li>
								<li class="egov-txtIn3">&lt;option value="orange"&gt;오렌지&lt;/option&gt;</li>
								<li class="egov-txtIn3">&lt;option value="banana"&gt;바나나&lt;/option&gt;</li>
								<li class="egov-txtIn3">&lt;option value="strawberry"&gt;딸기&lt;/option&gt;</li>
								<li class="egov-txtIn2">&lt;/select&gt;</li>
								<li class="egov-txtIn2">&lt;select name="select-choice-13" id="select-choice-13"&gt;</li>
								<li class="egov-txtIn3">&lt;option value="fish"&gt;생선&lt;/option&gt;</li>
								<li class="egov-txtIn3">&lt;option value="ginger"&gt;생강&lt;/option&gt;</li>
								<li class="egov-txtIn3">&lt;option value="onion"&gt;양파&lt;/option&gt;</li>
								<li class="egov-txtIn2">&lt;/select&gt;</li>
								<li class="egov-txtIn1">&lt;/fieldset&gt;</li>								
								<li>&lt;/div&gt;</li>
					 		</ul>			        	    
			        	    
							<div data-role="fieldcontain">								
								<fieldset data-role="controlgroup" data-type="horizontal">																	
									<select name="select-choice-14" id="select-choice-14">
										<option value="apple">사과</option>
										<option value="kiwi">키위</option>
										<option value="lemon">레몬</option>										
									</select>
									<select name="select-choice-15" id="select-choice-15">
										<option value="orange">오렌지</option>
										<option value="banana">바나나</option>
										<option value="strawberry">딸기</option>										
									</select>
									<select name="select-choice-16" id="select-choice-16">										
										<option value="fish">생선</option>
										<option value="ginger">생강</option>
										<option value="onion">양파</option>
									</select>
								</fieldset>
			        	    </div>
			        	    
					 		<ul class="link">
								<li>&lt;div data-role="fieldcontain"&gt;</li>
								<li class="egov-txtIn1">&lt;fieldset data-role="controlgroup" data-type="horizontal"&gt;</li>
								<li class="egov-txtIn2">&lt;select name="select-choice-14" id="select-choice-14"&gt;</li>
								<li class="egov-txtIn3">&lt;option value="apple"&gt;사과&lt;/option&gt;</li>
								<li class="egov-txtIn3">&lt;option value="banana"&gt;키위&lt;/option&gt;</li>
								<li class="egov-txtIn3">&lt;option value="grapes"&gt;레몬&lt;/option&gt;</li>
								<li class="egov-txtIn2">&lt;/select&gt;</li>
								<li class="egov-txtIn2">&lt;select name="select-choice-15" id="select-choice-15"&gt;</li>
								<li class="egov-txtIn3">&lt;option value="orange"&gt;오렌지&lt;/option&gt;</li>
								<li class="egov-txtIn3">&lt;option value="banana"&gt;바나나&lt;/option&gt;</li>
								<li class="egov-txtIn3">&lt;option value="strawberry"&gt;딸기&lt;/option&gt;</li>
								<li class="egov-txtIn2">&lt;/select&gt;</li>
								<li class="egov-txtIn2">&lt;select name="select-choice-16" id="select-choice-16"&gt;</li>
								<li class="egov-txtIn3">&lt;option value="fish"&gt;생선&lt;/option&gt;</li>
								<li class="egov-txtIn3">&lt;option value="ginger"&gt;생강&lt;/option&gt;</li>
								<li class="egov-txtIn3">&lt;option value="onion"&gt;양파&lt;/option&gt;</li>
								<li class="egov-txtIn2">&lt;/select&gt;</li>
								<li class="egov-txtIn1">&lt;/fieldset&gt;</li>								
								<li>&lt;/div&gt;</li>
					 		</ul>
					 		
						</div>
					</div>
					
                    <br>
						
					<div class="egov-tit">
						<h1>Switch</h1>
					</div>
					
					<div class="egov-deth1">
						<h2>기본 코드</h2>
					    <p>Switch는 이진 형식을 따르며 좌우로 선택 하능 하도록 되어있다.
						 &lt;label&gt;과 같은 행으로 나타 내고 싶을 때는 &lt;fieldcontain&gt;으로 &lt;label&gt;과 &lt;slider&gt;를 감싸야 하며 &lt;label&gt;의 for 속성과 &lt;slider&gt;의 id 속성 값이 동일 해야한다.</p>
						<div class="egov-deth2">
							<div data-role="fieldcontain">
								<label for="slider">선택하시오 :</label>
								<select name="slider" id="slider" data-role="slider">
									<option value="off">Off</option>
									<option value="on">On</option>
								</select> 
							</div> 	
			                <ul class="link">
								<li>&lt;div data-role="fieldcontain"&gt;</li>
								<li class="egov-txtIn1">&lt;label for="slider"&gt;선택하시오 :&lt;/label&gt;</li>
								<li class="egov-txtIn1">&lt;select name="slider" id="slider" data-role="slider"&gt;</li>
								<li class="egov-txtIn2">&lt;option value="off"&gt;Off&lt;/option&gt;</li>
								<li class="egov-txtIn2">&lt;option value="on"&gt;On&lt;/option&gt;</li>
								<li class="egov-txtIn1">&lt;/select&gt;</li> 
								<li>&lt;/div&gt;</li> 
			                </ul>
						</div>
					</div>
					
					
					<div class="egov-deth1">
						<h2>색상 변경</h2>
					    <p>색상 변경을 위해서는 <strong>data-theme="a~g" (switch 원형부분 색상)</strong> 및 
					    <strong>data-track-theme="a~g" (switch 트랙 배경 색상)</strong> 로 변경할 수 있다.
					    </p>
						<div class="egov-deth2">
							<div data-role="fieldcontain">
								<label for="slider2">선택하시오 :</label>
								<select name="slider" id="slider2" data-role="slider" data-theme="f" data-track-theme="e">
									<option value="off">Off</option>
									<option value="on">On</option>
								</select> 
							</div> 	
			                <ul class="link">
								<li>&lt;div data-role="fieldcontain"&gt;</li>
								<li class="egov-txtIn1">&lt;label for="slider2"&gt;선택하시오 :&lt;/label&gt;</li>
								<li class="egov-txtIn1">&lt;select name="slider" id="slider2" data-role="slider" data-theme="f" data-track-theme="e"&gt;</li>
								<li class="egov-txtIn2">&lt;option value="off"&gt;Off&lt;/option&gt;</li>
								<li class="egov-txtIn2">&lt;option value="on"&gt;On&lt;/option&gt;</li>
								<li class="egov-txtIn1">&lt;/select&gt;</li> 
								<li>&lt;/div&gt;</li> 
			                </ul>
						</div>
					</div>					
					
					<div class="egov-deth1">
						<h2>새로고침</h2>
						<p>Switch는 새로고침 기능이 제공된다.
							  자바 스크립트에 아래 코드를 추가 한 후 이벤트로 연결 해주면 지정한 option으로 돌아간다.
						</p>					
						<div class="egov-deth2">
                             <div data-role="fieldcontain">
                                 <label for="group_2">선택하시오 :</label>
                                 <select name="slider" id="group_2" data-role="slider">
                                     <option value="off">Off</option>
                                     <option value="on">On</option>
                                 </select> 
                             </div>                              
                            <a href="javascript:switchRefresh()" data-role="button">refresh</a>  						
							<ul class="link">
								 <li>var myswitch = $("select#bar");</li>
								 <li>myswitch[0].selectedIndex = 1;</li>
								 <li>myswitch.selectmenu("refresh")</li>
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
				 <h4 class="main">Copyright(c)2012 Ministry of Government Administration and Home Affairs.</h4>
			</div>
			<!-- footer end --> 
			
		</div>
		<!-- page end -->
	
    </body>

</html>
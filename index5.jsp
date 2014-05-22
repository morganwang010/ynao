
<%--

     Licensed to the Apache Software Foundation (ASF) under one
     or more contributor license agreements.  See the NOTICE file
     distributed with this work for additional information
     regarding copyright ownership.  The ASF licenses this file
     to you under the Apache License, Version 2.0 (the
     "License"); you may not use this file except in compliance
     with the License.  You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

     Unless required by applicable law or agreed to in writing,
     software distributed under the License is distributed on an
     "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
     KIND, either express or implied.  See the License for the
     specific language governing permissions and limitations
     under the License.
     --%><%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:if test="${!empty cookie.lang}">
    <fmt:setLocale value="${cookie.lang.value}" />
</c:if>
<fmt:setBundle basename="resources/messages"/>
<% long now = System.currentTimeMillis(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
          "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>China-VO Cloud</title>
      
    </head>
	

    <body>
 
	<div><jsp:include page="./header.jsp"/></div>
        <!-- CloudStack widget content -->
        
 <jsp:include page="./footer.jsp"/> 
 
        
		
		
			<script type="text/javascript"> 
$(document).ready(function() 
{ 
/*
alert($(window).height()); //浏览器当前窗口可视区域高度 
alert($(document).width()); //浏览器当前窗口文档的高度 
alert($(document.body).height());//浏览器当前窗口文档body的高度 
alert($(document.body).outerHeight(true));//浏览器当前窗口文档body的总高度 包括border padding margin 
alert($(window).width()); //浏览器当前窗口可视区域宽度 
alert($(document).width());//浏览器当前窗口文档对象宽度 
alert($(document.body).width());//浏览器当前窗口文档body的高度 
alert($(document.body).outerWidth(true));//浏览器当前窗口文档body的总宽度 包括border padding margin
*/
var h1=$(document).height();
	if(h1>852)
	{
	//$("#AutoFillToFitFullScreen").css("height", function() {return ($(document).height()-852);});
	//$("#main-area").css("height", function() {return ($(document).height()-(85+35));});
 //$("#cloudStack3-container").css("height", function() {return ($(document).height()-(85+35));});
 	//$("#container").css("height", function() {return ($(document).height()-(85+35));});
	//alert("ok,ok222222!~");
	}
} 
); 
</script> 


    </body>
</html>

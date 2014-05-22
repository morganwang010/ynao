<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:if test="${empty cookie.locale}">
  <fmt:setLocale value="en" />
</c:if>
<c:if test="${!empty cookie.locale}">
  <fmt:setLocale value="${cookie.locale.value}" />
</c:if>
<fmt:setBundle basename="resources/messages"/>
<link href="u/css/vo.css" rel="stylesheet" />
  <script src="lib/jquery.js" type="text/javascript"></script>
<script type="text/javascript" src="u/js/vo.js"></script>
<script type="text/javascript">
function changlanguage(name){
	if (name=="zh_CN"){
		//document.getElementById("languagename").innerHTML='<fmt:message key="label.lang.chinese"/>';
		//document.getElementById("languagemenu").style.display="none";
                $.cookie('locale', name,{path:'/',domain: 'china-vo.org'});
		document.location.reload();
	}else if (name=="en"){
		//document.getElementById("languagename").innerHTML='<fmt:message key="label.lang.english"/>';
		//document.getElementById("languagemenu").style.display="none";
                $.cookie('locale', name,{path:'/',domain: 'china-vo.org'});
		document.location.reload();
	}else{		
		//document.getElementById("languagemenu").style.display="block";
	}   
}

function hidelanguage(){
	//document.getElementById("languagemenu").style.display="none";
}
</script>
<div class="VO-header-fixed VO-header">
  <div class="VO-top">
    <!-- ul class="VO-top-list">
       <li>       
        <button type="button" class="btn btn-danger" onclick="changlanguage('c');">                                   
	<div id="languagename" style="float:left">
	<c:choose> 
					   <c:when test="${cookie.locale.value=='zh_CN'}">  <fmt:message key="label.lang.chinese"/>    </c:when>
                       <c:otherwise><fmt:message key="label.lang.english"/></c:otherwise>
                       </c:choose></div>
                        <span class="caret"></span>
                </button>                       
    <ul class="dropdown-menu" id="languagemenu">
					<li><a href="javascript:changlanguage('zh_CN')"><fmt:message key="label.lang.chinese"/></a></li>
					<li><a href="javascript:changlanguage('en')"><fmt:message key="label.lang.english"/></a></li>
	</ul>
 </li>
  	   <li> <a href="http://www.escience.cn/"><fmt:message key="label.index.header.scienceonline"/></a> </li>
      <li> <div id="userlogdiv"><a href="#"><fmt:message key="label.logout"/></a></div> </li>
      <li><a href="http://astrocloud.china-vo.org/usercenter" target="_blank"><div id="userinfoname">admin</div></a></li>
    </ul-->
    	<ol class="VO-bread-list">		
			<li><a href="http://astrocloud.china-vo.org"><fmt:message key="label.index.header.home" /></a></li>
						
			<li> > </li>
					
			<li><fmt:message key="label.index.header.cloud"/></li>
					
		</ol>
    <ul class="VO-top-list">
			<li>
					<c:choose> 
					   <c:when test="${cookie.locale.value=='zh_CN'}"> <a href="javascript:changlanguage('en')">English</a>  </c:when>
                       <c:otherwise><a href="javascript:changlanguage('zh_CN')"><fmt:message key="label.lang.chinese"/></a></c:otherwise>
                    </c:choose>
			</li>
			<li><a href="http://www.sciencecloud.cn/"><fmt:message key="label.index.header.scienceonline"/></a></li>						
			<li><div id="userlogdiv"><a href="#"><fmt:message key="label.logout"/></a></div></li>		
			<li><a href="http://cloud.china-vo.org/client/"><fmt:message key="label.index.header.dashboard"/></a></li>
			<li><fmt:message key="label.index.header.welcome" /></li>
			<li><a href="http://astrocloud.china-vo.org/usercenter" target="_blank"><div id="userinfoname">admin</div></a></li>			
		</ul>   
    
  </div>
  
   <div class="VO-nav">
		<a href="http://astrocloud.china-vo.org/"><img src="./u/img/topNavLogo.png"
			style="height: 60px; width: 300px; float: left;"></a>
		<ul class="VO-nav-list">
			<li><a href="http://telescope.china-vo.org/cloud"><fmt:message key="label.index.header.cloud"/></a></li>
			<li><a href="http://telescope.china-vo.org/software"><fmt:message
						key="label.index.header.tools" /></a></li>
			<li><a href="http://hpc.china-vo.org/hpcinfo"><fmt:message
						key="label.index.header.hpc" /></a></li>
			<li><a href="http://explore.china-vo.org"><fmt:message
						key="label.index.header.astrodata" /></a></li>
			<li><a href="http://telescope.china-vo.org"><fmt:message
						key="label.index.header.telescope" /></a></li>
		</ul>
	</div>
</div>

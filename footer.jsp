<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:if test="${empty cookie.locale}">
  <fmt:setLocale value="en" />
</c:if>

<c:if test="${!empty cookie.locale}">
  <fmt:setLocale value="${cookie.locale.value}" />
</c:if>
<fmt:setBundle basename="resources/messages"/>
<div class="VO-footer">
  <!-- ul class="VO-footer-list">
    <li> <a href="faq.html"><fmt:message key="label.index.footer.faq"/></a> </li>
    <li> <a href="analytics.html"><fmt:message key="label.index.footer.access"/> | </a> </li>
    <li> <a href="contact.html"><fmt:message key="label.index.footer.contact"/> | </a> </li>
    <li> <a href="aboutus.html"><fmt:message key="label.index.footer.about"/> | </a> </li>
    <li><fmt:message key="label.index.footer.support"/> | </li>
    <li></li>
    <li></li>
    <li></li>
  </ul> -->
    <ul class="VO-footer-list">
     <li> <a href="http://astrocloud.china-vo.org/s/static/tour/tourMain.html"><fmt:message key="label.index.footer.help"/></a> </li>
    <li> <a href="http://astrocloud.china-vo.org/s/static/statistics.html"><fmt:message key="label.index.footer.access"/></a> | </li>
    <li> <a href="http://astrocloud.china-vo.org/s/static/contact.html"><fmt:message key="label.index.footer.contact"/></a> | </li>
    <li> <a href="http://astrocloud.china-vo.org/s/static/aboutUs.html"><fmt:message key="label.index.footer.about"/> </a> | </li>
    <li><fmt:message key="label.index.footer.record"/> | </li>
    <li><fmt:message key="label.index.footer.copyright"/> | </li>
  </ul>
</div>
<!-- div id="footer" class="container">
    <p><fmt:message key="label.index.footer.contact"/> | <fmt:message key="label.index.footer.access"/> | <fmt:message key="label.index.footer.about"/> | <fmt:message key="label.index.footer.faq"/></p>
    <p><fmt:message key="label.index.footer.copyright"/></p>
    <p><fmt:message key="label.index.footer.support"/></p>
</div-->

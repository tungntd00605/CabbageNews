<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.cabbage.entity.Category" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: xuanhung
  Date: 2019-07-30
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--Include header admin--%>
<jsp:include page="/admin/include/header.jsp"/>

<%--Include left-menu admin--%>
<jsp:include page="/admin/include/left-menu.jsp"/>


<%--include nave bar menu--%>
<jsp:include page="/admin/include/navbar-menu.jsp"/>

<div class="right-panel">
    <div>
        <jsp:include page="/admin/include/left-menu.jsp"/>
        <div class="main-content">
            <h1>Article list</h1>
            <ul>
                <c:forEach var="article" items="${articles}">
                    <li><c:out value="${article.title}"/> - <c:out value="${article.category.get().name}"/> - <c:out
                            value="${article.category.get().id}"/></li>
                </c:forEach>
            </ul>
        </div>
    </div>
</div>
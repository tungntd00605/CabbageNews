    <%@ page import="static com.googlecode.objectify.ObjectifyService.ofy" %>
        <%@ page import="com.quanganh9x.lettuce.entity.Category" %>

        <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>

        <%
            request.setAttribute("categories", ofy().load().type(Category.class).list());
        %>

    <nav id="main_menu" class="p_menu">
    <a class="active" href="/"><i class="ic-m-home-img"></i></a>
    <c:forEach var="c" items="${categories}">
        <a id="cat${c.id}" href="/category?catId=${c.id}" title="${c.name}"><c:out value="${c.name}"/></a>
    </c:forEach>
    </nav>
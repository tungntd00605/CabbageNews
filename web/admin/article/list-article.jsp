<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/admin/include/header.jsp"/>
<%--Include left-menu admin--%>
<jsp:include page="/admin/include/left-menu.jsp"/>
<%--include nave bar menu--%>
<jsp:include page="/admin/include/navbar-menu.jsp"/>
<div id="right-panel" class="right-panel">

    <!-- Content -->
    <div class="content">
        <div class="col-lg-7">
            <div class="card">
                <div class="card-header">
                    <strong class="card-title">article-List</strong>
                </div>
                <div class="card-body">
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Title</th>
                            <th scope="col">Description</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="article" items="${article}">
                            <tr>
                                <td>#<c:out value="${article.id}"></c:out></td>
                                <td><c:out value="${article.title}"></c:out></td>
                                <td><c:out value="${article.description}"></c:out></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- /.content -->
    <div class="clearfix"></div>
</div>
<jsp:include page="/admin/include/footer.jsp"/>

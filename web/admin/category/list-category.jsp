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
                    <strong class="card-title">Categories</strong>
                </div>
                <div class="card-body">
                    <table class="table">
                        <tbody>
                        <c:forEach var="category" items="${category}">
                            <tr>
                                <td>#<c:out value="${category.id}"></c:out></td>
                                <td><c:out value="${category.name}"></c:out></td>
                                <td><c:out value="${category.description}"></c:out></td>

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

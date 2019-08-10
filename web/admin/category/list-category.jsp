<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/admin/include/header.jsp"/>
<%--Include left-menu admin--%>
<jsp:include page="/admin/include/left-menu.jsp"/>
<%--include nave bar menu--%>
<jsp:include page="/admin/include/navbar-menu.jsp"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.css">
<div id="right-panel" class="right-panel">

    <!-- Content -->
    <div class="content">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header">
                    <strong class="card-title">Categories</strong>
                </div>
                <div class="form-inline col-md-6" style="margin-top: 10px">
                <label style="margin-right: 10px">Limit:</label>
                <select id="selectLimit" class="form-control col-3">
                    <option value="10" ${limit == 10 ? "selected" : "" }> 10</option>
                    <option value="25" ${limit == 25 ? "selected" : "" }> 25</option>
                    <option value="50" ${limit == 50 ? "selected" : "" }> 50</option>
                    <option value="100" ${limit == 100 ? "selected" : "" }> 100</option>
                </select>
            </div>
                <div class="card-body">
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Name</th>
                            <th scope="col">Description</th>
                            <th scope="col">Option</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="category" items="${category}">
                            <tr>
                                <td>#<c:out value="${category.id}"></c:out></td>
                                <td><c:out value="${category.name}"></c:out></td>
                                <td><c:out value="${category.description}"></c:out></td>
                                <td>
                                    <a class="btn btn-outline-info btn-edit" href="/admin/category/edit-category?id=<c:out value="${category.id}"/>"> <i class="fas fa-edit"></i></a>
                                    <a class="btn btn-outline-danger btn-delete" href="/admin/category/delete-category?id=<c:out value="${category.id}"/>> <i class="fas fa-trash-alt"></i></button>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <nav aria-label="Page navigation example">
                        <ul class="pagination justify-content-center">
                            <c:choose>
                                <c:when test = "${currentPage > 1}">
                                    <li class="page-item"><a class="page-link" href="/admin/category/list?page=${currentPage-1}&limit=${limit}">Previous</a></li>
                                </c:when>

                                <c:otherwise>
                                    <li class="page-item disabled"><a class="page-link" href="">Previous</a></li>
                                </c:otherwise>
                            </c:choose>

                            <c:if test = "${currentPage > 2}">
                                <li class="page-item"><a class="page-link" href="/admin/category/list?page=${currentPage-2}&limit=${limit}">${currentPage-2}</a></li>
                            </c:if>

                            <c:if test = "${currentPage > 1}">
                                <li class="page-item"><a class="page-link" href="/admin/category/list?page=${currentPage-1}&limit=${limit}">${currentPage-1}</a></li>
                            </c:if>

                            <li class="page-item active"><a class="page-link" href="/admin/category/list?page=${currentPage}&limit=${limit}">${currentPage}</a></li>

                            <c:if test = "${totalPages-currentPage > 0}">
                                <li class="page-item"><a class="page-link" href="/admin/category/list?page=${currentPage+1}&limit=${limit}">${currentPage+1}</a></li>
                            </c:if>

                            <c:if test = "${totalPages-currentPage > 1}">
                                <li class="page-item"><a class="page-link" href="/admin/category/list?page=${currentPage+2}&limit=${limit}">${currentPage+2}</a></li>
                            </c:if>

                            <c:choose>
                                <c:when test = "${currentPage<totalPages}">
                                    <li class="page-item"><a class="page-link" href="/admin/category/list?page=${currentPage+1}&limit=${limit}">Next</a></li>
                                </c:when>

                                <c:otherwise>
                                    <li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
                                </c:otherwise>
                            </c:choose>
                        </ul>
                    </nav>

                </div>
            </div>
        </div>
    </div>
    <!-- /.content -->
    <div class="clearfix"></div>
</div>
<jsp:include page="/admin/include/footer.jsp"/>
<script>
    $(document).ready(function () {
        $("#selectLimit").change(function () {
            window.location.href = "/admin/category/list?limit=" + $(this).val()
        })
    })
</script>

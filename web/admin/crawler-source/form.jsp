<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/assets/bootstrap-4.3.1-dist/css/bootstrap.min.css">
    <script src="/assets/js/jquery-3.4.1.min.js"></script>
    <script src="/assets/js/popper.min.js"></script>
    <script src="/assets/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h1>Add crawler source</h1>
    <form action="/admin/crawler-source/add" method="post">
        <div class="form-group">
            <label>Source url</label>
            <input type="text" name="url" class="form-control">
        </div>
        <div class="form-group">
            <label>Link selector</label>
            <input type="text" name="linkSelector" class="form-control">
        </div>
        <div class="form-group">
            <label>Link Limit</label>
            <input type="text" name="linkLimit" class="form-control">
        </div>
        <div class="form-group">
            <label>Title Selector</label>
            <input type="text" name="titleSelector" class="form-control">
        </div>
        <div class="form-group">
            <label>Description Selector</label>
            <input type="text" name="descriptionSelector" class="form-control">
        </div>
        <div class="form-group">
            <label>Content Selector</label>
            <input type="text" name="contentSelector" class="form-control">
        </div>
        <div class="form-group">
            <label>Author Selector</label>
            <input type="text" name="authorSelector" class="form-control">
        </div>
        <%--<div class="form-group">--%>
            <%--<label>Thumbnail Selector</label>--%>
            <%--<input type="text" name="thumbnailSelector" class="form-control">--%>
        <%--</div>--%>
        <div class="form-group">
            <label>Category</label>
            <select name="categoryId">
                <c:forEach var="category" items="${categories}">
                    <option value="${category.id}"><c:out value="${category.name}"/></option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <input type="submit" class="btn btn-primary" value="Save"/>
            <input type="reset" class="btn btn-primary" value="Reset"/>
        </div>
    </form>
</div>
</body>
</html>

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


<title>Article form</title>

<%--Include header admin--%>
<jsp:include page="/admin/include/header.jsp"/>

<%--Include left-menu admin--%>
<jsp:include page="/admin/include/left-menu.jsp"/>


<%--include nave bar menu--%>
<jsp:include page="/admin/include/navbar-menu.jsp"/>

<div class="right-panel">
    <div class="col-lg-9" style="margin-left: 150px;">
        <div class="card">
            <div class="card-header">
                <strong>Article form</strong>
            </div>
            <div class="card-body card-block">
                <form action="/admin/article/add" method="post" class="form-horizontal">

                    <div class="row form-group">
                        <div class="col col-md-3">
                            <label class=" form-control-label">URL</label>
                        </div>
                        <div class="col-12 col-md-9">
                            <input type="text" name="url" placeholder="Text" class="form-control">
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-3">
                            <label class=" form-control-label">Category</label>
                        </div>
                        <div class="col-12 col-md-9">
                            <select name="categoryId" class="col col-md-6">
                                <c:forEach var="cate" items="${categories}">
                                    <option value="${cate.id}"><c:out value="${cate.name}"/></option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-3"><label class=" form-control-label">Title</label></div>
                        <div class="col-12 col-md-9"><input type="text" name="title" placeholder="Enter Title"
                                                            class="form-control">
                        </div>
                    </div>

                    <div class="row form-group">
                        <div class="col col-md-3"><label class=" form-control-label">Description</label></div>
                        <div class="col-12 col-md-9"><input type="text" name="description" placeholder="Enter Description"
                                                            class="form-control">
                        </div>
                    </div>

                    <div class="row form-group">
                        <div class="col col-md-3"><label class=" form-control-label">Content</label></div>
                        <div class="col-12 col-md-9">
                            <textarea class="col-lg-12" name="content" id="article-editor" placeholder="Content....."></textarea>
                        </div>

                    </div>


                    <div class="row form-group">
                        <div class="col col-md-3"><label for="file-input" class=" form-control-label">Thumbnail</label>
                        </div>
                        <div class="col-12 col-md-9"><input type="file" id="file-input" name="file-input"
                                                            class="form-control-file"></div>
                    </div>
                    <div>
                        <button type="submit" class="btn btn-primary btn-sm">
                            <i class="fa fa-dot-circle-o"></i> Submit
                        </button>
                        <button type="reset" class="btn btn-warning btn-sm">
                            <i class="fa fa-ban"></i> Reset
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <jsp:include page="/admin/include/footer.jsp"/>
</div>

<jsp:include page="/admin/include/script-footer.jsp"/>
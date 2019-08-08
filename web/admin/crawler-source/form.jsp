<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


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
                <strong>Add Crawler Source</strong>
            </div>
            <div class="card-body card-block">
                <form action="/admin/crawler-source/add" method="post" enctype="multipart/form-data"
                      class="form-horizontal">

                    <div class="row form-group">
                        <div class="col col-md-3"><label class=" form-control-label">Source url</label>
                        </div>
                        <div class="col-12 col-md-9"><input type="text" name="url"
                                                            placeholder="Source url" class="form-control">
                        </div>
                    </div>

                    <div class="row form-group">
                        <div class="col col-md-3"><label class=" form-control-label">Link selector</label>
                        </div>
                        <div class="col-12 col-md-9"><input type="text" name="linkSelector"
                                                            placeholder="Link selector" class="form-control">
                        </div>
                    </div>

                    <div class="row form-group">
                        <div class="col col-md-3"><label class=" form-control-label">Link Limit</label>
                        </div>
                        <div class="col-12 col-md-9"><input type="text" name="linkLimit"
                                                            placeholder="Link Limit" class="form-control">
                        </div>
                    </div>

                    <div class="row form-group">
                        <div class="col col-md-3"><label class=" form-control-label">Title Selector</label>
                        </div>
                        <div class="col-12 col-md-9"><input type="text" name="titleSelector"
                                                            placeholder="Title Selector" class="form-control">
                        </div>
                    </div>

                    <div class="row form-group">
                        <div class="col col-md-3"><label class=" form-control-label">Description Selector</label>
                        </div>
                        <div class="col-12 col-md-9"><input type="text" name="descriptionSelector"
                                                            placeholder="Description Selector" class="form-control">
                        </div>
                    </div>

                    <div class="row form-group">
                        <div class="col col-md-3"><label class=" form-control-label">Content Selector</label>
                        </div>
                        <div class="col-12 col-md-9"><input type="text" name="contentSelector"
                                                            placeholder="Content Selector" class="form-control">
                        </div>
                    </div>

                    <div class="row form-group">
                        <div class="col col-md-3"><label class=" form-control-label">Category</label>
                        </div>
                        <div class="col-12 col-md-9">
                            <select name="categoryId" class="col col-md-3">
                                <c:forEach var="category" items="${categories}">
                                    <option value="${category.id}"><c:out value="${category.name}"/></option>
                                </c:forEach>
                            </select>
                        </div>
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
</div>


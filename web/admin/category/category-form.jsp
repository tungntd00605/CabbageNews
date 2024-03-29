<%--
  Created by IntelliJ IDEA.
  User: xuanhung
  Date: 2019-07-30
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Category form</title>--%>
<%--</head>--%>
<%--<body>--%>

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
                <strong>Category form</strong>
            </div>
            <div class="card-body card-block" style="height: 400px;">
                <form action="/admin/category/add" method="post" class="form-horizontal">

                    <div class="row form-group">
                        <div class="col col-md-3"><label class=" form-control-label">Category Name</label>
                        </div>
                        <div class="col-12 col-md-9">
                            <input type="text" name="name" placeholder="Enter category name" class="form-control">
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-3"><label class=" form-control-label">Description</label></div>
                        <div class="col-12 col-md-9">
                            <input type="text" name="description" placeholder="Enter Description" class="form-control">
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
    <jsp:include page="/admin/include/footer.jsp"/>
    <jsp:include page="/admin/include/script-footer.jsp"/>
</div>



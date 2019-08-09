
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Left Panel -->
<aside id="left-panel" class="left-panel">
    <nav class="navbar navbar-expand-sm navbar-default">
        <div id="main-menu" class="main-menu collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active">
                    <a href="/admin/include/index.jsp"><i class="menu-icon fa fa-laptop"></i>Dashboard </a>
                </li>
                <%--Quản Lý Article--%>
                <li class="menu-title">Article</li><!-- /.menu-title -->
                <li class="#">
                    <a href="/admin/article/add" class="#" aria-expanded="false"><i
                            class="menu-icon fa fa-plus"></i>Create Article</a>
                </li>
                <li class="#">
                    <a href="/admin/article/special-content" class="#" aria-expanded="false"><i
                            class="menu-icon fa fa-plus"></i>Special Content</a>
                </li>
                <li class="#">
                    <a href="/admin/article/list" aria-haspopup="true" aria-expanded="false"><i class="menu-icon fa fa-list-ul"></i>List
                        Article</a>
                </li>

                <%--Quản Lý Category--%>
                <li class="menu-title">Category</li><!-- /.menu-title -->
                <li class="#">
                    <a href="/admin/category/add" class="#" aria-expanded="false"><i
                            class="menu-icon fa fa-plus"></i>Create Category</a>
                </li>
                <li class="#">
                    <a href="/admin/category/list" aria-haspopup="true" aria-expanded="false"><i class="menu-icon fa fa-list-ul"></i>List
                        Category</a>
                </li>

                <%--Quản Lý Crawler Source--%>
                <li class="menu-title">Crawler Source</li><!-- /.menu-title -->
                <li class="#">
                    <a href="/admin/crawler-source/add" class="#" aria-expanded="false"><i
                            class="menu-icon fa fa-plus"></i>Create Crawler Source</a>
                </li>
                <li class="#">
                    <a href="/admin/crawler-source/list" aria-haspopup="true" aria-expanded="false"><i class="menu-icon fa fa-list-ul"></i>List
                        Crawler Source</a>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </nav>
</aside>
<!-- /#left-panel -->

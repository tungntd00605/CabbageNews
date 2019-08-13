<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html lang="vi" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <c:import url="layout/header.jsp" charEncoding="UTF-8">
        <c:param name="title" value="LettuceNews - ${category.name}"/>
    </c:import>
</head>
<body data-checkpage="1">
<c:import url="layout/taskbar.jsp" charEncoding="UTF-8"/>
<!-- end taskbar -->
<header class="p_header">
    <div class="logo_vne container clearfix">
        <a class="left logo logo_svg" href="/"><img src="https://s.vnecdn.net/vnexpress/restruct/i/v76/graphics/img_logo_vne_web.svg" alt="VnExpress"></a>
    </div>
    <!--end logo_vne-->
</header>
<header id="header" class="section m_header">
    <div class="inner_section">
        <div class="btn_control_menu" data-component-runtime="js" data-component-function="initLayout" data-component-input="{}"><i class="ic ic-menu"></i></div>
        <a class="img_logo" href="/"><img src="https://s.vnecdn.net/vnexpress/restruct/i/v76/graphics/logo.png" alt="VnExpress"></a>
        <a href="https://video.vnexpress.net" class="block_icon_menu_header camera"><i class="ic ic-m-video"></i></a>
        <section data-component-type="weather" data-component-click="ga('te.send', 'event', 'Home', 'Click', 'Box Thời tiết');"> </section>
        <!--My VNE taskbar-->
        <div id="myvne_taskbar" style="display: none;"></div>
        <!--My VNE taskbar-->
    </div>
</header> <!--end header-->
<!--main_menu menu PC-->
<!-- Start Menu -->
<c:import url="layout/nav.jsp"/>
<!-- End Menu -->
<!-- Start SUB MENU -->
<section class="cat_header clearfix">
    <span class="btn_sub_menu active"><i class="ic ic-caret-2-down"></i></span>
    <div class="right">
        <span class="top-contact"><i class="ic ic-phone"></i> <strong>083.888.0123</strong> (HN) - <strong>082.233.3555</strong> (TP HCM)</span>
        <a href="https://vnexpress.net/lien-he-quang-cao" title="quảng cáo" class="box_ad">
            <i class="ic ic-ad"></i>090 293 9644
        </a>
    </div>
    <ul class="breadcrumb left">
        <li class="start">
            <h4>
                <a href="<% out.println(request.getRequestURL().toString()); %>">${category.name}</a>
            </h4>
        </li>
    </ul>
</section>
<!--End main_menu-->
<!-- Breadcrumb -->
<!--End Breadcrumb-->
<!-- CONTENT  -->
<section class="featured container clearfix">
    <article>
        <div class="thumb_big">
            <a class="thumb thumb_5x3" href="/article?arcId=${hot.id}" title="${hot.title}">
                <img style="max-width:500px;max-height:300px;" src="${hot.thumbnail}" class="vne_lazy_image" data-original="${hot.thumbnail}" alt="${hot.title}">
            </a>
        </div>
        <h1 class="title_news">
            <a href="/article?arcId=${hot.id}" title="${hot.title}">
                ${hot.title}</a>
        </h1>
        <p class="description">
            <c:choose>
                <c:when test="${hot.description != null && hot.description.length() > 100}">
                    ${hot.description.substring(0, 100)}
                </c:when>
                <c:otherwise>
                    ${hot.description}
                </c:otherwise>
            </c:choose>
        </p>
    </article>
    <div class="sub_featured ">
        <div class="scroll-wrapper scrollbar-inner" style="position: relative;">
            <ul id="list_sub_featured" class="scrollbar-inner scroll-content scroll-scrolly_visible" data-component-runtime="js" data-component-function="scrollBox" data-component-input="{&quot;element&quot;:&quot;.scrollbar-inner&quot;}" style="height: auto; margin-bottom: 0px; margin-right: 0px; max-height: 417px;">
                <c:forEach var="articl" items="${featured}">
                <li>
                    <h4 class="title-news">
                    <a title="${articl.title}" href="/article?arcId=${articl.id}">
                            ${articl.title}</a>
                    </h4>
                    <p class="description">
                        <c:choose>
                            <c:when test="${articl.description != null && articl.description.length() > 100}">
                                ${articl.description.substring(0, 100)}
                            </c:when>
                            <c:otherwise>
                                ${articl.description}
                            </c:otherwise>
                        </c:choose>
                    </p>

                </li>
            </c:forEach>
        </ul>
        </div>
    </div>
</section>
<!--End featured-->
<!--content-->
<section class="container">
    <section class="sidebar_home_1">
        <c:forEach var="article" items="${articles}">
            <article class="list_news">
                <h4 class="title_news">
                    <a href="/article?arcId=${article.id}" title="${article.title}">
                            ${article.title}</a>
                </h4>
                <div class="thumb_art">
                    <a class="thumb thumb_5x3" href="/article?arcId=${article.id}" title="${article.title}">
                        <img style="max-width:140px;max-height:84px" src="${article.thumbnail}" class="vne_lazy_image" data-original="${article.thumbnail}" alt="${article.title}">
                    </a>
                </div>
                <p class="description">
                    <c:choose>
                        <c:when test="${article.description != null && article.description.length() > 100}">
                            ${article.description.substring(0, 100)}
                        </c:when>
                        <c:otherwise>
                            ${article.description}
                        </c:otherwise>
                    </c:choose>
                </p>
            </article>
        </c:forEach>
    </section>
    <section class="sidebar_2">
        <a href="https://diemthi.vnexpress.net/diem-chuan" title="Điểm chuẩn 2019" style="width: 100%;float: left;position: relative;color: #fff;font-weight: bold;font-size: 16px;margin-bottom: 10px;">
            <img src="https://s.vnecdn.net/vnexpress/restruct/i/v48/banner/diemchuan2_300x120.jpg" alt="Điểm chuẩn 2019" style="float: left;">
            <h2 style="position: absolute;top: 30px;left: 20px;font-size: 24px;display: block;text-transform: uppercase;line-height: 1.3;">Điểm chuẩn 2019</h2>
        </a>
        <c:forEach var="category" items="${categories}">
            <section class="box_category clearfix list_title_right" id="box${category.id}">
                <hgroup class="title_box_category">
                    <h2><a title="${category.name}" href="/category?catId=${category.name}" class="first">${category.name}</a></h2>
                </hgroup>
            </section>
        </c:forEach>
        <script>
            $(document).ready(() => {
                <c:forEach var="category" items="${categories}">
                <c:out value="ahihi(${category.id});"/>
                </c:forEach>
            });
        </script>
    </section>
</section>
<!--end content-->
<!-- END CONTENT  -->
<c:import url="layout/footer.jsp" charEncoding="UTF-8"/>
</body>
</html>

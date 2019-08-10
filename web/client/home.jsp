<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <c:import url="layout/header.jsp" charEncoding="UTF-8">
        <c:param name="title" value="LettuceNews - Báo được nhiều người crawl nhất"/>
    </c:import>
</head>
<body data-checkpage="1">
<div id="myvne_taskbar" class="myvne_taskbar_v2">
    <div class="myvne_container">
        <ul class="myvne_contact">
            <li style="white-space: nowrap;"><span class="timer">Thứ bảy, 10/8/2019, 10:53 (GMT+7)</span></li>
            <li><a href="https://vnexpress.net/24h-qua" title="">24h qua</a></li>
            <li><a href="https://vnexpress.net/rss">RSS</a></li>
            <li>
                <div class="item_social" style="margin-top:6px;" id="myvne_fb_like">
                    <iframe src="//www.facebook.com/plugins/like.php?locale=en_US&amp;href=https://www.facebook.com/congdongvnexpress&amp;width&amp;layout=button&amp;action=like&amp;show_faces=false&amp;share=false&amp;height=21&amp;appId=283547481836738"
                            scrolling="no" frameborder="0"
                            style="border:none; overflow:hidden; height:21px; width:50px;"
                            allowtransparency="true"></iframe>
                </div>
                <div class="item_social" style="margin-top:6px;" id="myvne_fb_twitter">
                    <iframe src="//platform.twitter.com/widgets/follow_button.html?screen_name=VnEnews"
                            style="width: 60px; height: 20px;" allowtransparency="true" frameborder="0"
                            scrolling="no"></iframe>
                </div>
            </li>
        </ul>
        <ul class="myvne_form_log">
            <li class="block_search_web">
                <div class="left">
                    <div id="search"><input type="text" class="txt_input" id="inp_keyword" name="q"
                                            placeholder="Tìm kiếm">
                        <button type="submit" class="icon_seach_web"><i class="ic ic-search"></i></button>
                    </div>
                </div>
            </li>
            <li class="myvne_user"><a href="javascript:void(0);" class="myvne_link myvne_login_button">Đăng nhập</a> <a
                    href="javascript:void(0);" class="myvne_icon myvne_login_button"><i class="ico ico_user_myvne"></i></a>
            </li>
            <li class="myvne_notification"><a class="myvne_link myvne_register_button myvne_link_create"
                                              href="javascript:void(0);" id="myvne_register_button">Tạo tài khoản</a>
            </li>
        </ul>
        <div class="clear"></div>
    </div>
</div>
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
    <div class="right">
        <span class="top-contact"><i class="ic ic-phone"></i> <strong>083.888.0123</strong> (HN) - <strong>082.233.3555</strong> (TP HCM)</span>
        <a href="https://vnexpress.net/lien-he-quang-cao" title="quảng cáo" class="box_ad">
            <i class="ic ic-ad"></i>090 293 9644
        </a>
    </div>
    <ul class="breadcrumb left">
        <li class="start">
            <h4>
                <a href="javascript:void(0);" title="Trang nhất">Trang nhất</a>
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
                <img src="${hot.thumbnail}" alt="${hot.title}">
            </a>
        </div>
        <h1 class="title_news">
            <a href="/article?arcId=${hot.id}" title="${hot.title}">
                ${hot.title} </a>
        </h1>
        <p class="description">
            ${hot.description}</p>
    </article>
    <div class="sub_featured ">
        <div class="scroll-wrapper scrollbar-inner" style="position: relative;">
            <ul id="list_sub_featured" class="scrollbar-inner scroll-content scroll-scrolly_visible" data-component-runtime="js" data-component-function="scrollBox" data-component-input="{&quot;element&quot;:&quot;.scrollbar-inner&quot;}" style="height: auto; margin-bottom: 0px; margin-right: 0px; max-height: 417px;">
            <c:forEach var="article" items="${featured}">
            <li>
                <a title="${article.title}" href="/article?arcId=${article.id}">
                        ${article.title}</a>
            </li>
            </c:forEach>
            </ul>
        </div>
    </div>
</section>
<!--end featured-->
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
    <!--End sidebar_1-->
    <section class="sidebar_home_2 sidebar_flexible">
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
    <!--End sidebar_2-->
    <!--sidebar_3-->
    <section class="sidebar_home_3">
    </section>
    <!--End sidebar_3-->
</section>
<!--end content-->
<c:import url="layout/footer.jsp" charEncoding="UTF-8"/>
</body>
</html>

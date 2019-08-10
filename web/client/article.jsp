<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: quanganh9x
  Date: 2019-08-08
  Time: 19:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="vi" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <c:import url="layout/header.jsp" charEncoding="UTF-8">
        <c:param name="title" value="LettuceNews - ${article.title}"/>
    </c:import>
    <link rel="stylesheet" type="text/css" href="https://s.vnecdn.net/vnexpress/restruct/c/v112/v2/pc/detail.css"
          media="all">
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
        <a class="left logo logo_svg" href="/"><img
                src="https://s.vnecdn.net/vnexpress/restruct/i/v76/graphics/img_logo_vne_web.svg" alt="VnExpress"></a>
    </div>
    <!--end logo_vne-->
</header>
<header id="header" class="section m_header">
    <div class="inner_section">
        <div class="btn_control_menu" data-component-runtime="js" data-component-function="initLayout"
             data-component-input="{}"><i class="ic ic-menu"></i></div>
        <a class="img_logo" href="/"><img src="https://s.vnecdn.net/vnexpress/restruct/i/v76/graphics/logo.png"
                                          alt="VnExpress"></a>
        <a href="https://video.vnexpress.net" class="block_icon_menu_header camera"><i class="ic ic-m-video"></i></a>
        <section data-component-type="weather" data-component-click="ga('te.send', 'event', 'Home', 'Click', 'Box Thời
        tiết');"></section>
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
<div class="wrap_sub_menu">
    <nav id="sub_menu" class="clearfix">
        <a href="/thoi-su/giao-thong">Giao thông</a>
        <a href="/thoi-su/nong-nghiep-sach">Nông nghiệp sạch</a>
    </nav>
</div>
<section class="cat_header clearfix">
    <span class="btn_sub_menu active"><i class="ic ic-caret-2-down"></i></span>
    <div class="right">
        <span class="top-contact"><i class="ic ic-phone"></i> <strong>083.888.0123</strong> (HN) -
        <strong>082.233.3555</strong> (TP HCM)</span>
        <a href="https://vnexpress.net/lien-he-quang-cao" title="quảng cáo" class="box_ad">
            <i class="ic ic-ad"></i>090 293 9644
        </a>
    </div>
    <ul class="breadcrumb left">
        <li class="start">
            <h4>
                <a href="/thoi-su">Thời sự</a>
            </h4>
        </li>
    </ul>
</section>
<!-- CONTENT  -->
<section class="container" data-component-modulejs="detail" data-component-page-type="text"
         data-component-page-config='{"article_id":"3964246"}'>
    <!--wrap_sidebar_12-->
    <section class="wrap_sidebar_12">
        <section class="sidebar_1">
            <header class="clearfix">
                <span class="time left">Thứ năm, 8/8/2019, 17:42 (GMT+7)</span>
                <div class="block_share right">
                    <a class="item_fb btn_facebook" rel="nofollow" href="javascript:;"
                       title="Chia sẻ bài viết lên facebook"><i class="ic ic-facebook"></i></a>
                    <a class="item_twit btn_twitter get-link-bitly" rel="nofollow" href="javascript:;" id="twitter"
                       data-url="https://vnexpress.net/thoi-su/hai-ngoi-chua-co-o-hue-duoc-ha-giai-de-xay-moi-3964246.html"
                       title="Chia sẻ bài viết lên twitter"><i class="ic ic-twitter"></i></a>
                    <a class="btn_print" href="javascript:;" onclick="common.printPopup();" title="Print"
                       rel="nofollow"><i class="ic ic-print"></i></a>
                    <a class="btn_email login_5 open-popup-link" rel="nofollow" href="#email-popup" id="email_content"
                       title="Email" data-component-runtime="js" data-component-function="initMail"
                       data-component-input='{}'><i class="ic ic-email"></i></a>
                </div>
            </header>
            <h1 class="title_news_detail mb10">
                ${article.title} </h1>
            <p class="description">${article.description.substring(0, 50)}</p>
            <article class="content_detail fck_detail width_common block_ads_connect">
                <%--                <img src="${article.thumbnail}" alt="${article.title}"/>--%>
                <%--                <p class="Image">--%>
                <%--                    Ảnh tư liệu--%>
                <%--                </p>--%>
                <%--                <p class="Normal" style="line-height: 1.2; font-size: 16px">--%>
                <%--                    ${article.content}--%>
                <%--                </p> --%>
                ${article.content}
            </article>
        </section>
        <!--End sidebar_1-->
        <!--sidebar_2-->
        <section class="sidebar_2">
            <!-- BOX XEM NHIỀU NHẤT -->
            <section class="box_recommendation_detail">
                <section id="box_xemnhieunhat" class="box_category most_view_detail clearfix" data_id="[" 1004003
                ","1004004","1004005","1004006","1004008"]" style="">
                <hgroup class="title_box_category">
                    <h2><a title="xem nhiều nhất" href="javascript:;" class="first">Xem nhiều nhất</a></h2>
                </hgroup>
                <ul class="list_title">
                    <li>
                        <div class="thumb_art">
                            <a class="thumb thumb_5x3"
                               href="https://vnexpress.net/longform/cuoc-tron-chay-khoi-duong-day-chan-dat-an-xin-3960955.html">
                                <img src="https://i-vnexpress.vnecdn.net/2019/08/01/settop-1564633289-6413-1564634075_180x108.png"
                                     class="vne_lazy_image"
                                     data-original="https://i-vnexpress.vnecdn.net/2019/08/01/settop-1564633289-6413-1564634075_180x108.png"
                                     alt="Cuộc trốn chạy khỏi đường dây chăn dắt ăn xin"/>
                            </a>
                        </div>
                        <h4>
                            <a title="Cuộc trốn chạy khỏi đường dây chăn dắt ăn xin"
                               href="https://vnexpress.net/longform/cuoc-tron-chay-khoi-duong-day-chan-dat-an-xin-3960955.html">
                                Cuộc trốn chạy khỏi đường dây chăn dắt ăn xin </a>
                            <a class="icon_commend"
                               href="https://vnexpress.net/longform/cuoc-tron-chay-khoi-duong-day-chan-dat-an-xin-3960955.html#box_comment"
                               style="white-space: nowrap; display: none;">
                                <span class="txt_num_comment font_icon" data-type="comment" data-objecttype="7"
                                      data-objectid="3960955"></span>
                            </a>
                        </h4>
                    </li>
                    <li>
                        <h4>
                            <a title="Thủ tướng yêu cầu làm rõ nguyên nhân bé lớp 1 trường Gateway tử vong"
                               href="https://vnexpress.net/thoi-su/thu-tuong-yeu-cau-lam-ro-nguyen-nhan-be-lop-1-truong-gateway-tu-vong-3964255.html">
                                Thủ tướng yêu cầu làm rõ nguyên nhân bé lớp 1 trường Gateway tử vong </a>
                            <a class="icon_commend"
                               href="https://vnexpress.net/thoi-su/thu-tuong-yeu-cau-lam-ro-nguyen-nhan-be-lop-1-truong-gateway-tu-vong-3964255.html#box_comment"
                               style="white-space: nowrap; display: none;">
                                <span class="txt_num_comment font_icon" data-type="comment" data-objecttype="1"
                                      data-objectid="3964255"></span>
                            </a>
                        </h4>
                    </li>
                    <li>
                        <h4>
                            <a title="Nhiều nơi ở đảo Phú Quốc chìm trong biển nước"
                               href="https://vnexpress.net/thoi-su/nhieu-noi-o-dao-phu-quoc-chim-trong-bien-nuoc-3963224.html">
                                Nhiều nơi ở đảo Phú Quốc chìm trong biển nước </a>
                            <a class="icon_commend"
                               href="https://vnexpress.net/thoi-su/nhieu-noi-o-dao-phu-quoc-chim-trong-bien-nuoc-3963224.html#box_comment"
                               style="white-space: nowrap; display: none;">
                                <span class="txt_num_comment font_icon" data-type="comment" data-objecttype="1"
                                      data-objectid="3963224"></span>
                            </a>
                        </h4>
                    </li>
                    <li>
                        <h4>
                            <a title="10 phường ở TP HCM sẽ sáp nhập"
                               href="https://vnexpress.net/thoi-su/10-phuong-o-tp-hcm-se-sap-nhap-3964208.html">
                                10 phường ở TP HCM sẽ sáp nhập </a>
                            <a class="icon_commend"
                               href="https://vnexpress.net/thoi-su/10-phuong-o-tp-hcm-se-sap-nhap-3964208.html#box_comment"
                               style="white-space: nowrap; display: none;">
                                <span class="txt_num_comment font_icon" data-type="comment" data-objecttype="1"
                                      data-objectid="3964208"></span>
                            </a>
                        </h4>
                    </li>
                    <li>
                        <h4>
                            <a title="Nhiều nơi ở Tây Nguyên ngập nặng, 6 người chết"
                               href="https://vnexpress.net/thoi-su/nhieu-noi-o-tay-nguyen-ngap-nang-6-nguoi-chet-3964567.html">
                                Nhiều nơi ở Tây Nguyên ngập nặng, 6 người chết </a>
                            <a class="icon_commend"
                               href="https://vnexpress.net/thoi-su/nhieu-noi-o-tay-nguyen-ngap-nang-6-nguoi-chet-3964567.html#box_comment"
                               style="white-space: nowrap; display: none;">
                                <span class="txt_num_comment font_icon" data-type="comment" data-objecttype="1"
                                      data-objectid="3964567"></span>
                            </a>
                        </h4>
                    </li>
                </ul>
            </section>
        </section>
    </section>
    <!--End sidebar_2-->
    <!--bottom_detail-->
    <section class="bottom_detail">
        <!--comment-->
        <div id="box_comment" class="clear" style="margin: 0; padding: 0; height: 0px;">&nbsp;</div>
        <div id="box_comment_vne" data-component="true" data-component-type="comment_library"
             class="box_comment_vne box_category width_common" data-component-runtime="js"
             data-component-function="showComment"
             data-component-input='{"type":"comment","article_id":"3964246","article_type":"1","site_id":"1000000","category_id":"1001005","sign":"59bf73426305496ee537aba2b620b9e0","limit":24}'>
        </div>
        <!--End comment-->
    </section>
    <!--End bottom_detail-->
</section>
<!--End wrap_sidebar_12-->
<!--sidebar_3-->
<section class="sidebar_3">
    <section class="box_category box_infographics clearfix box_anh_300">
        <div class="width_common">
            <a href="https://vnexpress.net/longform/cuoc-vat-lon-cua-mot-bieu-tuong-kinh-te-quoc-doanh-3928079.html"><img
                    src="https://s.vnecdn.net/vnexpress/restruct/i/v76/banner/banner_3928079.jpg"/></a>
        </div>
        <div class="width_common">
            <a href="https://vnexpress.net/longform/song-hong-bien-dang-trong-con-doi-cat-3929326.html"><img
                    src="https://s.vnecdn.net/vnexpress/restruct/i/v76/banner/banner_3929326.jpg"/></a>
        </div>
        <div class="width_common">
            <a href="https://vnexpress.net/longform/thanh-da-bon-the-he-vat-lon-voi-quy-hoach-treo-3917214.html"><img
                    src="https://s.vnecdn.net/vnexpress/restruct/i/v76/banner/banner_3917214.jpg"/></a>
        </div>
        <div class="width_common">
            <a href="https://vnexpress.net/longform/nhung-manh-ruong-bo-hoang-tren-que-huong-5-tan-3912753.html"><img
                    src="https://s.vnecdn.net/vnexpress/restruct/i/v76/banner/banner_Ruonghoang.jpg"/></a>
        </div>
        <div class="width_common">
            <a href="https://vnexpress.net/longform/cong-duc-chuyen-mot-dong-tien-khong-kiem-toan-3905326.html"><img
                    src="https://s.vnecdn.net/vnexpress/restruct/i/v76/banner/banner_Congduc.jpg"/></a>
        </div>
        <div class="width_common">
            <a href="https://vnexpress.net/longform/nhung-co-dau-viet-gia-sau-van-te-3896990.html"><img
                    src="https://s.vnecdn.net/vnexpress/restruct/i/v76/banner/banner_3896990.jpg"/></a>
        </div>
    </section>
    <a class="box_feedback" href="/lien-he-toa-soan/">
        <span class="icon_feed_back"><img
                src="https://s.vnecdn.net/vnexpress/restruct/i/v76/graphics/img_goithutoasoan.gif" alt=""></span>
        <span class="txt_feedback">Chia sẻ ảnh, video, bài viết</span>
    </a>
    <c:forEach var="category" items="${categories}">
        <section class="box_category clearfix" id="box${category.id}">
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
<!--End sidebar_3-->
</section>
<!-- Box send mail -->
<div id="email-popup" class="white-popup mfp-hide">
    <div class="title_popup width_common">Chia sẻ bài viết qua email</div>
    <div class="share_email_des">
        <div class="share_email_left"><a>Bài viết</a></div>
        <div class="share_email_right">
            <p>Hai ngôi chùa cổ ở Huế được hạ giải để xây mới</p>
            <p class="breakumb">
                <a class="" href="/thoi-su" title="Thời sự">Thời sự</a>
            </p>
        </div>
    </div>
    <div class="content_poup width_common">
        <input type="hidden" name="fcsrf" id="fcsrf" value="aa863efcf29d8e3451c2347ac0953247c5d19590"/>
        <input type="hidden" id="url" name="url"
               value="https://vnexpress.net/thoi-su/hai-ngoi-chua-co-o-hue-duoc-ha-giai-de-xay-moi-3964246.html">
        <input type="hidden" id="article_title" name="article_title"
               value="Hai ngôi chùa cổ ở Huế được hạ giải để xây mới">
        <ul class="form_element">
            <li class="width_common">
                <input type="text" class="input_form" placeholder="Email người gửi" name="sender_email"
                       id="sender_email"/>
                <div class="width_common txt_error" id="errorEmail"></div>
            </li>
            <li class="width_common">
                <input type="text" class="input_form" placeholder="Họ tên người gửi" name="sender_name"
                       id="sender_name"/>
                <div class="width_common txt_error" id="errorName"></div>
            </li>
            <li class="width_common">
                <input type="text" class="input_form" placeholder="Email người nhận" name="receiver_mail"
                       id="receiver_mail"/>
                <div class="width_common txt_error" id="errorReceiver"></div>
            </li>
            <li class="width_common">
                <textarea name="message_mail" id="message_mail" class="input_form input_area" name="thongdiep"
                          placeholder="Thông điệp gửi kèm"></textarea>
            </li>
            <li class="width_common">
                <label class="label_form">Nhập mã xác nhận:</label>
                <input name="txtCode" id="txtCode" type="text" class="input_30 left input_form" maxlength="4"/>
                <div class="capcha" id="showCaptcha"></div>
                <a class="btn_refrest" onclick="common.loadCaptcha('#showCaptcha');" href="javascript:;"
                   title="Tạo mã khác"><img src="https://s.vnecdn.net/vnexpress/restruct/i/v76/graphics/refesh.gif"></a>
                <button type="button" class="btn_vne btn_sk btn_vne_bold btn_submit_form">Hoàn tất</button>
                <div class="width_common txt_error" id="errorCode"></div>
            </li>
        </ul>
    </div>
</div>
<!-- End box -->
<c:import url="layout/footer.jsp" charEncoding="UTF-8"/>
</body>
</html>

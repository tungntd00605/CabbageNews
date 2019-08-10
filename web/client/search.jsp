<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="vi" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <c:import url="layout/header.jsp" charEncoding="UTF-8">
        <c:param name="title" value="CabbageNews - Search"/>
    </c:import>
    <style type="text/css">
        #search_page .title_news a.txt_link label {
            cursor: pointer;
        }
        #search_page .title_news a.txt_link label {
            font-weight: 700;
            color: #000;
        }
    </style>
</head>
<body>
<div id="myvne_taskbar"></div>
<header class="p_header">
    <div class="logo_vne container clearfix">
        <a href="https://vnexpress.net"><img src="https://s.vnecdn.net/vnexpress/restruct/i/v1/search/graphics/img_logo_vne_web.gif" alt=""  class="left logo_web"/></a>
    </div>
</header>
<header id="header" class="section m_header">
    <div class="inner_section">
        <div class="btn_control_menu"><i class="ic ic-menu"></i></div>
        <a class="img_logo" href="https://vnexpress.net"><img src="https://s.vnecdn.net/vnexpress/restruct/i/v1/search/graphics/logo.png" alt="VnExpress logo"></a>
    </div>
</header>
<c:import url="layout/nav.jsp" charEncoding="UTF-8"/>
<section class="cat_header clearfix">
    <div class="right">
        <span class="top-contact">
            <i class="ic ic-phone"></i> <strong>083.888.0123</strong> (HN) - <strong>082.233.3555</strong> (TP HCM)
            </span>
        <a href="https://vnexpress.net/lien-he-quang-cao" title="quảng cáo" class="box_ad">
            <i class="ic ic-ad"></i>Liên hệ quảng cáo
        </a>
    </div>
    <ul class="breadcrumb left">
        <li class="start"><h4><a href="https://timkiem.vnexpress.net">Tìm kiếm</a></h4></li>
    </ul>
</section>
<div id="search_page">
    <section class="container page_search">
        <form class="wrap_form width_common" action="/search" name="frmSearch" method="get">
            <p class="title">Nội dung tìm kiếm</p>
            <div class="form_search">
                <div class="wrap_txtsearch">
                    <input type="text" class="txt-search input_form" value="" id="search_q" name="what">

                    <button class="btn_vne">Tìm kiếm</button>
                </div>
            </div>
            <a href="#notice-popup" class="hd_search guide_search open-popup-link">Hướng dẫn</a>
        </form>
    </section>
    <section class="container page_search">
        <section class="sidebar_2 result_filter">
        <div class="key_search">
        </div>

        <div id="result_search">
            <c:forEach var="article" items="${articles}">
                <article class="list_news">
                    <div class="thumb_art">
                        <a class="thumb thumb_5x3" target="_blank" href="/article?arcId=${article.id}" title="${article.title}" alt="${article.title}"><img style="max-width: 140px;max-height: 84px;" src="${article.thumbnail}" alt="${article.title}" title="${article.title}"></a>
                    </div>
                    <h3 class="title_news">
                        <a target="_blank" href="/article?arcId=${article.id}" title="${article.title}" alt="${article.title}" class="txt_link">${article.title}</a>
                        <img src="${article.thumbnail}" alt="" class="icon_content icon_title_0">            </h3>
                    <h4 class="description">
                        ${article.description}
                    </h4>
                </article>
            </c:forEach>
        </div>
    </section>
        <section class="sidebar_3">
        </section>
        <div id="notice-popup" class="white-popup mfp-hide">
            <div class="title_popup width_common">Hướng dẫn</div>
            <div class="content_poup width_common">
                <p>Sử dụng các từ khóa cho trong tiêu đề hoặc nội dung bài viết để tìm kiếm</p>
                <p>Khi muốn tìm chính xác một cụm từ, có thể sử dụng dấu ngoặc kép để tìm kiếm. <span style=" font-style: italic">Ví dụ "Hà Nội"</span></p>
                <p>Từ khóa tìm kiếm cần đúng chính tả, có thể sử dụng từ tiếng Việt có dấu hoặc không dấu</p>
                <p>Nếu kết quả tìm kiếm không được như ý, hãy cố gắng thử một vài cụm từ có nghĩa tương đương</p>
            </div>
        </div></section>    </div>
<c:import url="layout/footer.jsp" charEncoding="UTF-8"/>
<div class="clear"></div>
<script type="text/javascript" src="https://s.vnecdn.net/vnexpress/restruct/j/v4/search/timkiem.js"></script>
<script src="https://s.vnecdn.net/myvne/j/v14/myvne_users_v3.js"></script>
<script src="https://s.vnecdn.net/myvne/j/v14/plugins/vne_v3.js"></script>
<script type="text/javascript" src="https://s.vnecdn.net/vnexpress/restruct/j/v4/search/jquery.magnific-popup.min.js"></script>
<script type="text/javascript">
    var strKeyWord = 'zeros',
        blData = 0;
    $(function() {
        if (blData) {
            localSearchHighlight.init({
                searchStr: '?h=' + strKeyWord,
                node: 'result_search'
            });
        }
    });
    $('.open-popup-link').magnificPopup({
        type:'inline',
        midClick: true, // Allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source in href.
        mainClass: 'mfp-with-zoom',
        fixedContentPos: false,
        fixedBgPos: true,
        overflowY: 'auto',
        closeBtnInside: true,
        preloader: false,
        removalDelay: 300
    });
</script>
<script id="image_load_ajax" type="text/x-handlebars-template">
    <div style="text-align: center;">
        <p style="padding: 25px 0;"><img src="https://s.vnecdn.net/vnexpress/restruct/i/v1/search/graphics/loading.gif"></p>
    </div>
</script>
</body>
</html>
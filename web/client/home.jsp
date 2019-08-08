<%@ page import="com.quanganh9x.marquee.service.ArticleService" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>VnExpress - Báo tiếng Việt nhiều người xem nhất</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=100"/>
    <meta property="fb:app_id" content="1547540628876392"/>
    <link rel="canonical" href="https://vnexpress.net"/>
    <meta http-equiv="REFRESH" content="1800"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="dns-prefetch" href="//s.eclick.vn"/>
    <link rel="dns-prefetch" href="//s.vnecdn.net"/>
    <link rel="dns-prefetch" href="//la.vnecdn.net"/>
    <link rel="dns-prefetch" href="https://usi-saas.vnexpress.net"/>
    <link rel="dns-prefetch" href="//core.polyad.net"/>
    <link rel="dns-prefetch" href="//www.google-analytics.com"/>
    <link rel="dns-prefetch" href="//www.googletagmanager.com"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-title" content="Vnexpress.net"/>
    <meta name="description" content="Thông tin nhanh &amp; mới nhất được cập nhật hàng giờ. Tin tức Việt Nam &amp; thế giới về xã hội, kinh doanh, pháp luật, khoa học, công nghệ, sức khoẻ, đời sống, văn hóa, rao vặt, tâm sự...">
    <meta name="keywords" content="VnExpress,Vietnam News Daily,Economy,Online,Internet,Magazine,Gateway,FPT,Portal,Tin nhanh,cập nhật,báo điện tử,việt báo,tin việt,VietNews,mua bán,rao vặt,tư vấn,việc làm,Hà Nội,Sài Gòn,tin tức,Huế,Đà Nẵng,VDC,Netnam,Saigonnet,Sggp,VET,Nhân dân,Lao động,Kinh tế,Kinh doanh,Tin nhanh,cap nhat,bao dien tu,Vietbao,TinViet,Mua Ban,Rao Vat,Tu Van,Viec Lam,Hanoi,Ha Noi,Saigon,Sai gon,Tin tuc,Tintuc,Hue,Da Nang,Danang,Nhandan,Nhan dan,Laodong,Lao dong,Kinhte,Kinh te,Kinhdoanh,Kinh doanh">
    <meta name="tt_article_id" content="1000000"/>
    <meta name="tt_page_type" content="site"/>
    <meta name="tt_category_id" content="1000000"/>
    <meta name="tt_site_id" content="1000000"/>
    <!-- add meta for pvtt3334 -->
    <!-- end meta for pvtt -->
    <!-- META FOR FACEBOOK -->
    <meta content="Tin nhanh VnExpress" property="og:site_name"/>
    <meta property="og:url" itemprop="url" content="https://vnexpress.net"/>
    <meta property="og:image" itemprop="thumbnailUrl" content="https://s.vnecdn.net/vnexpress/restruct/i/v76/logo_default.jpg"/>
    <meta content="VnExpress - Báo tiếng Việt nhiều người xem nhất " itemprop="headline" property="og:title"/>
    <meta content="Thông tin nhanh &amp; mới nhất được cập nhật hàng giờ. Tin tức Việt Nam &amp; thế giới về xã hội, kinh doanh, pháp luật, khoa học, công nghệ, sức khoẻ, đời sống, văn hóa, rao vặt, tâm sự..." itemprop="description" property="og:description"/>
    <!-- END META FOR FACEBOOK -->
    <meta name="copyright" content="VnExpress"/>
    <meta name="author" content="VnExpress"/>
    <meta name="robots" content="index, follow">
    <meta name="geo.placename" content="Ha Noi, Viet Nam"/>
    <meta name="geo.region" content="VN-HN"/>
    <meta name="geo.position" content="21.030624;105.782431"/>
    <meta name="ICBM" content="21.030624, 105.782431"/>
    <meta name="revisit-after" content="days">
    <link rel="alternate" href="https://vnexpress.net" hreflang="vi-vn"/>
    <!-- Twitter Card -->
    <meta name="twitter:card" value="summary">
    <meta name="twitter:url" content="https://vnexpress.net/">
    <meta name="twitter:title" content="Tin nhanh VnExpress - Đọc báo, tin tức online 24h">
    <meta name="twitter:description" content="Thông tin nhanh &amp; mới nhất được cập nhật hàng giờ. Tin tức Việt Nam &amp; thế giới về xã hội, kinh doanh, pháp luật, khoa học, công nghệ, sức khoẻ, đời sống, văn hóa, rao vặt, tâm sự...">
    <meta name="twitter:image" content="https://s.vnecdn.net/vnexpress/restruct/i/v76/logo_default.jpg"/>
    <meta name="twitter:site" content="@VnEnews">
    <meta name="twitter:creator" content="@VnEnews">
    <!-- End Twitter Card -->
    <!-- iPad icons -->
    <link rel="apple-touch-icon-precomposed" href="https://s.vnecdn.net/vnexpress/restruct/i/v76/logos/72x72.png" sizes="72x72">
    <link rel="apple-touch-icon-precomposed" href="https://s.vnecdn.net/vnexpress/restruct/i/v76/logos/114x114.png" sizes="144x144">
    <!-- iPhone and iPod touch icons -->
    <link rel="apple-touch-icon-precomposed" href="https://s.vnecdn.net/vnexpress/restruct/i/v76/logos/57x57.png" sizes="57x57">
    <link rel="apple-touch-icon-precomposed" href="https://s.vnecdn.net/vnexpress/restruct/i/v76/logos/114x114.png" sizes="114x114">
    <!-- Nokia Symbian -->
    <link rel="nokia-touch-icon" href="https://s.vnecdn.net/vnexpress/restruct/i/v76/logos/57x57.png">
    <!-- Android icon precomposed so it takes precedence -->
    <link rel="apple-touch-icon-precomposed" href="https://s.vnecdn.net/vnexpress/restruct/i/v76/logos/114x114.png" sizes="1x1">
    <script type="text/javascript">var site_id=1000000,SITE_ID=1000000,PAGE_FOLDER=1000000,PAGE_DETAIL=0,parser_autoplay=0,PageHot=0;if(typeof(PAGE_FOLDER)=="undefined"){var PAGE_FOLDER;}if(PAGE_FOLDER==1000000){var _siteId="6";}else{var _siteId="5";}var blockAdsTop=0;var uservar_token="cd73bfe411b24da744850d517ff3cbb3";var uservar_fosp_aid="";window.dataLayer=window.dataLayer||[];dataLayer.push({'pageCategory':'1000000'});dataLayer.push({'pageType':'Home'});dataLayer.push({'pagePlatform':'Web'});dataLayer.push({'pageSubcategoryId':''});dataLayer.push({'PageEmbed':'Video Home'});(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src='https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);})(window,document,'script','dataLayer','GTM-N3FNJF');</script><meta name="tt_page_ads" content="0"><meta name="tt_page_special" content="0"><script type="text/javascript">(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');ga('create','UA-50285069-16','auto',{'name':'te'});</script>
    <script type="text/javascript">var inter_version=2,ZONE_BRANDSAFE='',interactions_url='https://usi-saas.vnexpress.net',base_url='https://vnexpress.net',css_url='https://s.vnecdn.net/vnexpress/restruct/c/v112',js_url='https://s.vnecdn.net/vnexpress/restruct/j/v430',flash_url='https://s.vnecdn.net/vnexpress/restruct/f/v220',img_url='https://s.vnecdn.net/vnexpress/restruct/i/v76',js_url_vne='https://s.vnecdn.net/vnexpress/restruct/j/v430',css_url_vne='https://s.vnecdn.net/vnexpress/restruct/c/v112',img_url_vne='https://s.vnecdn.net/vnexpress/restruct/i/v76',flash_url_vne='https://s.vnecdn.net/vnexpress/restruct/f/v220',myvne_js='https://s.vnecdn.net/myvne/j/v24',device_env=4,eid_authen_url='https://authen.eid.vn',ZONE_ADS=0,isResizedPhoto=false;document.domain='vnexpress.net';</script>
    <link rel="stylesheet" type="text/css" href="https://s.vnecdn.net/vnexpress/restruct/c/v112/v2/pc/general.css" media="all">
    <link rel="stylesheet" type="text/css" href="https://s.vnecdn.net/myvne/c/v18/ls/myvne_2019.css" media="all">
    <!--[if lte IE 9]>
    <script src="https://s.vnecdn.net/vnexpress/restruct/j/v430/v2/helper/html5shiv.js" type="text/javascript"></script>
    <![endif]-->
    <script async src="https://s.vnecdn.net/vnexpress/restruct/j/v430/v2/helper/lazyload.js" type="text/javascript"></script>
    <!-- VIDEO VOD SCRIPT -->
    <script type="text/javascript">var isSupportVOD=!1,isScriptLoaded=!1,head=document.getElementsByTagName("head")[0],istablet="";try{var obj=document.createElement('video');if("MediaSource"in window||obj.canPlayType('application/vnd.apple.mpegurl')){isSupportVOD=!0}}catch(a){console.log(a)}if(document.cookie.indexOf("device_env=4")>-1&&document.cookie.indexOf("device_env_real=2")>-1)istablet="m";if(1==isSupportVOD){var s_hls=document.createElement("script");s_hls.type="text/javascript";s_hls.async=!0;s_hls.src=js_url+"/v2/helper/"+istablet+"vod/hls.js";s_hls.onload=function(){var s_vlib=document.createElement("script");s_vlib.type="text/javascript";s_vlib.async=!0;s_vlib.src=js_url+"/v2/helper/"+istablet+"vod/video.lib.js";s_vlib.onload=function(){isScriptLoaded=!0};head.appendChild(s_vlib)};head.appendChild(s_hls);var scriptVOD=document.createElement("script");scriptVOD.type="text/javascript";scriptVOD.async=!0;scriptVOD.src=js_url+"/v2/helper/"+istablet+"embed_vod.js";scriptVOD.onload=function(){};head.appendChild(scriptVOD);var link=document.createElement("link");link.rel="stylesheet";link.type="text/css";link.href=js_url+"/v2/helper/"+istablet+"vod/video-js.css";link.media="all";head.appendChild(link);var scriptAds=document.createElement("script");scriptAds.type="text/javascript";scriptAds.async=!0;scriptAds.src=js_url+"/v2/helper/"+istablet+"vod/ads.js";scriptAds.onload=function(){};head.appendChild(scriptAds)}else if(istablet=="m"){var link=document.createElement("link");link.rel="stylesheet";link.type="text/css";link.href=js_url+"/v2/helper/mvod/fp-style.css";link.media="all";head.appendChild(link);var mfplayer=document.createElement("script");mfplayer.type="text/javascript";mfplayer.async=!0;mfplayer.src=js_url+"/v2/helper/mfplayer.js";mfplayer.onload=function(){var a=document.createElement("script");a.type="text/javascript";a.async=!0;a.src=js_url+"/v2/helper/membed.js";a.onload=function(){isScriptLoaded=!0};head.appendChild(a)};head.appendChild(mfplayer)}else script=document.createElement("script"),script.type="text/javascript",script.async=!0,script.src=js_url+"/v2/helper/embed.js",script.onload=function(){},head.appendChild(script);</script>
    <!-- END VIDEO VOD SCRIPT -->
    <!-- GOOGLE SEARCH META GOOGLE SEARCH STRUCTURED DATA FOR ARTICLE && GOOGLE BREADCRUMB STRUCTURED DATA-->
    <script type="application/ld+json">
        {
            "@context"        : "http://schema.org",
            "@type"           : "WebSite",
            "name"            : "VnExpress",
            "alternateName"   : "Thông tin nhanh & mới nhất được cập nhật hàng giờ. Tin tức Việt Nam & thế giới về xã hội, kinh doanh, pháp luật, khoa học, công nghệ, sức khoẻ, đời sống, văn hóa, rao vặt, tâm sự...",
            "url": "https://vnexpress.net/",
            "potentialAction": {
                "@type": "SearchAction",
                "target": "https://timkiem.vnexpress.net/?q={search_term_string}",
                "query-input": "required name=search_term_string"
            }
        }
    </script>
    <script type="application/ld+json">
        {
            "@context": "http://schema.org",
            "@type"   : "Organization",
            "url"     : "https://vnexpress.net",
            "logo"    : "https://s.vnecdn.net/vnexpress/restruct/i/v48/logos/114x114.png",
            "contactPoint": [
                {
                    "@type": "ContactPoint",
                    "telephone": "+84-123-888-0123",
                    "contactType": "customer service"
                },
                {
                    "@type": "ContactPoint",
                    "telephone": "+84-129-233-3555",
                    "contactType": "customer service"
                }
            ]
        }
    </script>
    <script type="application/ld+json">
        {
            "@context": "http://schema.org",
            "@type": "Person",
            "name": "VnExpress",
            "url": "https://vnexpress.net",
            "sameAs": [
                "https://www.facebook.com/congdongvnexpress/",
                "https://twitter.com/VnEnews"
            ]
        }
    </script>
    <!-- END GOOGLE SEARCH META GOOGLE SEARCH STRUCTURED DATA FOR ARTICLE && GOOGLE BREADCRUMB STRUCTURED DATA-->
    <!-- code header quang cao---><script>var googletag=googletag||{},pbjs=pbjs||{},Criteo=window.Criteo||{};googletag.cmd=googletag.cmd||[];pbjs.que=pbjs.que||[];Criteo.events=Criteo.events||[];var googTagCode={display:[],config:null,video:{outstream:{id:'',code:''},inarticle:{id:'',code:''}},tag:{'div-gpt-ad-1547024701356-0':{'slot':null,'view':0,'type':'','gtag':{'code':'/27973503/vnexpress.net.2019/Desktop/Masthead/Phapluat','sizes':['fluid',[728,90]]},'sticky':'','criteo':{'zoneid':1376039},'prebid':{'sizes':[[728,90]],'bidder':{'rtbhouse':{'region':'prebid-asia','publisherId':'dd60832fcee6fff5002w'}}},'lazy':0},'div-gpt-ad-1547024701356-1':{'slot':null,'view':0,'type':'','gtag':{'code':'/27973503/vnexpress.net.2019/Desktop/Large1/Phapluat','sizes':['fluid',[300,250]]},'sticky':'','criteo':{'zoneid':1376042},'prebid':{'sizes':[[300,250]],'bidder':{'rtbhouse':{'region':'prebid-asia','publisherId':'dd60832fcee6fff5002w'}}},'lazy':0},'div-gpt-ad-1547024701356-2':{'slot':null,'view':0,'type':'','gtag':{'code':'/27973503/vnexpress.net.2019/Desktop/Large2/Phapluat','sizes':['fluid',[300,120]]},'sticky':'','lazy':0},'div-gpt-ad-1547024701356-3':{'slot':null,'view':0,'type':'','gtag':{'code':'/27973503/vnexpress.net.2019/Desktop/Large3/Phapluat','sizes':['fluid',[300,250]]},'sticky':'','criteo':{'zoneid':1376042},'prebid':{'sizes':[[300,250]],'bidder':{'rtbhouse':{'region':'prebid-asia','publisherId':'dd60832fcee6fff5002w'}}},'lazy':0},'div-gpt-ad-1547024701356-4':{'slot':null,'view':0,'type':'','gtag':{'code':'/27973503/vnexpress.net.2019/Desktop/Large4/Phapluat','sizes':['fluid',[300,250]]},'sticky':'','criteo':{'zoneid':1376042},'prebid':{'sizes':[[300,250]],'bidder':{'rtbhouse':{'region':'prebid-asia','publisherId':'dd60832fcee6fff5002w'}}},'lazy':0},'div-gpt-ad-1547024701356-5':{'slot':null,'view':0,'type':'','gtag':{'code':'/27973503/vnexpress.net.2019/Desktop/Large5/Phapluat','sizes':['fluid',[300,250]]},'sticky':'','criteo':{'zoneid':1376042},'prebid':{'sizes':[[300,250]],'bidder':{'rtbhouse':{'region':'prebid-asia','publisherId':'dd60832fcee6fff5002w'}}},'lazy':0},'div-gpt-ad-1547024701356-6':{'slot':null,'view':0,'type':'','gtag':{'code':'/27973503/vnexpress.net.2019/Desktop/Specialright1/Phapluat','sizes':['fluid',[160,600]]},'sticky':'','criteo':{'zoneid':1376046},'prebid':{'sizes':[[160,600]],'bidder':{'rtbhouse':{'region':'prebid-asia','publisherId':'dd60832fcee6fff5002w'}}},'lazy':0},'div-gpt-ad-1547024701356-7':{'slot':null,'view':0,'type':'','gtag':{'code':'/27973503/vnexpress.net.2019/Desktop/Specialright2/Phapluat','sizes':['fluid',[160,600]]},'sticky':'.banner_footer','criteo':{'zoneid':1376046},'prebid':{'sizes':[[160,600]],'bidder':{'rtbhouse':{'region':'prebid-asia','publisherId':'dd60832fcee6fff5002w'}}},'lazy':0},}};</script><script async='async' type='text/javascript' src='https://www.googletagservices.com/tag/js/gpt.js'></script><script async='async' type='text/javascript' src='https://static.criteo.net/js/ld/publishertag.js'></script><script async='async' type='text/javascript' src='https://s.eclick.vn/delivery/dfp/prebid.js'></script><script async='async' type='text/javascript' src='https://s.eclick.vn/delivery/dfp/ads.js'></script><!-- end code header quang cao--->	</head>
<body data-checkpage="1">
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-N3FNJF" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<div id="myvne_taskbar"></div>
<!-- end taskbar -->
<header class="p_header">
    <div class="logo_vne container clearfix">
        <a class="left logo logo_svg" href="/"><img src="https://s.vnecdn.net/vnexpress/restruct/i/v76/graphics/img_logo_vne_web.svg" alt="VnExpress"></a>
        <div class="banner_top right home">
            <section>
                <div class="banner_ads">
                    <span class="text_ads text_ads_vertical">Quảng cáo</span>
                    <div id="TOP_BANNER">
                        <ins style="margin-left:10px;" class="adsbycpx" data-zone="" data-ad-width="364" data-ad-height="90" data-ad="3" data-type="5"></ins><script>(cpxad=window.cpxad||[]).push({});</script>
                        <ins class="adsbycpx" data-zone="" data-ad-width="364" data-ad-height="90" data-ad="2" data-type="5"></ins><script>(cpxad=window.cpxad||[]).push({});</script>
                    </div>
                </div>
            </section>
        </div>
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
<nav id="main_menu" class="p_menu">
    <a class="active" href="/"><i class="ic-m-home-img"></i></a>
    <c:forEach var="c" items="${categories}">
    <a id="cat${c.id}" href="/category?catId=${c.id}" title="${c.name}"><c:out value="${c.name}"/></a>
    </c:forEach>
    <span class="mnu_raovat drop_menu" href="#">
    <i class="caret-down"></i>
    <div class="drop_menu_hover"><a href="//raovat.vnexpress.net" title="Rao vặt">Fsell</a></div>
</span>
</nav>
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
        <ul id="list_sub_featured" class="scrollbar-inner" data-component-runtime="js" data-component-function="scrollBox" data-component-input='{"element":".scrollbar-inner"}'>
            <c:forEach var="article" items="${featured}">
            <li>
                <a title="${article.title}" href="/article?arcId=${article.id}">
                        ${article.title}</a>
            </li>
            </c:forEach>
        </ul>
    </div>
    <div class="ads_featured">
        <section class="box_category">
            <div class="width_common banner_ads">
                <span class="text_ads">Quảng cáo</span>
                <div class="width_common">
                    <ins class="adsbycpx" data-zone="" data-ad-width="300" data-ad-height="120" data-ad="202" data-type="5"></ins><script>(cpxad=window.cpxad||[]).push({});</script>	</div>
            </div>
        </section>
        <section class="box_category">
            <ins class="adsbycpx" data-zone="" data-ad-width="300" data-ad-height="120" data-ad="203" data-type="5"></ins><script>(cpxad=window.cpxad||[]).push({});</script>	</section>
        <section class="box_category">
            <ins class="adsbycpx" data-zone="" data-ad-width="300" data-ad-height="120" data-ad="204" data-type="5"></ins><script>(cpxad=window.cpxad||[]).push({});</script>	</section>
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
                ${article.description.substring(0, 100)}</p>
        </article>
        </c:forEach>
    </section>
    <!--End sidebar_1-->
    <section class="sidebar_home_2 sidebar_flexible">
        <c:forEach var="category" items="${categories}">
            <section class="box_category clearfix list_title_right">
                <hgroup class="title_box_category">
                    <h2><a title="${category.name}" href="/category?catId=${category.name}" class="first">${category.name}</a></h2>
                </hgroup>
<%--                <c:import var="data" url="/widget/boxCategory?catId=${category.id}"/>--%>

            </section>
        </c:forEach>
     </section>
    <!--End sidebar_2-->
    <!--sidebar_3-->
    <section class="sidebar_home_3">
        <section data-component-type="weather" data-component-click="ga('te.send', 'event', 'Home', 'Click', 'Box Thời tiết');">
        </section>
        <a href="/lien-he-quang-cao/" title="Liên hệ quảng cáo" class="box_ad no-space-top">
            <i class="ic ic-ad"></i>Liên hệ quảng cáo
        </a>	<section class="box_category hidden320">
        <div class="width_common banner_ads">
            <span class="text_ads">Quảng cáo</span>
            <div class="width_common">
                <ins class="adsbycpx" data-zone="" data-ad-width="160" data-ad-height="600" data-ad="253" data-type="5"></ins><script>(cpxad=window.cpxad||[]).push({});</script>	</div>
        </div>
    </section>
        <section class="box_category hidden320">
            <div class="width_common banner_ads">
                <span class="text_ads">Quảng cáo</span>
                <div class="width_common">
                    <ins class="adsbycpx" data-zone="" data-ad-width="160" data-ad-height="600" data-ad="254" data-type="5"></ins><script>(cpxad=window.cpxad||[]).push({});</script>	</div>
            </div>
        </section>
        <section class="box_category hidden320">
            <div class="width_common banner_ads">
                <span class="text_ads">Quảng cáo</span>
                <div class="width_common">
                    <ins class="adsbycpx" data-zone="" data-ad-width="160" data-ad-height="600" data-ad="255" data-type="5"></ins><script>(cpxad=window.cpxad||[]).push({});</script>	</div>
            </div>
        </section>
        <section class="box_category hidden320">
            <div class="width_common banner_ads">
                <span class="text_ads">Quảng cáo</span>
                <div class="width_common">
                    <ins class="adsbycpx" data-zone="" data-ad-width="160" data-ad-height="600" data-ad="256" data-type="5"></ins><script>(cpxad=window.cpxad||[]).push({});</script>	</div>
            </div>
        </section>
        <section class="box_category hidden320">
            <div class="width_common banner_ads">
                <span class="text_ads">Quảng cáo</span>
                <div class="width_common">
                    <ins class="adsbycpx" data-zone="" data-ad-width="160" data-ad-height="600" data-ad="257" data-type="5"></ins><script>(cpxad=window.cpxad||[]).push({});</script>	</div>
            </div>
        </section>
        <section class="box_category sidebar_raovat left clearfix">
            <hgroup class="title_box_category">
                <h2><a title="Rao v?t VnExpress" href="https://raovat.vnexpress.net" target="_blank" class="first">Fsell</a></h2>
            </hgroup>
            <div id="list_raovat_sidebar" class="owl-carousel" data-component-runtime="js" data-component-function="thirdparty" data-component-input='{"type":"boxRaovat"}'>
            </div>
            <a href="javascript:;" class="btn_list_raovat_sidebar_prev"><i class="ic ic-caret-left"></i></a>
            <a href="javascript:;" class="btn_list_raovat_sidebar_next"><i class="ic ic-caret-right"></i></a>
        </section>
        <section class="box_category sidebar_ebank left clearfix">
            <hgroup class="title_box_category">
                <h2><a title="Ebank VnExpress" href="https://vnexpress.net/kinh-doanh/ebank" target="_blank" class="first">Ebank</a></h2>
            </hgroup>
            <div id="list_ebank_sidebar" class="owl-carousel" data-component-runtime="js" data-component-function="thirdparty" data-component-input='{"type":"boxEbank"}'>
            </div>
            <a class="btn_list_ebank_sidebar_prev" href="javascript:;"><i class="ic ic-caret-left"></i></a> <a class="btn_list_ebank_sidebar_next" href="javascript:;"><i class="ic ic-caret-right"></i></a>
        </section>
        <section class="box_category box_shopvne">
            <h2 class="title"><a target="_blank" href="https://shop.vnexpress.net/?utm_source=VnExpress_pc&utm_medium=title_widget_160x600&utm_campaign=VnExpress">ShopVnExpress</a></h2>
            <div class="box_shopvne_inner scrollbar-inner" id="box_shop_right" data-component-runtime="js" data-component-function="thirdparty" data-component-input='{"type":"boxEcommerce","position":"right","page":"home"}'>
            </div>
        </section>
        <section class="box_category hidden320">
            <div class="width_common banner_ads">
                <span class="text_ads">Quảng cáo</span>
                <div class="width_common">
                    <ins class="adsbycpx" data-zone="" data-ad-width="160" data-ad-height="600" data-ad="267" data-type="5" data-scroll="1" data-native="1" data-count="3"></ins><script>(cpxad=window.cpxad||[]).push({});</script>	</div>
            </div>
        </section>
    </section>
    <!--End sidebar_3-->
</section>
<!--end content-->
<section class="container box-traodoi">
    <ul class="list-traodoi">
        <li>
            <div class="thumb_art thumb_full">
                <a class="thumb thumb_5x3" href="https://ngoisao.net/longform/thu-ngoc-may-trang-hang-xom-ho-hang-khong-biet-toi-da-chia-tay-chong-3963721.html" target="_blank"><img alt="Thu Ngọc 'Mây Trắng': ‘Hàng xóm, họ hàng không biết tôi đã chia tay chồng’" src="https://i-ngoisao.vnecdn.net/2019/08/06/img1318jpg-1565095053-15650950-8036-9612-1565095111_300x180.png" class="vne_lazy_image" data-original="https://i-ngoisao.vnecdn.net/2019/08/06/img1318jpg-1565095053-15650950-8036-9612-1565095111_300x180.png"></a>
                <a class="ion label-icon" href="https://ngoisao.net" title="" target="_blank"><img src="https://s.vnecdn.net/vnexpress/restruct/i/v76/graphics/ngoisao.svg" alt=""></a>
            </div>
            <h4 class="title_news"><a href="https://ngoisao.net/longform/thu-ngoc-may-trang-hang-xom-ho-hang-khong-biet-toi-da-chia-tay-chong-3963721.html" target="_blank">Thu Ngọc 'Mây Trắng': ‘Hàng xóm, họ hàng không biết tôi đã chia tay chồng’</a>
                <a class="icon_commend" href="https://ngoisao.net/longform/thu-ngoc-may-trang-hang-xom-ho-hang-khong-biet-toi-da-chia-tay-chong-3963721.html#box_comment" style="white-space: nowrap; display: none;">
                    <span class="txt_num_comment font_icon" data-type="comment" data-objecttype="7" data-objectid="3963721"></span>
                </a>
            </h4>
            <p class="des">Cuộc hôn nhân giữa ca sĩ Thu Ngọc và chồng Việt kiều đã kết thúc được 4 năm vì cô không hợp với mẹ chồng, kế hoạch thụ tinh ống ...</p>
        </li>
        <li>
            <div class="thumb_art thumb_full">
                <a class="thumb thumb_5x3" href="https://ione.vnexpress.net/tin-tuc/video/ve-nha-di-con-tap-83-thu-soc-vi-bo-son-bo-nha-ra-di-3964350.html" target="_blank"><img alt="'Về nhà đi con' tập 83: Thư sốc vì 'bố Sơn' bỏ nhà ra đi" src="https://i-ione.vnecdn.net/2019/08/07/4-1565190721-1565190809-7732-1565190814_300x180.png" class="vne_lazy_image" data-original="https://i-ione.vnecdn.net/2019/08/07/4-1565190721-1565190809-7732-1565190814_300x180.png"></a>
                <a class="ion label-icon" href="https://ione.vnexpress.net" title="" target="_blank"><img src="https://s.vnecdn.net/vnexpress/restruct/i/v76/graphics/ione.svg" alt=""></a>
            </div>
            <h4 class="title_news"><a href="https://ione.vnexpress.net/tin-tuc/video/ve-nha-di-con-tap-83-thu-soc-vi-bo-son-bo-nha-ra-di-3964350.html" target="_blank">'Về nhà đi con' tập 83: Thư sốc vì 'bố Sơn' bỏ nhà ra đi</a>
                &nbsp;<i class="ic ic-video"></i>
                <a class="icon_commend" href="https://ione.vnexpress.net/tin-tuc/video/ve-nha-di-con-tap-83-thu-soc-vi-bo-son-bo-nha-ra-di-3964350.html#box_comment" style="white-space: nowrap; display: none;">
                    <span class="txt_num_comment font_icon" data-type="comment" data-objecttype="1" data-objectid="3964350"></span>
                </a>
            </h4>
            <p class="des">Cô khóc nấc vì cho rằng mình là nguyên nhân khiến ông Sơn bỏ đi.</p>
        </li>
    </ul>
</section>
<section class="thongtin_dn" data-component-runtime="js" data-component-function="boxDoanhNghiep" data-component-input="{}">
    <header>
        Thông tin doanh nghiệp
        <a href="javascript:;" class="btn_dn_prev"><i class="ic ic-caret-left"></i></a>
        <a href="javascript:;" class="btn_dn_next"><i class="ic ic-caret-right"></i></a>
    </header>
    <ul class="wrap_list owl-carousel">
        <li class="list_dn">
            <a target="_blank" title="Hành trình 10 năm phát triển của Bệnh viện Đa khoa Quốc tế Thiên Đức" href="https://vnexpress.net/kinh-doanh/hanh-trinh-10-nam-phat-trien-cua-benh-vien-da-khoa-quoc-te-thien-duc-3963107.html">
                <img src="https://i-kinhdoanh.vnecdn.net/2019/08/08/image001-1565228110-7777-1565228201_300x180.png" class="vne_lazy_image" data-original="https://i-kinhdoanh.vnecdn.net/2019/08/08/image001-1565228110-7777-1565228201_300x180.png" alt="Hành trình 10 năm phát triển của Bệnh viện Đa khoa Quốc tế Thiên Đức">
                Hành trình 10 năm phát triển của Bệnh viện Đa khoa Quốc tế Thiên Đức </a>
        </li>
        <li class="list_dn">
            <a target="_blank" title="PewPew thông báo rút khỏi giải trí để chuyển sang kinh doanh" href="https://vnexpress.net/kinh-doanh/pewpew-thong-bao-rut-khoi-giai-tri-de-chuyen-sang-kinh-doanh-3964234.html">
                <img src="https://i-kinhdoanh.vnecdn.net/2019/08/08/1533641167-w500-1565226587-5880-1565226634_300x180.png" class="vne_lazy_image" data-original="https://i-kinhdoanh.vnecdn.net/2019/08/08/1533641167-w500-1565226587-5880-1565226634_300x180.png" alt="PewPew thông báo rút khỏi giải trí để chuyển sang kinh doanh">
                PewPew thông báo rút khỏi giải trí để chuyển sang kinh doanh </a>
        </li>
        <li class="list_dn">
            <a target="_blank" title="Trải nghiệm Tokyo đa sắc màu với vé tàu điện ngầm Tokyo Metro" href="https://vnexpress.net/kinh-doanh/trai-nghiem-tokyo-da-sac-mau-voi-ve-tau-dien-ngam-tokyo-metro-3964070.html">
                <img src="https://i-kinhdoanh.vnecdn.net/2019/08/07/7-8-201916-w500-1565171632-1670-1565171855_300x180.png" class="vne_lazy_image" data-original="https://i-kinhdoanh.vnecdn.net/2019/08/07/7-8-201916-w500-1565171632-1670-1565171855_300x180.png" alt="Trải nghiệm Tokyo đa sắc màu với vé tàu điện ngầm Tokyo Metro">
                Trải nghiệm Tokyo đa sắc màu với vé tàu điện ngầm Tokyo Metro </a>
        </li>
        <li class="list_dn">
            <a target="_blank" title="Công dụng hỗ trợ phòng ngừa bệnh của rong nâu, nấm Agaricus" href="https://vnexpress.net/suc-khoe/cong-dung-ho-tro-phong-ngua-benh-cua-rong-nau-nam-agaricus-3963943.html">
                <img src="https://i-suckhoe.vnecdn.net/2019/08/07/thi-1565150163-2935-1565151634_300x180.png" class="vne_lazy_image" data-original="https://i-suckhoe.vnecdn.net/2019/08/07/thi-1565150163-2935-1565151634_300x180.png" alt="Công dụng hỗ trợ phòng ngừa bệnh của rong nâu, nấm Agaricus">
                Công dụng hỗ trợ phòng ngừa bệnh của rong nâu, nấm Agaricus </a>
        </li>
        <li class="list_dn">
            <a target="_blank" title="Sabeco ra mắt diện mạo mới của thương hiệu Bia Saigon" href="https://vnexpress.net/kinh-doanh/sabeco-ra-mat-dien-mao-moi-cua-thuong-hieu-bia-saigon-3964099.html">
                <img src="https://i-kinhdoanh.vnecdn.net/2019/08/07/962617811-w500-1565162499-9534-1565162642_300x180.png" class="vne_lazy_image" data-original="https://i-kinhdoanh.vnecdn.net/2019/08/07/962617811-w500-1565162499-9534-1565162642_300x180.png" alt="Sabeco ra mắt diện mạo mới của thương hiệu Bia Saigon">
                Sabeco ra mắt diện mạo mới của thương hiệu Bia Saigon </a>
        </li>
        <li class="list_dn">
            <a target="_blank" title="Chính sách 'thu cũ, đổi mới' tại hệ thống Vua Nệm" href="https://vnexpress.net/kinh-doanh/chinh-sach-thu-cu-doi-moi-tai-he-thong-vua-nem-3963631.html">
                <img src="https://i-kinhdoanh.vnecdn.net/2019/08/07/2046661455-w500-1565161384-6522-1565161438_300x180.png" class="vne_lazy_image" data-original="https://i-kinhdoanh.vnecdn.net/2019/08/07/2046661455-w500-1565161384-6522-1565161438_300x180.png" alt="Chính sách 'thu cũ, đổi mới' tại hệ thống Vua Nệm">
                Chính sách 'thu cũ, đổi mới' tại hệ thống Vua Nệm </a>
        </li>
        <li class="list_dn">
            <a target="_blank" title="Chính sách tích tem tại Co.opmart kết thúc vào 7/8" href="https://vnexpress.net/kinh-doanh/chinh-sach-tich-tem-tai-co-opmart-ket-thuc-vao-7-8-3963718.html">
                <img src="https://i-kinhdoanh.vnecdn.net/2019/08/07/828554088-w500-1565150228-4237-1565150263_300x180.png" class="vne_lazy_image" data-original="https://i-kinhdoanh.vnecdn.net/2019/08/07/828554088-w500-1565150228-4237-1565150263_300x180.png" alt="Chính sách tích tem tại Co.opmart kết thúc vào 7/8">
                Chính sách tích tem tại Co.opmart kết thúc vào 7/8 </a>
        </li>
        <li class="list_dn">
            <a target="_blank" title="PTI góp phần lan tỏa phong trào sống xanh tới cộng đồng" href="https://vnexpress.net/kinh-doanh/pti-gop-phan-lan-toa-phong-trao-song-xanh-toi-cong-dong-3963668.html">
                <img src="https://i-kinhdoanh.vnecdn.net/2019/08/07/6-8-201938-67876617-w500-15651-6372-7646-1565146944_300x180.png" class="vne_lazy_image" data-original="https://i-kinhdoanh.vnecdn.net/2019/08/07/6-8-201938-67876617-w500-15651-6372-7646-1565146944_300x180.png" alt="PTI góp phần lan tỏa phong trào sống xanh tới cộng đồng">
                PTI góp phần lan tỏa phong trào sống xanh tới cộng đồng </a>
        </li>
        <li class="list_dn">
            <a target="_blank" title="Hành trình chăm sóc sắc đẹp cho thí sinh Miss World Vietnam của cố vấn Xuân Hương" href="https://vnexpress.net/kinh-doanh/hanh-trinh-cham-soc-sac-dep-cho-thi-sinh-miss-world-vietnam-cua-co-van-xuan-huong-3963734.html">
                <img src="https://i-kinhdoanh.vnecdn.net/2019/08/07/1490256449-w500-1565141808-9801-1565141964_300x180.png" class="vne_lazy_image" data-original="https://i-kinhdoanh.vnecdn.net/2019/08/07/1490256449-w500-1565141808-9801-1565141964_300x180.png" alt="Hành trình chăm sóc sắc đẹp cho thí sinh Miss World Vietnam của cố vấn Xuân Hương">
                Hành trình chăm sóc sắc đẹp cho thí sinh Miss World Vietnam của cố vấn Xuân Hương </a>
        </li>
        <li class="list_dn">
            <a target="_blank" title="Đồng hồ Atlantic dành cho giới thượng lưu" href="https://vnexpress.net/kinh-doanh/dong-ho-atlantic-danh-cho-gioi-thuong-luu-3962834.html">
                <img src="https://i-kinhdoanh.vnecdn.net/2019/08/05/1925472209-w500-2385-1564988457_300x180.png" class="vne_lazy_image" data-original="https://i-kinhdoanh.vnecdn.net/2019/08/05/1925472209-w500-2385-1564988457_300x180.png" alt="Đồng hồ Atlantic dành cho giới thượng lưu">
                Đồng hồ Atlantic dành cho giới thượng lưu </a>
        </li>
        <li class="list_dn">
            <a target="_blank" title="Nhiều chương trình thú vị tại triển lãm thực phẩm, đồ uống, thiết bị công nghệ" href="https://vnexpress.net/kinh-doanh/nhieu-chuong-trinh-thu-vi-tai-trien-lam-thuc-pham-do-uong-thiet-bi-cong-nghe-3961973.html">
                <img src="https://i-kinhdoanh.vnecdn.net/2019/08/02/vinexad-dnv-thucpham-bai2-3-15-2759-3274-1564741345_300x180.png" class="vne_lazy_image" data-original="https://i-kinhdoanh.vnecdn.net/2019/08/02/vinexad-dnv-thucpham-bai2-3-15-2759-3274-1564741345_300x180.png" alt="Nhiều chương trình thú vị tại triển lãm thực phẩm, đồ uống, thiết bị công nghệ">
                Nhiều chương trình thú vị tại triển lãm thực phẩm, đồ uống, thiết bị công nghệ </a>
        </li>
        <li class="list_dn">
            <a target="_blank" title="Doanh nghiệp vận tải và bí quyết vận hành êm ái, an toàn trên mọi nẻo đường" href="https://vnexpress.net/kinh-doanh/doanh-nghiep-van-tai-va-bi-quyet-van-hanh-em-ai-an-toan-tren-moi-neo-duong-3961828.html">
                <img src="https://i-kinhdoanh.vnecdn.net/2019/08/06/1159484000-w500-1565060354-6912-1565060366_300x180.png" class="vne_lazy_image" data-original="https://i-kinhdoanh.vnecdn.net/2019/08/06/1159484000-w500-1565060354-6912-1565060366_300x180.png" alt="Doanh nghiệp vận tải và bí quyết vận hành êm ái, an toàn trên mọi nẻo đường">
                Doanh nghiệp vận tải và bí quyết vận hành êm ái, an toàn trên mọi nẻo đường </a>
        </li>
        <li class="list_dn">
            <a target="_blank" title="CEO AVS: 'Luật EB-5 mới có lợi cho dự án thuộc vùng TEA'" href="https://vnexpress.net/kinh-doanh/ceo-avs-luat-eb-5-moi-co-loi-cho-du-an-thuoc-vung-tea-3961464.html">
                <img src="https://i-kinhdoanh.vnecdn.net/2019/08/04/1437718086-w500-1564930056-2122-1564930097_300x180.png" class="vne_lazy_image" data-original="https://i-kinhdoanh.vnecdn.net/2019/08/04/1437718086-w500-1564930056-2122-1564930097_300x180.png" alt="CEO AVS: 'Luật EB-5 mới có lợi cho dự án thuộc vùng TEA'">
                CEO AVS: 'Luật EB-5 mới có lợi cho dự án thuộc vùng TEA' </a>
        </li>
        <li class="list_dn">
            <a target="_blank" title="Hahalolo khai trương chi nhánh mới tại Hà Nội" href="https://vnexpress.net/kinh-doanh/hahalolo-khai-truong-chi-nhanh-moi-tai-ha-noi-3933008.html">
                <img src="https://i-kinhdoanh.vnecdn.net/2019/06/03/3-6-201954-899838748-w500-1559-4820-4382-1559548666_300x180.png" class="vne_lazy_image" data-original="https://i-kinhdoanh.vnecdn.net/2019/06/03/3-6-201954-899838748-w500-1559-4820-4382-1559548666_300x180.png" alt="Hahalolo khai trương chi nhánh mới tại Hà Nội">
                Hahalolo khai trương chi nhánh mới tại Hà Nội </a>
        </li>
        <li class="list_dn">
            <a target="_blank" title="Hảo Hảo trao những cặp vé đi Maldives đầu tiên cho khách hàng may mắn" href="https://vnexpress.net/kinh-doanh/hao-hao-trao-nhung-cap-ve-di-maldives-dau-tien-cho-khach-hang-may-man-3958617.html">
                <img src="https://i-kinhdoanh.vnecdn.net/2019/08/05/1109286541-w500-1564988816-3670-1564993961_300x180.png" class="vne_lazy_image" data-original="https://i-kinhdoanh.vnecdn.net/2019/08/05/1109286541-w500-1564988816-3670-1564993961_300x180.png" alt="Hảo Hảo trao những cặp vé đi Maldives đầu tiên cho khách hàng may mắn">
                Hảo Hảo trao những cặp vé đi Maldives đầu tiên cho khách hàng may mắn </a>
        </li>
        <li class="list_dn">
            <a target="_blank" title="Một triệu vé máy bay quốc tế Vietjet giá từ 0 đồng" href="https://vnexpress.net/kinh-doanh/mot-trieu-ve-may-bay-quoc-te-vietjet-gia-tu-0-dong-3962970.html">
                <img src="https://i-kinhdoanh.vnecdn.net/2019/08/05/5-8-201947-832369441-w500-1564-7026-4190-1564989824_300x180.png" class="vne_lazy_image" data-original="https://i-kinhdoanh.vnecdn.net/2019/08/05/5-8-201947-832369441-w500-1564-7026-4190-1564989824_300x180.png" alt="Một triệu vé máy bay quốc tế Vietjet giá từ 0 đồng">
                Một triệu vé máy bay quốc tế Vietjet giá từ 0 đồng </a>
        </li>
        <li class="list_dn">
            <a target="_blank" title="Nguyên nhân và cách nhận biết chàm sữa ở trẻ nhỏ" href="https://vnexpress.net/kinh-doanh/nguyen-nhan-va-cach-nhan-biet-cham-sua-o-tre-nho-3957839.html">
                <img src="https://i-kinhdoanh.vnecdn.net/2019/08/01/cham-sua-o-tre-nho-1564647331-7111-1564649873_300x180.png" class="vne_lazy_image" data-original="https://i-kinhdoanh.vnecdn.net/2019/08/01/cham-sua-o-tre-nho-1564647331-7111-1564649873_300x180.png" alt="Nguyên nhân và cách nhận biết chàm sữa ở trẻ nhỏ">
                Nguyên nhân và cách nhận biết chàm sữa ở trẻ nhỏ </a>
        </li>
        <li class="list_dn">
            <a target="_blank" title="FDA nói về túi ngực và nỗi lo bệnh tật sau nâng cấp vòng một" href="https://vnexpress.net/suc-khoe/fda-noi-ve-tui-nguc-va-noi-lo-benh-tat-sau-nang-cap-vong-mot-3959825.html">
                <img src="https://i-suckhoe.vnecdn.net/2019/08/01/2133424392-w660-1564652802-5246-1564652822_300x180.png" class="vne_lazy_image" data-original="https://i-suckhoe.vnecdn.net/2019/08/01/2133424392-w660-1564652802-5246-1564652822_300x180.png" alt="FDA nói về túi ngực và nỗi lo bệnh tật sau nâng cấp vòng một">
                FDA nói về túi ngực và nỗi lo bệnh tật sau nâng cấp vòng một </a>
        </li>
        <li class="list_dn">
            <a target="_blank" title="Anker Innovations ra mắt giải pháp tiên tiến trong phân khúc điện tử tiêu dùng tại Việt Nam" href="https://vnexpress.net/kinh-doanh/anker-innovations-ra-mat-giai-phap-tien-tien-trong-phan-khuc-dien-tu-tieu-dung-tai-viet-nam-3961964.html">
                <img src="https://i-kinhdoanh.vnecdn.net/2019/08/03/2-8-20191-w500-1564751496-8582-1564808450_300x180.png" class="vne_lazy_image" data-original="https://i-kinhdoanh.vnecdn.net/2019/08/03/2-8-20191-w500-1564751496-8582-1564808450_300x180.png" alt="Anker Innovations ra mắt giải pháp tiên tiến trong phân khúc điện tử tiêu dùng tại Việt Nam">
                Anker Innovations ra mắt giải pháp tiên tiến trong phân khúc điện tử tiêu dùng tại Việt Nam </a>
        </li>
        <li class="list_dn">
            <a target="_blank" title="Nhận trọn bộ quà tặng chăm sóc da khi mua hàng tại Vascara" href="https://vnexpress.net/kinh-doanh/nhan-tron-bo-qua-tang-cham-soc-da-khi-mua-hang-tai-vascara-3961626.html">
                <img src="https://i-kinhdoanh.vnecdn.net/2019/08/02/1-8-201947-w500-1564710010-5950-1564738554_300x180.png" class="vne_lazy_image" data-original="https://i-kinhdoanh.vnecdn.net/2019/08/02/1-8-201947-w500-1564710010-5950-1564738554_300x180.png" alt="Nhận trọn bộ quà tặng chăm sóc da khi mua hàng tại Vascara">
                Nhận trọn bộ quà tặng chăm sóc da khi mua hàng tại Vascara </a>
        </li>
    </ul>
</section>
<section class="box_sp" style="display:none" id="box_shop_footer" data-component-runtime="js" data-component-function="thirdparty" data-component-input='{"type":"boxEcommerce","position":"footer","page":"home"}'>
</section> <!-- END CONTENT  -->
<!-- FOOTER -->
<footer data-component-runtime="js" data-component-function="initLayout" data-component-input="{}" id="wrapper_footer">
    <p class="top_footer clearfix">
        <a title="" href="https://vnexpress.net">Trang chủ</a>
        <a class="link_twitter right" href="https://twitter.com/VnEnews">
            <i class="ic ic-twitter"></i>
        </a>
        <a class="link_fb right" href="https://www.facebook.com/congdongvnexpress/">
            <i class="ic ic-facebook"></i>
        </a>
        <a class="search_bottom right" title="" href="//timkiem.vnexpress.net/">
            <i class="ic ic-search"></i> Tìm kiếm
        </a>
        <a href="/lien-he-quang-cao/" title="Liên hệ quảng cáo" class="box_ad">
            <i class="ic ic-ad"></i>Liên hệ quảng cáo
        </a>
    </p>
    <div class="row_menu">
        <ul>
            <li class="parent"><h6><a class="mnu_thoisu" href="https://video.vnexpress.net">Video</a></h6></li>
            <li class="parent"><h6><a class="mnu_thoisu" title="" href="https://vnexpress.net/thoi-su">Thời sự</a></h6></li>
            <li class="parent"><h6><a class="mnu_gocnhin" href="https://vnexpress.net/goc-nhin" title="">Góc nhìn</a></h6></li>
            <li class="parent"><h6><a class="mnu_thegioi" href="https://vnexpress.net/the-gioi" title="">Thế giới</a></h6></li>
        </ul>
        <ul>
            <li class="parent"><h6><a class="mnu_kinhdoanh" href="https://vnexpress.net/kinh-doanh" title="">Kinh doanh</a></h6></li>
            <li class="parent"><h6><a class="mnu_giaitri" href="https://vnexpress.net/giai-tri">Giải trí</a></h6></li>
            <li class="parent"><h6><a class="mnu_thethao" href="https://vnexpress.net/the-thao">Thể thao</a></h6></li>
            <li class="parent"><h6><a class="mnu_phapluat" href="https://vnexpress.net/phap-luat" title="">Pháp luật</a></h6></li>
        </ul>
        <ul>
            <li class="parent"><h6><a class="mnu_giaoduc" href="https://vnexpress.net/giao-duc" title="">Giáo dục</a></h6></li>
            <li class="parent"><h6><a class="mnu_suckhoe" title="" href="https://vnexpress.net/suc-khoe">Sức khỏe</a></h6></li>
            <li class="parent"><h6><a class="mnu_doisong" href="https://vnexpress.net/doi-song" title="">Đời sống</a></h6></li>
            <li class="parent"><h6><a class="mnu_dulich" href="https://vnexpress.net/du-lich" title="">Du lịch</a></h6></li>
        </ul>
        <ul>
            <li class="parent"><h6><a class="mnu_khoahoc" href="/khoa-hoc">Khoa học</a></h6></li>
            <li class="parent"><h6><a class="mnu_sohoa" href="https://vnexpress.net/so-hoa" title="">Số hóa</a></h6></li>
            <li class="parent"><h6><a class="mnu_xe" href="/oto-xe-may">Xe</a></h6></li>
            <li class="parent"><h6><a class="mnu_congdong" href="/y-kien">Ý kiến</a></h6></li>
        </ul>
        <ul>
            <li class="parent"><h6><a class="mnu_tamsu" href="/tam-su">Tâm sự</a></h6></li>
            <li class="parent"><h6><a class="mnu_cuoi" href="/cuoi">Cười</a></h6></li>
            <li class="parent"><h6><a class="mnu_thoisu" href="https://vnexpress.net/anh">Ảnh</a></h6></li>
            <li class="parent"><h6><a class="mnu_thoisu" href="https://vnexpress.net/infographics">Infographics</a></h6></li>
        </ul>
        <ul>
            <li class="parent"><h6><a class="mnu_thoisu" href="http://raovat.vnexpress.net">Fsell</a></h6></li>
            <li class="parent"><h6><a class="mnu_thoisu" href="https://shop.vnexpress.net/">Shop VnExpress</a></h6></li>
            <li class="parent"><h6><a class="mnu_thoisu" href="https://pay.vnexpress.net/">Pay VnExpress</a></h6></li>
            <li class="parent"><h6><a class="mnu_thoisu" href="https://my.vnexpress.net/qua-tang/?utm_campaign=VNEXPRESS&utm_source=footer&utm_medium=menu">Quà tặng</a></h6></li>
        </ul>
        <div class="vne_app">
            <h6>Tải ứng dụng</h6>
            <div class="tab_app">
                <a href="#app_vne" class="active logo_app">VnExpress</a>
                <a href="#app_evne" class="logo_app">International</a>
            </div>
            <div class="warp">
                <div id="app_vne" class="tab-content">
                    <div class="link_app">
                        <a href="https://click.google-analytics.com/redirect?tid=UA-41193011-3&url=https%3A%2F%2Fitunes.apple.com%2Fvn%2Fapp%2Fvnexpress-net%2Fid488630446%3Fl%3Dvi%26mt%3D8&aid=net.vnexpress.iphone&idfa={idfa}&cs=google&cm=cpc&anid=admob&hash=md5"><img alt="" src="https://s.vnecdn.net/vnexpress/i/v46/graphics/apple_app.png"></a>
                        <a href="https://play.google.com/store/apps/details?id=fr.playsoft.vnexpress&referrer=utm_source%3Dgoogle%26utm_medium%3Dbanner%26anid%3Dadmob"><img alt="" src="https://s.vnecdn.net/vnexpress/i/v46/graphics/android_app.png"></a>
                    </div>
                    <div class="qr_code"><img alt="" src="https://s.vnecdn.net/vnexpress/restruct/i/v76/graphics/qr_app.jpg"></div>
                </div>
                <div id="app_evne" class="tab-content" style="display:none">
                    <div class="link_app">
                        <a href="https://itunes.apple.com/vn/app/vnexpress-international/id1435726486?mt=8"><img alt="" src="https://s.vnecdn.net/vnexpress/i/v46/graphics/apple_app.png"></a>
                        <a href="https://play.google.com/store/apps/details?id=fo.vnexpress.eng"><img alt="" src="https://s.vnecdn.net/vnexpress/i/v46/graphics/android_app.png"></a>
                    </div>
                    <div class="qr_code"><img src="https://s.vnecdn.net/vnexpress/restruct/i/v76/graphics/qr_app_en.png" alt="QRCode"></div>
                </div>
            </div>
        </div>
    </div>
    <!--Tablet-->
    <div class="row_menu_tablet">
        <p class="top_footer_tablet clearfix">
            <a title="" href="https://vnexpress.net">Trang chủ</a>
            <a class="search_bottom right" title="" href="https://timkiem.vnexpress.net">
                <i class="ic ic-search"></i>
            </a>
            <a class="link_twitter right" href="https://twitter.com/VnEnews">
                <i class="ic ic-twitter"></i>
            </a>
            <a class="link_fb right" href="https://www.facebook.com/congdongvnexpress/">
                <i class="ic ic-facebook"></i>
            </a>
            <a href="#" class="app_vne right"><img src="https://s.vnecdn.net/vnexpress/restruct/i/v76/icons/logo_vne_app.png" alt="Tải VnExpress App">Tải VnExpress App</a>
        </p>
        <ul>
            <li class="parent"><h6><a class="mnu_thoisu" href="https://video.vnexpress.net">Video</a></h6></li>
            <li class="parent"><h6><a class="mnu_thoisu" title="" href="https://vnexpress.net/thoi-su">Thời sự</a></h6></li>
            <li class="parent"><h6><a class="mnu_gocnhin" href="https://vnexpress.net/goc-nhin" title="">Góc nhìn</a></h6></li>
            <li class="parent"><h6><a class="mnu_thegioi" href="https://vnexpress.net/the-gioi" title="">Thế giới</a></h6></li>
            <li class="parent"><h6><a class="mnu_kinhdoanh" href="https://vnexpress.net/kinh-doanh" title="">Kinh doanh</a></h6></li>
            <li class="parent"><h6><a class="mnu_giaitri" href="https://vnexpress.net/giai-tri">Giải trí</a></h6></li>
            <li class="parent"><h6><a class="mnu_thethao" href="https://vnexpress.net/the-thao">Thể thao</a></h6></li>
            <li class="parent"><h6><a class="mnu_phapluat" href="https://vnexpress.net/phap-luat" title="">Pháp luật</a></h6></li>
            <li class="parent"><h6><a class="mnu_giaoduc" href="https://vnexpress.net/giao-duc" title="">Giáo dục</a></h6></li>
            <li class="parent"><h6><a class="mnu_suckhoe" title="" href="">Sức khỏe</a></h6></li>
            <li class="parent"><h6><a class="mnu_doisong" href="" title="">Đời sống</a></h6></li>
            <li class="parent"><h6><a class="mnu_dulich" href="https://vnexpress.net/du-lich" title="">Du lịch</a></h6></li>
            <li class="parent"><h6><a class="mnu_khoahoc" href="/khoa-hoc">Khoa học</a></h6></li>
            <li class="parent"><h6><a class="mnu_sohoa" href="https://vnexpress.net/so-hoa" title="">Số hóa</a></h6></li>
            <li class="parent"><h6><a class="mnu_xe" href="/oto-xe-may">Xe</a></h6></li>
            <li class="parent"><h6><a class="mnu_congdong" href="/y-kien">Ý kiến</a></h6></li>
            <li class="parent"><h6><a class="mnu_tamsu" href="/tam-su">Tâm sự</a></h6></li>
            <li class="parent"><h6><a class="mnu_cuoi" href="/cuoi">Cười</a></h6></li>
            <li class="parent"><h6><a class="mnu_thoisu" href="https://vnexpress.net/anh">Ảnh</a></h6></li>
            <li class="parent"><h6><a class="mnu_thoisu" href="https://vnexpress.net/infographics">Infographics</a></h6></li>
            <li class="parent"><h6><a class="mnu_thoisu" href="http://raovat.vnexpress.net">Fsell</a></h6></li>
            <li class="parent"><h6><a class="mnu_thoisu" href="https://shop.vnexpress.net/">Shop VnExpress</a></h6></li>
            <li class="parent"><h6><a class="mnu_thoisu" href="https://pay.vnexpress.net">Pay VnExpress</a></h6></li>
            <li class="parent"><h6><a class="mnu_thoisu" href="https://my.vnexpress.net/qua-tang/?utm_campaign=VNEXPRESS&utm_source=footer&utm_medium=menu">Quà tặng</a></h6></li>
        </ul>
    </div>
    <!--End Tablet-->
    <ul class="tttoasoan">
        <li><a href="/lien-he-quang-cao/">Liên hệ quảng cáo</a></li>
        <li>Đường dây nóng</li>
        <li>Liên hệ tòa soạn</li>
        <li> <strong>083.888.0123</strong> (HN) - <strong>082.233.3555</strong> (TP HCM)</li>
    </ul>
    <div class="bottom_footer">
        <a class="logo_bottom left" href="/"><img src="https://s.vnecdn.net/vnexpress/restruct/i/v76/graphics/img_logo_vne.svg" alt="VnExpress"></a>
        <div class="bottom_footer_1 left">
            <p>© Copyright 1997 VnExpress. All rights reserved.</p>
            <p>Thuộc Bộ Khoa học Công nghệ. Toàn bộ bản quyền thuộc VnExpress.</p>
        </div>
        <div class="bottom_footer_2 right">
            <p><!--<a href="/tuyen-dung.html">VnExpress tuyển dụng</a>--> <a href="/lien-he-toa-soan/">Liên hệ tòa soạn</a></p>
            <p><i class="ic ic-phone"></i>: <strong>083.888.0123</strong> (HN) - <strong>082.233.3555</strong> (TP HCM)</p>
        </div>
    </div>
</footer> <!-- End FOOTER -->
<!--Mobile menu-->
<div class="mask-content"> </div>
<nav id="main_meu" class="main_menu m_menu">
<span class="close_main_menu ">
&times;
</span>
    <div class="block_scoll_menu width_common ">
        <div class="block_search">
            <form action="https://timkiem.vnexpress.net/" method="get" id="search">
                <input maxlength="80" name="q" class="input_search" placeholder="Tìm kiếm" type="text">
                <button type="text" class="icon_menu_phone btn_search" value=""><i class="ic ic-search"></i></button>
            </form>
        </div>
        <div class="block_swich_en_mobile">
            Phiên bản: <a href="https://e.vnexpress.net" title="VnExpress International – Vietnam and ASEAN news" target="_blank"><i class="ic ic-vnexpress"></i>VnExpress International – Vietnam and ASEAN news</a>
        </div>
        <ul class="list_item_panel width_common">
            <li><a href="https://vnexpress.net"><i class="ic ic-m-home"></i>Trang chủ</a></li>
            <li><a href="//video.vnexpress.net"><i class="ic ic-m-video"></i>Video</a></li>
            <li><a href="/thoi-su"><i class="ic ic-m-news"></i>Thời sự</a></li>
            <li><a href="/goc-nhin"><i class="ic ic-m-opinion"></i>Góc nhìn</a></li>
            <li><a href="/the-gioi"><i class="ic ic-m-world"></i>Thế giới</a></li>
            <li><a href="https://vnexpress.net/kinh-doanh"><i class="ic ic-m-business"></i>Kinh doanh</a></li>
            <li><a href="https://vnexpress.net/giai-tri"><i class="ic ic-m-entertainment"></i>Giải trí</a></li>
            <li><a href="https://vnexpress.net/the-thao"><i class="ic ic-m-sport"></i>Thể thao</a></li>
            <li><a href="/phap-luat"><i class="ic ic-m-law"></i>Pháp luật</a></li>
            <li><a href="/giao-duc"><i class="ic ic-m-education"></i>Giáo dục</a></li>
            <li><a href="https://vnexpress.net/suc-khoe"><i class="ic ic-m-health"></i>Sức khỏe</a></li>
            <li><a href="https://vnexpress.net/doi-song"><i class="ic ic-m-family"></i>Đời sống</a></li>
            <li><a href="https://vnexpress.net/du-lich"><i class="ic ic-m-travel"></i>Du lịch</a></li>
            <li><a href="/khoa-hoc"><i class="ic ic-m-science"></i>Khoa học</a></li>
            <li><a href="https://vnexpress.net/so-hoa"><i class="ic ic-m-technology"></i>Số hóa</a></li>
            <li><a href="/oto-xe-may"><i class="ic ic-m-car"></i>Xe</a></li>
            <li><a href="/y-kien"><i class="ic ic-m-social"></i>Ý kiến</a></li>
            <li><a href="/tam-su"><i class="ic ic-m-talk"></i>Tâm sự</a></li>
            <li><a href="/anh"><i class="ic ic-m-photo"></i>Ảnh </a></li>
            <li><a href="/infographics"><i class="ic ic-m-infographic"></i>Infographics </a></li>
            <li><a href="/cuoi"><i class="ic ic-m-fun"></i>Cười</a></li>
            <li><a href="https://raovat.vnexpress.net"><i class="ic ic-m-ecom"></i>Fsell</a></li>
            <li><a href="/24h-qua" class="bg_666"><i class="ic ic-m-24h"></i>24h qua</a></li>
            <li><a href="/lien-he-toa-soan/" class="bg_e8e8"><i class="ic ic-m-contact"></i>Liên hệ Tòa soạn</a></li>
            <li><a href="/lien-he-quang-cao/" class="bg_e8e8"><i class="ic ic-ad"></i>Liên hệ quảng cáo</a></li>
            <li class="end"><a href="/contact.htm" class="bg_e8e8"><i class="ic ic-m-mail"></i>Thông tin Tòa soạn</a></li>
        </ul>
        <div class="coppy_right_left width_common">
            Thuộc Bộ Khoa học Công nghệ.
            <p>© Copyright 1997 VnExpress, All rights reserved</p>
            <p>® VnExpress giữ bản quyền nội dung trên website này.</p>
            Hotline:<br>
            <a><span>083.888.0123</span> (Hà Nội)</a> <br>
            <a><span>082.233.3555</span> (TP HCM) </a>
        </div>
    </div>
</nav>
<!-- FloatingBanner -->
<!-- END FloatingBanner -->
<!-- Gắn zone In-Images -->
<!-- END Gắn zone In-Images -->
<ins class="adsbycpx" data-zone="" data-ad-width="120" data-ad-height="300" data-ad="112" data-type="5"></ins><script>(cpxad=window.cpxad||[]).push({});</script>
<ins class="adsbycpx" data-zone="" data-ad-width="120" data-ad-height="300" data-ad="102" data-type="5"></ins><script>(cpxad=window.cpxad||[]).push({});</script>
<ins class="adsbycpx" data-zone="" data-ad-width="0" data-ad-height="0" data-ad="604" data-type="5"></ins><script>(cpxad=window.cpxad||[]).push({});</script>
<!--End Mobile menu-->
<a href="javascript:;" id="to_top"><i class="ic ic-arrow-up"></i></a>
<script defer data-main="https://s.vnecdn.net/vnexpress/restruct/j/v430/v2/main.js" src="https://s.vnecdn.net/vnexpress/restruct/j/v430/v2/require.js"></script>
<script type="text/javascript" src="https://s.vnecdn.net/vnexpress/restruct/j/v430/v2/helper/adsv1.js" async></script>
<script type="text/javascript" src="//s.eclick.vn/delivery/eclick.js" async></script>
<div id="tt_end_page" style="display: none;"></div></body>
</html>

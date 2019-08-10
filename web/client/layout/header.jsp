        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                <%@ page contentType="text/html;charset=UTF-8" language="java" %>

            <%
                    request.setAttribute("url", request.getRequestURL().toString());
            %>

        <title>${param.title}</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=100"/>
        <link rel="canonical"
        href="${url}"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="dns-prefetch" href="//s.eclick.vn"/>
        <link rel="dns-prefetch" href="//s.vnecdn.net"/>
        <link rel="dns-prefetch" href="//la.vnecdn.net"/>
        <link rel="dns-prefetch" href="https://usi-saas.vnexpress.net"/>
        <link rel="dns-prefetch" href="//core.polyad.net"/>
        <link rel="dns-prefetch" href="//www.google-analytics.com"/>
        <link rel="dns-prefetch" href="//www.googletagmanager.com"/>
        <meta name="apple-mobile-web-app-capable" content="yes"/>
        <meta name="apple-mobile-web-app-title" content="${param.title}"/>
        <meta name="description" content="Tin nhanh lá cải LettuceNews. Chuyên crawl & luôn crawl VNExpress">
        <meta name="keywords" content="tin tức, lá cải, lettuce, cải bắp, news, crawl, quanganh9x, vnexpress">
        <!-- add meta for pvtt3334 -->
        <!-- end meta for pvtt -->
        <!-- META FOR FACEBOOK -->
                <meta name="tt_article_id" content="1000000"/>
                <meta name="tt_page_type" content="site"/>
                <meta name="tt_category_id" content="1000000"/>
                <meta name="tt_site_id" content="1000000"/>
        <meta content="Tin nhanh LettuceNews" property="og:site_name"/>
        <meta property="og:url" itemprop="url"
        content="${url}"/>
        <meta content="news" itemprop="genre" name="medium"/>
        <meta content="vi-VN" itemprop="inLanguage"/>
        <meta content="Tin nhanh LettuceNews" itemprop="sourceOrganization" name="source"/>
        <meta name="copyright" content="LettuceNews"/>
        <meta name="author" content="LettuceNews"/>
        <meta name="robots" content="index, follow">
        <meta name="geo.placename" content="Ha Noi, Viet Nam"/>
        <meta name="geo.region" content="VN-HN"/>
        <meta name="geo.position" content="21.030624;105.782431"/>
        <meta name="ICBM" content="21.030624, 105.782431"/>
        <meta name="revisit-after" content="days">
        <link rel="alternate"
        href="${url}"
        hreflang="vi-vn"/>
        <!-- iPad icons -->
        <link rel="apple-touch-icon-precomposed" href="https://s.vnecdn.net/vnexpress/restruct/i/v76/logos/72x72.png"
        sizes="72x72">
        <link rel="apple-touch-icon-precomposed" href="https://s.vnecdn.net/vnexpress/restruct/i/v76/logos/114x114.png"
        sizes="144x144">
        <!-- iPhone and iPod touch icons -->
        <link rel="apple-touch-icon-precomposed" href="https://s.vnecdn.net/vnexpress/restruct/i/v76/logos/57x57.png"
        sizes="57x57">
        <link rel="apple-touch-icon-precomposed" href="https://s.vnecdn.net/vnexpress/restruct/i/v76/logos/114x114.png"
        sizes="114x114">
        <!-- Nokia Symbian -->
        <link rel="nokia-touch-icon" href="https://s.vnecdn.net/vnexpress/restruct/i/v76/logos/57x57.png">
        <!-- Android icon precomposed so it takes precedence -->
        <link rel="apple-touch-icon-precomposed" href="https://s.vnecdn.net/vnexpress/restruct/i/v76/logos/114x114.png"
        sizes="1x1">
        <script type="text/javascript"></script><meta name="tt_page_ads" content="0"><meta name="tt_page_special" content="0">
            <meta name="its_url"
        content="${url}"/>
        <meta name="its_id" content="3964246"/>
        <meta name="its_title" content="${param.title}"/>
        <meta name="its_section" content="vnexpress"/>
        <meta name="its_subsection" content="lettucenews"/>
        <meta name="its_topic" content=""/>
        <meta name="its_object" content=""/>
        <meta name="its_embed" content="0"/>
        <meta name="its_type" content="text"/>
        <link rel="stylesheet" type="text/css" href="https://s.vnecdn.net/vnexpress/restruct/c/v112/v2/pc/general.css"
        media="all">
        <link rel="stylesheet" type="text/css" href="https://s.vnecdn.net/myvne/c/v18/ls/myvne_2019.css" media="all">

        <script>var site_id=1000000,SITE_ID=1000000,PAGE_FOLDER=1000000,PAGE_DETAIL=0,parser_autoplay=0,PageHot=0;if(typeof(PAGE_FOLDER)=="undefined"){var PAGE_FOLDER;}if(PAGE_FOLDER==1000000){var _siteId="6";}else{var _siteId="5";}</script>
        <script type="text/javascript">var inter_version=2,ZONE_BRANDSAFE='',interactions_url='https://usi-saas.vnexpress.net',base_url='https://vnexpress.net',css_url='https://s.vnecdn.net/vnexpress/restruct/c/v112',js_url='https://s.vnecdn.net/vnexpress/restruct/j/v430',flash_url='https://s.vnecdn.net/vnexpress/restruct/f/v220',img_url='https://s.vnecdn.net/vnexpress/restruct/i/v76',js_url_vne='https://s.vnecdn.net/vnexpress/restruct/j/v430',css_url_vne='https://s.vnecdn.net/vnexpress/restruct/c/v112',img_url_vne='https://s.vnecdn.net/vnexpress/restruct/i/v76',flash_url_vne='https://s.vnecdn.net/vnexpress/restruct/f/v220',myvne_js='https://s.vnecdn.net/myvne/j/v24',device_env=4,eid_authen_url='https://authen.eid.vn',ZONE_ADS=0,isResizedPhoto=false;document.domain='vnexpress.net';</script>
            <!--[if lte IE 9]>
        <script src="https://s.vnecdn.net/vnexpress/restruct/j/v430/v2/helper/html5shiv.js"
        type="text/javascript"></script>
        <![endif]-->
        <script async src="https://s.vnecdn.net/vnexpress/restruct/j/v430/v2/helper/lazyload.js"
        type="text/javascript"></script> <link rel="stylesheet" type="text/css"
        href="https://s.vnecdn.net/vnexpress/restruct/c/v112/v2/pc/thoisu.css" media="all">
        <!-- VIDEO VOD SCRIPT -->
        <script type="text/javascript">var
        isSupportVOD=!1,isScriptLoaded=!1,head=document.getElementsByTagName("head")[0],istablet="";try{var
        obj=document.createElement('video');if("MediaSource"in
        window||obj.canPlayType('application/vnd.apple.mpegurl')){isSupportVOD=!0}}catch(a){console.log(a)}if(document.cookie.indexOf("device_env=4")>-1&&document.cookie.indexOf("device_env_real=2")>-1)istablet="m";if(1==isSupportVOD){var
        s_hls=document.createElement("script");s_hls.type="text/javascript";s_hls.async=!0;s_hls.src=js_url+"/v2/helper/"+istablet+"vod/hls.js";s_hls.onload=function(){var
        s_vlib=document.createElement("script");s_vlib.type="text/javascript";s_vlib.async=!0;s_vlib.src=js_url+"/v2/helper/"+istablet+"vod/video.lib.js";s_vlib.onload=function(){isScriptLoaded=!0};head.appendChild(s_vlib)};head.appendChild(s_hls);var
        scriptVOD=document.createElement("script");scriptVOD.type="text/javascript";scriptVOD.async=!0;scriptVOD.src=js_url+"/v2/helper/"+istablet+"embed_vod.js";scriptVOD.onload=function(){};head.appendChild(scriptVOD);var
        link=document.createElement("link");link.rel="stylesheet";link.type="text/css";link.href=js_url+"/v2/helper/"+istablet+"vod/video-js.css";link.media="all";head.appendChild(link);var
        scriptAds=document.createElement("script");scriptAds.type="text/javascript";scriptAds.async=!0;scriptAds.src=js_url+"/v2/helper/"+istablet+"vod/ads.js";scriptAds.onload=function(){};head.appendChild(scriptAds)}else
        if(istablet=="m"){var
        link=document.createElement("link");link.rel="stylesheet";link.type="text/css";link.href=js_url+"/v2/helper/mvod/fp-style.css";link.media="all";head.appendChild(link);var
        mfplayer=document.createElement("script");mfplayer.type="text/javascript";mfplayer.async=!0;mfplayer.src=js_url+"/v2/helper/mfplayer.js";mfplayer.onload=function(){var
        a=document.createElement("script");a.type="text/javascript";a.async=!0;a.src=js_url+"/v2/helper/membed.js";a.onload=function(){isScriptLoaded=!0};head.appendChild(a)};head.appendChild(mfplayer)}else
        script=document.createElement("script"),script.type="text/javascript",script.async=!0,script.src=js_url+"/v2/helper/embed.js",script.onload=function(){},head.appendChild(script);</script>
        <!-- END VIDEO VOD SCRIPT -->
        <script src="${pageContext.request.contextPath}/assets/js/jquery-3.4.1.min.js"></script>
        <!--End main_menu-->
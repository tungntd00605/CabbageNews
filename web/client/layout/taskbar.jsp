<%--
  Created by IntelliJ IDEA.
  User: quanganh9x
  Date: 8/13/2019
  Time: 11:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <div class="tbar">
    <div class="myvne_container">
    <ul class="myvne_contact"><li style="white-space: nowrap;"><span class="timer"></span></li></ul>
    <ul class="myvne_form_log">
    <li class="block_search_web">
    <div class="left">
    <div id="searchBox"><input type="text" class="txt_input" name="query"
    placeholder="Tìm kiếm">
    <button class="icon_seach_web"><i class="ic ic-search"></i></button>
    </div>
    </div>
    </li>
    </ul>
    <div class="clear"></div>
    </div>
    </div>
    <script>
        $(document).ready(() => {
            $("#searchBox > button").click((e) => {
                e.preventDefault();
                const q = $("#searchBox > input").val();
                window.open("${pageContext.request.contextPath}/search?query=" + q, "_blank");
            });
        });
    </script>

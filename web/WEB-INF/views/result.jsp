<%--
  Created by IntelliJ IDEA.
  User: 27438
  Date: 2018/8/9
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link id="data-uikit-theme" rel="stylesheet" href="/my/dist/css/uikit.almost-flat.css">

    <link id="data-uikit-theme1" rel="stylesheet" href="/my/dist/css/uikit.almost-flat.min.css">
</head>
<body>
<div style="height: 50px"></div>
<div class="uk-grid">
    <div class="uk-width-1-3"></div>
    <div class="uk-width-1-3">
            <table class="uk-table">
                <tr>
                    <td>推荐商品</td><td>推荐指数</td>
                </tr>
                <tr>
                    <td>${key}</td><td>${value}</td>
                </tr>
            </table>
    </div>
    <div class="uk-width-1-3"></div>
</div>
</body>
</html>

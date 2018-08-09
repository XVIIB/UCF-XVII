<%--
  Created by IntelliJ IDEA.
  User: 27438
  Date: 2018/8/8
  Time: 20:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>complex</title>
    <link id="data-uikit-theme" rel="stylesheet" href="/my/dist/css/uikit.almost-flat.css">

    <link id="data-uikit-theme1" rel="stylesheet" href="/my/dist/css/uikit.almost-flat.min.css">
</head>
<body>
<div style="height: 50px"></div>
<div class="uk-grid">
    <div class="uk-width-1-3"></div>
    <div class="uk-width-1-3">
        <form action="/my/ucfit" method="post">
            <table class="uk-table">
                <tr>
                    <td>用户id</td><td><input type="text" name="id"></td>
                </tr>
                <tr>
                    <td>数据文件名</td><td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td> <input type="submit" value="确定" class="uk-button-primary"></td>
                </tr>
            </table>

        </form>
    </div>
    <div class="uk-width-1-3"></div>
</div>

</body>
</html>

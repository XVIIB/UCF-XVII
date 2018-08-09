<%--
  Created by IntelliJ IDEA.
  User: 27438
  Date: 2018/8/8
  Time: 18:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>文件上传</title>
    <link id="data-uikit-theme" rel="stylesheet" href="/my/dist/css/uikit.almost-flat.css">

    <link id="data-uikit-theme1" rel="stylesheet" href="/my/dist/css/uikit.almost-flat.min.css">

</head>
<body>
<div class="uk-grid" style="height: 70px">
    <div class="uk-width-1-3 uk-contrast" ></div>
    <div class="uk-width-1-3">
        <p class="uk-h2 uk-width-medium-1-2 uk-container-center ">文件上传</p>
    </div>
    <div class="uk-width-1-3"></div>
</div>
<div class="uk-grid">
    <div class="uk-width-1-3" >
    </div>

    <div class="uk-width-1-3">
        <form action="upload" enctype="multipart/form-data" method="post" class="uk-container-center">
            <table>
                <tr>
                    <td>请选择文件:</td>
                    <td><input type="file" name="file" class="uk-button-primary"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="上传" class="uk-button-success" ></td>
                </tr>
            </table>
        </form>
    </div>
    <div class="uk-width-1-3"></div>
</div>


</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: 27438
  Date: 2018/8/8
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <!-- Standard Meta -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

    <!-- Site Properties -->
    <title>Homepage</title>
    <link rel="stylesheet" type="text/css" href="/my/dist/components/reset.css">
    <link rel="stylesheet" type="text/css" href="/my/dist/components/site.css">

    <link rel="stylesheet" type="text/css" href="/my/dist/components/container.css">
    <link rel="stylesheet" type="text/css" href="/my/dist/components/grid.css">
    <link rel="stylesheet" type="text/css" href="/my/dist/components/header.css">
    <link rel="stylesheet" type="text/css" href="/my/dist/components/image.css">
    <link rel="stylesheet" type="text/css" href="/my/dist/components/menu.css">

    <link rel="stylesheet" type="text/css" href="/my/dist/components/divider.css">
    <link rel="stylesheet" type="text/css" href="/my/dist/components/dropdown.css">
    <link rel="stylesheet" type="text/css" href="/my/dist/components/segment.css">
    <link rel="stylesheet" type="text/css" href="/my/dist/components/button.css">
    <link rel="stylesheet" type="text/css" href="/my/dist/components/list.css">
    <link rel="stylesheet" type="text/css" href="/my/dist/components/icon.css">
    <link rel="stylesheet" type="text/css" href="/my/dist/components/sidebar.css">
    <link rel="stylesheet" type="text/css" href="/my/dist/components/transition.css">

    <style type="text/css">

        .hidden.menu {
            display: none;
        }

        .masthead.segment {
            min-height: 700px;
            padding: 1em 0em;
        }
        .masthead .logo.item img {
            margin-right: 1em;
        }
        .masthead .ui.menu .ui.button {
            margin-left: 0.5em;
        }
        .masthead h1.ui.header {
            margin-top: 3em;
            margin-bottom: 0em;
            font-size: 4em;
            font-weight: normal;
        }
        .masthead h2 {
            font-size: 1.7em;
            font-weight: normal;
        }

        .ui.vertical.stripe {
            padding: 8em 0em;
        }
        .ui.vertical.stripe h3 {
            font-size: 2em;
        }
        .ui.vertical.stripe .button + h3,
        .ui.vertical.stripe p + h3 {
            margin-top: 3em;
        }
        .ui.vertical.stripe .floated.image {
            clear: both;
        }
        .ui.vertical.stripe p {
            font-size: 1.33em;
        }
        .ui.vertical.stripe .horizontal.divider {
            margin: 3em 0em;
        }

        .quote.stripe.segment {
            padding: 0em;
        }
        .quote.stripe.segment .grid .column {
            padding-top: 5em;
            padding-bottom: 5em;
        }

        .footer.segment {
            padding: 5em 0em;
        }

        .secondary.pointing.menu .toc.item {
            display: none;
        }

        @media only screen and (max-width: 700px) {
            .ui.fixed.menu {
                display: none !important;
            }
            .secondary.pointing.menu .item,
            .secondary.pointing.menu .menu {
                display: none;
            }
            .secondary.pointing.menu .toc.item {
                display: block;
            }
            .masthead.segment {
                min-height: 350px;
            }
            .masthead h1.ui.header {
                font-size: 2em;
                margin-top: 1.5em;
            }
            .masthead h2 {
                margin-top: 0.5em;
                font-size: 1.5em;
            }
        }


    </style>

    <script src="assets/library/jquery.min.js"></script>
    <script src="../dist/components/visibility.js"></script>
    <script src="../dist/components/sidebar.js"></script>
    <script src="../dist/components/transition.js"></script>
    <script>
        $(document)
            .ready(function() {

                // fix menu when passed
                $('.masthead')
                    .visibility({
                        once: false,
                        onBottomPassed: function() {
                            $('.fixed.menu').transition('fade in');
                        },
                        onBottomPassedReverse: function() {
                            $('.fixed.menu').transition('fade out');
                        }
                    })
                ;

                // create sidebar and attach to menu open
                $('.ui.sidebar')
                    .sidebar('attach events', '.toc.item')
                ;

            })
        ;
    </script>
</head>
<body>

<!-- Following Menu -->
<div class="ui large top fixed hidden menu">
    <div class="ui container">
        <a class="active item">Home</a>
        <div class="right menu">
            <div class="item">
                <a class="ui button">关于我</a>
            </div>
            <div class="item">
                <a class="ui primary button">Blog</a>
            </div>
        </div>
    </div>
</div>

<!-- Sidebar Menu -->
<div class="ui vertical inverted sidebar menu">
    <a class="active item">HomePage</a>
    <a class="item">关于我</a>
    <a class="item">Blog</a>
</div>


<!-- Page Contents -->
<div class="pusher">
    <div class="ui inverted vertical masthead center aligned segment">

        <div class="ui container">
            <div class="ui large secondary inverted pointing menu">
                <a class="toc item">
                    <i class="sidebar icon"></i>
                </a>
                <a class="active item">Home</a>
                <div class="right item">
                    <a class="ui inverted button" onclick="">关于我</a>
                    <a class="ui inverted button" href="https://blog.csdn.net/qq_34696236/">我的博客</a>
                </div>
            </div>
        </div>

        <div class="ui text container">
            <h1 class="ui inverted header">
                数据推荐处理系统
            </h1>
            <h2></h2>
            <div class="ui huge primary button" onclick="window.location.href='/my/data'">立即开始 <i class="right arrow icon"></i></div>
        </div>

    </div>

    <div class="ui vertical stripe segment">
        <div class="ui middle aligned stackable grid container">
            <div class="row">
                <div class="eight wide column">
                    <h3 class="ui header">基于用户的协同推荐</h3>
                    <p></p>
                    <h3 class="ui header">基于物品的协同推荐</h3>
                    <p></p>
                </div>
                <div class="six wide right floated column">
                    <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1533733640276&di=8103c254157b66b7adf4f608121cf9d6&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimage%2Fc0%253Dshijue1%252C0%252C0%252C294%252C40%2Fsign%3D3e81b66e81d4b31ce4319cf8efbf4d0a%2F8601a18b87d6277fea439f1522381f30e924fc4e.jpg" class="ui large bordered rounded image">
                </div>
            </div>
            <div class="row">
                <div class="center aligned column">
                    <a class="ui huge button">立即开始</a>
                </div>
            </div>
        </div>
    </div>


    <div class="ui vertical stripe quote segment">
        <div class="ui equal width stackable internally celled grid">
            <div class="center aligned row">
                <div class="column">
                    <h3>关于本系统</h3>
                    <p></p>
                </div>
                <div class="column">
                    <h3>关于我</h3>

                </div>
            </div>
        </div>
    </div>

    <div class="ui vertical stripe segment">
        <div class="ui text container">
            <h3 class="ui header">如何使用</h3>
            <p>输入.csv的文件包含三列数据分别为用户id 商品id 评分，在给定文本框中输入用户id，得到为该用户的推荐商品</p>
            <a class="ui large button">Read More</a>
            <h4 class="ui horizontal header divider">
                <a href="#">返回顶部</a>
            </h4>

        </div>
    </div>


    <div class="ui inverted vertical footer segment">
        <div class="ui container">
            <div class="ui stackable inverted divided equal height stackable grid">
                <div class="three wide column">
                    <h4 class="ui inverted header">About</h4>
                    <div class="ui inverted link list">
                        <a href="#" class="item">联系我</a>
                        <a href="#" class="item">CSDN</a>
                        <a href="#" class="item">GitHub</a>
                    </div>
                </div>
                <div class="three wide column">
                    <h4 class="ui inverted header">Others</h4>
                    <div class="ui inverted link list"><%--
                        <a href="#" class="item">tell</a>
                        <a href="#" class="item">DNA FAQ</a>
                        <a href="#" class="item">How To Access</a>--%>
                    </div>
                </div>
                <div class="seven wide column">
                    <h4 class="ui inverted header">detail</h4>
                    <p>designed by XVII 2018</p>
                </div>
            </div>
        </div>
    </div>
</div>

</body>

</html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width" name="viewport">
    <meta name="theme-color" content="#3f51b5">
    <title>{$config["appName"]}</title>


    {*<link href="/extra/fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">*}
    <link href="/extra/cdn.staticfile.org/material-design-lite/1.1.0/material.min.css" rel="stylesheet">
    <link href="/extra/cdn.staticfile.org/datatables/1.10.13/css/dataTables.material.min.css" rel="stylesheet">
    <!-- css -->
    <link href="/theme/{$theme}/css/base.css" rel="stylesheet">
    <link href="/theme/{$theme}/css/project.css" rel="stylesheet">
    <!-- favicon -->
    <!-- ... -->
    <style>
        .pagination {
            display: inline-block;
            padding-left: 0;
            margin: 20px 0;
            border-radius: 4px
        }

        .pagination > li {
            display: inline
        }

        .pagination > li > a, .pagination > li > span {
            position: relative;
            float: left;
            padding: 6px 12px;
            margin-left: -1px;
            line-height: 1.42857143;
            color: #337ab7;
            text-decoration: none;
            background-color: #fff;
            border: 1px solid #ddd
        }

        .pagination > li:first-child > a, .pagination > li:first-child > span {
            margin-left: 0;
            border-top-left-radius: 4px;
            border-bottom-left-radius: 4px
        }

        .pagination > li:last-child > a, .pagination > li:last-child > span {
            border-top-right-radius: 4px;
            border-bottom-right-radius: 4px
        }

        .pagination > li > a:focus, .pagination > li > a:hover, .pagination > li > span:focus, .pagination > li > span:hover {
            color: #23527c;
            background-color: #eee;
            border-color: #ddd
        }

        .pagination > .active > a, .pagination > .active > a:focus, .pagination > .active > a:hover, .pagination > .active > span, .pagination > .active > span:focus, .pagination > .active > span:hover {
            z-index: 2;
            color: #fff;
            cursor: default;
            background-color: #337ab7;
            border-color: #337ab7
        }

        .pagination > .disabled > a, .pagination > .disabled > a:focus, .pagination > .disabled > a:hover, .pagination > .disabled > span, .pagination > .disabled > span:focus, .pagination > .disabled > span:hover {
            color: #777;
            cursor: not-allowed;
            background-color: #fff;
            border-color: #ddd
        }

        .pagination-lg > li > a, .pagination-lg > li > span {
            padding: 10px 16px;
            font-size: 18px
        }

        .pagination-lg > li:first-child > a, .pagination-lg > li:first-child > span {
            border-top-left-radius: 6px;
            border-bottom-left-radius: 6px
        }

        .pagination-lg > li:last-child > a, .pagination-lg > li:last-child > span {
            border-top-right-radius: 6px;
            border-bottom-right-radius: 6px
        }

        .pagination-sm > li > a, .pagination-sm > li > span {
            padding: 5px 10px;
            font-size: 12px
        }

        .pagination-sm > li:first-child > a, .pagination-sm > li:first-child > span {
            border-top-left-radius: 3px;
            border-bottom-left-radius: 3px
        }

        .pagination-sm > li:last-child > a, .pagination-sm > li:last-child > span {
            border-top-right-radius: 3px;
            border-bottom-right-radius: 3px
        }

        .pager {
            padding-left: 0;
            margin: 20px 0;
            text-align: center;
            list-style: none
        }

        .pager li {
            display: inline
        }

        .pager li > a, .pager li > span {
            display: inline-block;
            padding: 5px 14px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 15px
        }

        .pager li > a:focus, .pager li > a:hover {
            text-decoration: none;
            background-color: #eee
        }

        .pager .next > a, .pager .next > span {
            float: right
        }

        .pager .previous > a, .pager .previous > span {
            float: left
        }

        .pager .disabled > a, .pager .disabled > a:focus, .pager .disabled > a:hover, .pager .disabled > span {
            color: #777;
            cursor: not-allowed;
            background-color: #fff
        }

        .pagination > li > a,
        .pagination > li > span {
            border: 1px solid white;
        }

        .pagination > li.active > a {
            background: #f50057;
            color: #fff;
        }

        .pagination > li > a {
            background: white;
            color: #000;
        }

        .pagination > .active > a, .pagination > .active > a:focus, .pagination > .active > a:hover, .pagination > .active > span, .pagination > .active > span:focus, .pagination > .active > span:hover {
            color: #fff;
            background-color: #000;
            border-color: #000;
        }

        .pagination > .active > span {
            background-color: #f50057;
            color: #fff;
            border-color: #fff;
        }

        .pagination > .disabled > span {
            border-color: #fff;
        }

        pre {
            white-space: pre-wrap;
            word-wrap: break-word;
        }

        .progress-green .progress-bar {
            background-color: #f0231b;
        }

        .progress-green {
            background-color: #000;
        }

        .progress-green .progress-bar {
            /*background-color: #ff0a00;*/
        }

        .page-orange .ui-content-header {
        {*background-image: url(/theme/{$theme}/css/images/bg/amber.jpg);*} background: none;
            padding: 0 16px;
            margin: 0px 0;
            /*margin-bottom: 20px;*/
        }

        .content-heading {
            font-weight: normal;
            font-size: 24px;
            color: #377BB5;
            margin: 0px 0;

        }
        .content{
            min-width: 380px;
        }

        .header {
            background: #3C4051;
            position: fixed;
            width: 100%;
            top: 0;
            height: 48px;

        }

        @media only screen and (min-width: 992px) {
            #menu_id, .logo_contaniner {
                display: none;
            }

            #logo_id {
                font-weight: bold;
                font-size: 26px;
            }

        }

        @media only screen and (max-width: 992px) {
            #logo_id {
                display: none;
            }

            .logo_contaniner p {
                color: #fff;
                font-size: 22px;
                position: fixed;
                top: 0;
                width: 100%;
                text-align: center;
                line-height: 100%;
            }
        }

        .ms-section {
            border-radius: 5px;
            background: #FFFFFF;
            margin: 0 16px;
            margin-top: 16px;
        }

        .box_section {
            background: #fff;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
        }

        .min-height-400 {
            min-height: 400px;
        }

        .min-height-450 {
            min-height: 450px;
        }

        .min-height-500 {
            min-height: 500px;
        }

        .min-height-550 {
            min-height: 550px;
        }

        .min-height-600 {
            min-height: 600px;
        }

        .border-radius {
            border-radius: 5px;
        }
    </style>
    {*设置默认header*}
    {$header=true}
    {block name='css'}{/block}

    <!-- favicon -->
    <!-- ... -->
</head>
<body class="page-orange">
{if $user->isLogin and  $header}
    <header class="header header-orange header-transparent ui-header">
        <ul class="nav nav-list pull-left">
            <div id="menu_id">
                <a data-toggle="menu" href="#ui_menu">
                    <span class="icon icon-lg text-white">menu</span>
                </a>
            </div>
        </ul>
        <ul class="nav nav-list pull-left">
            <div id="logo_id">
                <a>
                    <span class="text-white">{$config['appName']}</span>
                </a>

            </div>
        </ul>
        <div class="logo_contaniner">
            <p id="logo2">
                {$config['appName']}
            </p>
        </div>
        <ul class="nav nav-list pull-right">
            <div class="dropdown margin-right">
                {if $user->isLogin}
                    <a class="dropdown-toggle padding-left-no padding-right-no" data-toggle="dropdown">
                        <span class="access-hide">{$user->user_name}</span>
                        <span class="avatar avatar-sm"><img alt="alt text for John Smith avatar"
                                                            src="/theme/{$theme}/images/users/avatar-001.jpg"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <li>
                            <a class="padding-right-lg waves-attach" href="/user"><span
                                        class="icon icon-lg margin-right">person_pin_circle</span>用户中心</a>
                        </li>
                        <li>
                            <a class="padding-right-lg waves-attach" href="/admin"><span
                                        class="icon icon-lg margin-right">person_pin</span>管理面板</a>
                        </li>
                        <li>
                            <a class="padding-right-lg waves-attach" href="/user/logout"><span
                                        class="icon icon-lg margin-right">exit_to_app</span>登出</a>
                        </li>

                    </ul>
                {else}
                    <span class="access-hide">未登录</span>
                    <span class="avatar avatar-sm"><img alt="alt text for John Smith avatar"
                                                        src="/theme/{$theme}/images/users/avatar-001.jpg"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <li>
                            <a class="padding-right-lg waves-attach" href="/auth/login"><span
                                        class="icon icon-lg margin-right">account_box</span>登录</a>
                        </li>
                        <li>
                            <a class="padding-right-lg waves-attach" href="/auth/register"><span
                                        class="icon icon-lg margin-right">pregnant_woman</span>注册</a>
                        </li>
                    </ul>
                {/if}

            </div>
        </ul>

    </header>
{/if}
{block name='nav'}{/block}
{block name='main'}{/block}
{if $user->isLogin and  $header}
    <div class="row" style="margin: 30px 0 10px 0;padding-top:10px;border-top: 1px solid rgba(0, 0, 0, 0.12);">
        <div class="col-12">
            <div class="container" style="text-align: center">
                &copy; {$config["appName"]} <a
                        href="/staff">STAFF</a> {if $config["enable_analytics_code"] == 'true'}{include file='analytics.tpl'}{/if}
            </div>
        </div>
    </div>
{/if}
<!-- js -->
<script src="/extra/cdn.staticfile.org/jquery/2.2.1/jquery.min.js"></script>
<script src="/extra/static.geetest.com/static/tools/gt.js"></script>

<script src="/theme/{$theme}/js/base.min.js"></script>
<script src="/theme/{$theme}/js/project.min.js"></script>


<!-- js -->
<script src="/extra/cdn.staticfile.org/jquery-validate/1.15.0/jquery.validate.min.js"></script>
<script src="/extra/cdn.staticfile.org/datatables/1.10.13/js/jquery.dataTables.min.js"></script>
<script src="/extra/cdn.staticfile.org/datatables/1.10.13/js/dataTables.material.min.js"></script>
<script src="/extra/cdnjs.cloudflare.com/ajax/libs/clipboard.js/1.5.16/clipboard.min.js"></script>
<script>

    $(function () {

        $("#limenus li").each(function () {

            var href = $(this).children('a').first().attr('href')
            var ulp = $(this).parent();
            var url = window.location.pathname;
            if (href == url) {

                $(ulp).removeClass('out')
                $(ulp).addClass('in')
                $(this).addClass('active')
            }

        })

    });
</script>
{block name='basescript'}{/block}
{block name='script'}{/block}
</body>
</html>
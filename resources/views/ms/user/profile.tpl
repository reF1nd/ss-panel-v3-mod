{extends file='user/base.tpl'}
{block name='main'}
    {$ssr_prefer = URL::SSRCanConnect($user, 0)}
    <main class="content">
        <div class="content-header ui-content-header">
            <div class="container">
                <h1 class="content-heading">我的账户</h1>
            </div>
        </div>
        <div class="container">
            <div class="row ms-section min-height-450">
                <div class="col-lg-6 col-md-6">
                    <p class="card-heading">帐号信息</p>

                    <nav class="tab-nav margin-top-no">
                        <ul class="nav nav-list">
                            <li {if $ssr_prefer}class="active"{/if}>
                                <a class="waves-attach" data-toggle="tab" href="#all_zhanghao">
                                    帐号使用情况
                                </a>
                            </li>
                            <li {if !$ssr_prefer}class="active"{/if}>
                                <a class="waves-attach" data-toggle="tab" href="#all_wodezhanghu">
                                    我的帐号</a>
                            </li>
                            <li>
                                <a class="waves-attach" data-toggle="tab" href="#all_liuliang">
                                    流量使用情况</a>
                            </li>
                            <li>
                                <a class="waves-attach" data-toggle="tab" href="#all_sign">
                                    续命获取流量</a>
                            </li>

                        </ul>
                    </nav>

                    <div class="tab-pane fade {if $ssr_prefer}active{/if} in" id="all_zhanghao">
                        <div class="card-inner">
                            <dl class="dl-horizontal">
                                <p>
                                    <dt>帐号等级</dt>
                                <dd>{$user->class}</dd>
                                </p>

                                <p>
                                    <dt>等级过期时间</dt>
                                <dd>{$user->class_expire}</dd>
                                </p>

                                <p>
                                    <dt>帐号过期时间</dt>
                                <dd>{$user->expire_in}</dd>
                                </p>

                                <p>
                                    <dt>在线设备数量</dt>
                                <dd>{$user->online_ip_count()}</dd>
                                </p>

                                <p>
                                    <dt>设备数量限制</dt>
                                    {if $user->node_connector!=0}
                                <dd>{$user->node_connector}个</dd>
                                {else}
                                <dd>不限制</dd>
                                {/if}</p>

                                <p>
                                    <dt>速度限制</dt>
                                    {if $user->node_speedlimit!=0}
                                <dd>{$user->node_speedlimit}Mbps</dd>
                                {else}
                                <dd>不限速</dd>
                                {/if}</p>

                                <p>
                                    <dt>上次使用</dt>
                                <dd>{$user->lastSsTime()}</dd>
                                </p>
                            </dl>
                        </div>
                    </div>

                    <div class="tab-pane {if ! $ssr_prefer}active{/if} in" id="all_wodezhanghu">
                        <div class="card-inner">
                            <p class="card-heading">我的帐号</p>
                            <dl class="dl-horizontal">
                                <dt>用户名</dt>
                                <dd>{$user->user_name}</dd>
                                <dt>邮箱</dt>
                                <dd>{$user->email}</dd>
                            </dl>
                        </div>
                        <div class="card-action">
                            <div class="card-action-btn pull-left">
                                <a class="btn btn-flat waves-attach" href="kill"><span
                                            class="icon">check</span>&nbsp;删除我的账户</a>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane fade" id="all_liuliang">
                        <div class="card-inner">
                            <dl class="dl-horizontal">
                                <p>
                                    <dt>总量</dt>
                                <dd>{$user->enableTraffic()}</dd>
                                </p>
                                <p>
                                    <dt>已用</dt>
                                <dd>{$user->LastusedTraffic()}</dd>
                                </p>
                                <p>
                                    <dt>剩余</dt>
                                <dd>{$user->unusedTraffic()}</dd>
                                </p>
                                <p>
                                    <dt>今日</dt>
                                <dd>{$user->TodayusedTraffic()}</dd>
                                </p>

                                <p>
                                    <dt>&nbsp;</dt>
                                <dd>&nbsp;</dd>
                                </p>
                            </dl>
                        </div>

                    </div>
                    <div class="tab-pane fade" id="all_sign">
                        <div class="card-inner">
                            <p>流量不会重置，可以通过续命获取流量。</p>

                            <p>每次续命可以获取{$config['checkinMin']}~{$config['checkinMax']}MB流量。</p>

                            <p>每天可以续命一次。您可以点击按钮或者摇动手机来续命。</p>

                            <p>上次续命时间：<code>{$user->lastCheckInTime()}</code></p>

                            <p id="checkin-msg"></p>

                            {if $geetest_html != null}
                                <div id="popup-captcha"></div>
                            {/if}
                            {if $user->isAbleToCheckin() }
                                <p id="checkin-btn">
                                    <button id="checkin" class="btn btn-brand btn-flat waves-attach"><span
                                                class="icon">check</span>&nbsp;续命
                                    </button>
                                </p>
                            {else}
                                <p><a class="btn btn-brand disabled btn-flat waves-attach" href="#"><span
                                                class="icon">check</span>&nbsp;不能续命</a></p>
                            {/if}
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <p class="card-heading">登录信息</p>

                    <nav class="tab-nav margin-top-no">
                        <ul class="nav nav-list">
                            <li class=" active ">
                                <a class="waves-attach" data-toggle="tab" href="#all_fiveip">
                                    最近五分钟使用IP</a>
                            </li>
                            <li>
                                <a class="waves-attach" data-toggle="tab" href="#all_shiip">
                                    最近十次登录IP</a>
                            </li>
                        </ul>
                    </nav>
                    <div class="tab-pane active fade in" id="all_fiveip">
                        <p>请确认都为自己的IP，如有异常请及时修改连接密码。</p>
                        <div class="card-table">
                            <div class="table-responsive">
                                <table class="table">
                                    <tr>

                                        <th>IP</th>
                                        <th>归属地</th>
                                    </tr>
                                    {foreach $userip as $single=>$location}
                                        <tr>

                                            <td>{$single}</td>
                                            <td>{$location}</td>
                                        </tr>
                                    {/foreach}
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade in " id="all_shiip">
                        <p>请确认都为自己的IP，如有异常请及时修改密码。</p>
                        <div class="card-table">
                            <div class="table-responsive">
                                <table class="table">
                                    <tr>

                                        <th>IP</th>
                                        <th>归属地</th>
                                    </tr>
                                    {foreach $userloginip as $single=>$location}
                                        <tr>

                                            <td>{$single}</td>
                                            <td>{$location}</td>
                                        </tr>
                                    {/foreach}
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row ms-section">
                <div class="col-lg-12 col-md-12">
                    <div class="card margin-bottom-no">
                        <div class="card-main">
                            <p class="card-heading">返利记录</p>
                            <div class="card-inner">
                                <div class="card-inner">

                                    <div class="card-table">
                                        <div class="table-responsive">
                                            {$paybacks->render()}
                                            <table class="table">
                                                <thead>
                                                <tr>
                                                    <th>###</th>
                                                    <th>返利用户</th>
                                                    <th>返利金额</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                {foreach $paybacks as $payback}
                                                    <tr>
                                                        <td><b>{$payback->id}</b></td>
                                                        {if $payback->user()!=null}
                                                            <td>{$payback->user()->user_name}
                                                            </td>
                                                        {else}
                                                            <td>已注销
                                                            </td>
                                                        {/if}
                                                        </td>
                                                        <td>{$payback->ref_get} 元</td>
                                                    </tr>
                                                {/foreach}
                                                </tbody>
                                            </table>
                                            {$paybacks->render()}
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

            </div>
            {include file='dialog.tpl'}
        </div>
        </section>
        </div>
    </main>
{/block}
{block name='script'}
    <script src="/theme/{$theme}/js/shake.js/shake.js"></script>
    <script>

        $(function () {
            new Clipboard('.copy-text');
        });

        $(".copy-text").click(function () {
            $("#result").modal();
            $("#msg").html("已复制到您的剪贴板，请您继续接下来的操作。");
        });

        {if $geetest_html == null}


        window.onload = function () {
            var myShakeEvent = new Shake({
                threshold: 15
            });

            myShakeEvent.start();

            window.addEventListener('shake', shakeEventDidOccur, false);

            function shakeEventDidOccur() {
                if ("vibrate" in navigator) {
                    navigator.vibrate(500);
                }

                $.ajax({
                    type: "POST",
                    url: "/user/checkin",
                    dataType: "json",
                    success: function (data) {
                        $("#checkin-msg").html(data.msg);
                        $("#checkin-btn").hide();
                        $("#result").modal();
                        $("#msg").html(data.msg);
                    },
                    error: function (jqXHR) {
                        $("#result").modal();
                        $("#msg").html("发生错误：" + jqXHR.status);
                    }
                });
            }
        };


        $(document).ready(function () {
            $("#checkin").click(function () {
                $.ajax({
                    type: "POST",
                    url: "/user/checkin",
                    dataType: "json",
                    success: function (data) {
                        $("#checkin-msg").html(data.msg);
                        $("#checkin-btn").hide();
                        $("#result").modal();
                        $("#msg").html(data.msg);
                    },
                    error: function (jqXHR) {
                        $("#result").modal();
                        $("#msg").html("发生错误：" + jqXHR.status);
                    }
                })
            })
        })


        {else}


        window.onload = function () {
            var myShakeEvent = new Shake({
                threshold: 15
            });

            myShakeEvent.start();

            window.addEventListener('shake', shakeEventDidOccur, false);

            function shakeEventDidOccur() {
                if ("vibrate" in navigator) {
                    navigator.vibrate(500);
                }

                c.show();
            }
        };


        var handlerPopup = function (captchaObj) {
            c = captchaObj;
            captchaObj.onSuccess(function () {
                var validate = captchaObj.getValidate();
                $.ajax({
                    url: "/user/checkin", // 进行二次验证
                    type: "post",
                    dataType: "json",
                    data: {
                        // 二次验证所需的三个值
                        geetest_challenge: validate.geetest_challenge,
                        geetest_validate: validate.geetest_validate,
                        geetest_seccode: validate.geetest_seccode
                    },
                    success: function (data) {
                        $("#checkin-msg").html(data.msg);
                        $("#checkin-btn").hide();
                        $("#result").modal();
                        $("#msg").html(data.msg);
                    },
                    error: function (jqXHR) {
                        $("#result").modal();
                        $("#msg").html("发生错误：" + jqXHR.status);
                    }
                });
            });
            // 弹出式需要绑定触发验证码弹出按钮
            captchaObj.bindOn("#checkin");
            // 将验证码加到id为captcha的元素里
            captchaObj.appendTo("#popup-captcha");
            // 更多接口参考：http://www.geetest.com/install/sections/idx-client-sdk.html
        };

        initGeetest({
            gt: "{$geetest_html->gt}",
            challenge: "{$geetest_html->challenge}",
            product: "popup", // 产品形式，包括：float，embed，popup。注意只对PC版验证码有效
            offline: {if $geetest_html->success}0{else}1{/if} // 表示用户后台检测极验服务器是否宕机，与SDK配合，用户一般不需要关注
        }, handlerPopup);



        {/if}


    </script>
{/block}
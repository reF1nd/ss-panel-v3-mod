{extends file='user/base.tpl'}
{block name='main'}
    {$ssr_prefer = URL::SSRCanConnect($user, 0)}
    <main class="content">
        <div class="content-header ui-content-header">
            <div class="container">
                <h1 class="content-heading">用户中心</h1>
            </div>
        </div>
        <div class="container">
            <section class="content-inner margin-top-no">

                <div class="col-lg-12 col-md-12">

                    <div class="card">
                        <div class="card-main">
                            <div class="card-inner margin-bottom-no">
                                <p class="card-heading">系统中最新公告</p>
                                <p>其他公告请到<a href="/user/announcement"/>公告面板</a>查看。</p>
                                {if $ann != null}
                                    <p>{$ann->content}</p>
                                {/if}
                            </div>

                        </div>
                    </div>

                    <div class="card">
                        <div class="card-main">
                            <div class="card-inner margin-bottom-no">
                                <p class="card-heading">连接信息 以及 All-in-One(快速配置指导)</p>
                                <p>您可以在这里查看您的连接信息。<br>同时，这里为您提供了自动化地配置文件生成，包含了所有 Shadowsocks
                                    服务器的信息，方便您在诸多的服务器中快速添加，快速切换。</p>
                                <nav class="tab-nav margin-top-no">
                                    <ul class="nav nav-list">
                                        <li {if $ssr_prefer}class="active"{/if}>
                                            <a class="" data-toggle="tab" href="#all_ssr"><i
                                                        class="icon icon-lg">airplanemode_active</i>&nbsp;ShadowsocksR</a>
                                        </li>
                                        <li {if !$ssr_prefer}class="active"{/if}>
                                            <a class="" data-toggle="tab" href="#all_ss"><i
                                                        class="icon icon-lg">flight_takeoff</i>&nbsp;Shadowsocks</a>
                                        </li>
                                    </ul>
                                </nav>
                                <div class="card-inner">
                                    <div class="tab-content">
                                        <div class="tab-pane fade {if $ssr_prefer}active in{/if}" id="all_ssr">
                                            {$pre_user = URL::cloneUser($user)}

                                            <nav class="tab-nav margin-top-no">
                                                <ul class="nav nav-list">
                                                    <li class="active">
                                                        <a class="waves-attach" data-toggle="tab"
                                                           href="#all_ssr_info"><i
                                                                    class="icon icon-lg">info_outline</i>&nbsp;连接信息</a>
                                                    </li>
                                                    <li>
                                                        <a class="waves-attach" data-toggle="tab"
                                                           href="#all_ssr_windows"><i class="icon icon-lg">desktop_windows</i>&nbsp;Windows</a>
                                                    </li>
                                                    <li>
                                                        <a class="waves-attach" data-toggle="tab"
                                                           href="#all_ssr_mac"><i
                                                                    class="icon icon-lg">laptop_mac</i>&nbsp;MacOS</a>
                                                    </li>
                                                    <li>
                                                        <a class="waves-attach" data-toggle="tab"
                                                           href="#all_ssr_ios"><i
                                                                    class="icon icon-lg">laptop_mac</i>&nbsp;iOS</a>
                                                    </li>
                                                    <li>
                                                        <a class="waves-attach" data-toggle="tab"
                                                           href="#all_ssr_android"><i
                                                                    class="icon icon-lg">android</i>&nbsp;Android</a>
                                                    </li>
                                                    <li>
                                                        <a class="waves-attach" data-toggle="tab"
                                                           href="#all_ssr_router"><i class="icon icon-lg">router</i>&nbsp;路由器</a>
                                                    </li>
                                                </ul>
                                            </nav>
                                            <div class="tab-pane fade active in" id="all_ssr_info">
                                                {$user = URL::getSSRConnectInfo($pre_user)}
                                                {$ssr_url_all = URL::getAllUrl($pre_user, 0, 0)}
                                                {$ssr_url_all_mu = URL::getAllUrl($pre_user, 1, 0)}
                                                {if URL::SSRCanConnect($user)}
                                                    <dl class="dl-horizontal">
                                                        <p>
                                                            <dt>端口</dt>
                                                        <dd>{$user->port}</dd>
                                                        </p>

                                                        <p>
                                                            <dt>密码</dt>
                                                        <dd>{$user->passwd}</dd>
                                                        </p>

                                                        <p>
                                                            <dt>自定义加密</dt>
                                                        <dd>{$user->method}</dd>
                                                        </p>

                                                        <p>
                                                            <dt>自定义协议</dt>
                                                        <dd>{$user->protocol}</dd>
                                                        </p>

                                                        <p>
                                                            <dt>自定义混淆</dt>
                                                        <dd>{$user->obfs}</dd>
                                                        </p>
                                                    </dl>
                                                {else}
                                                    <p>您好，您目前的 加密方式，混淆，或者协议设置在 ShadowsocksR 客户端下无法连接。请您选用
                                                        Shadowsocks 客户端来连接，或者到 资料编辑 页面修改后再来查看此处。</p>
                                                    <p>同时, ShadowsocksR 单端口多用户的连接不受您设置的影响,您可以在此使用相应的客户端进行连接~</p>
                                                    <p>请注意，在当前状态下您的 SSR 订阅链接已经失效，您无法通过此种方式导入节点。</p>
                                                {/if}
                                            </div>
                                            <div class="tab-pane fade" id="all_ssr_windows">
                                                <p>
                                                    <a href="/ssr-download/ssr-win.7z">下载</a>，解压，运行程序，然后您有三种方式导入所有节点<br>
                                                    (1)下载<a href="/user/getpcconf?is_mu=0&is_ss=0">这个（普通端口）</a>或者<a
                                                            href="/user/getpcconf?is_mu=1&is_ss=0">这个（单端口多用户）</a>，右键小飞机
                                                    服务器 -- 从配置文件导入服务器，选择这个文件，<br>
                                                    (2)点击<a class="copy-text" data-clipboard-text="{$ssr_url_all}">这里（普通端口）</a>或者<a
                                                            class="copy-text" data-clipboard-text="{$ssr_url_all}">这里（单端口多用户）</a>，然后右键小飞机
                                                    -- 从剪贴板复制地址<br>
                                                    (3)(推荐)右键小飞机--服务器--SSR服务器订阅设置，将订阅地址设置为下面的地址，其他参数留空，确定之后再更新 SSR
                                                    服务器订阅。<br>
                                                    然后选择一个合适的服务器，系统代理模式选”全局模式”，代理规则选“绕过局域网和大陆”，然后即可上网。</p>

                                                <p>SSR 订阅地址：<br>
                                                    普通端口地址：<code>{$baseUrl}/link/{$ssr_sub_token}?mu=0</code><br>
                                                    单端口多用户端口地址：<code>{$baseUrl}/link/{$ssr_sub_token}?mu=1</code>
                                                </p>
                                            </div>
                                            <div class="tab-pane fade" id="all_ssr_mac">
                                                <p><a href="/ssr-download/ssr-mac.dmg">下载</a>，安装，然后下载<a
                                                            href="/user/getpcconf?is_mu=0&is_ss=0">这个（普通端口）</a>或者<a
                                                            href="/user/getpcconf?is_mu=1&is_ss=0">这个（单端口多用户）</a>，运行程序，小飞机上右键
                                                    服务器列表 子菜单 的 “导入服务器配置文件...”
                                                    导入这个文件，然后选择一个合适的服务器，更新一下PAC，然后开启系统代理即可上网。</p>
                                            </div>
                                            <div class="tab-pane fade" id="all_ssr_ios">
                                                <p>
                                                    推荐下载<a href="https://itunes.apple.com/cn/app/shadowrocket/id932747118?mt=8">Shadowrocket</a>，然后在
                                                    Safari 中点击<a href="{$ssr_url_all}">这个（普通端口）</a>或者<a
                                                            href="{$ssr_url_all_mu}">这个（单端口多用户）</a>，然后点击确定，就可以批量添加节点。
                                                </p>
                                                <p>SSR 订阅地址：<br>
                                                    普通端口地址：<code>{$baseUrl}/link/{$ssr_sub_token}?mu=0</code><br>
                                                    单端口多用户端口地址：<code>{$baseUrl}/link/{$ssr_sub_token}?mu=1</code>
                                                </p>
                                            </div>
                                            <div class="tab-pane fade" id="all_ssr_android">
                                                <p>
                                                    <a href="/ssr-download/ssr-android.apk">下载</a>，安装，然后在手机上默认浏览器中点击<a
                                                            href="{$ssr_url_all}">这个链接（普通端口）</a>或者<a
                                                            href="{$ssr_url_all_mu}">这个链接（单端口多用户）</a>，然后点击确定，批量添加完节点，然后路由选择绕过大陆，右上角开启就可以上网了。同时提供一个
                                                    ACL 地址，<a href="/link/{$acl_token}">长按复制地址</a>到客户端里应用即可。</p>
                                                <p>SSR 订阅地址，您可以在节点列表处添加订阅来自动更新节点：<br>
                                                    普通端口地址：<code>{$baseUrl}/link/{$ssr_sub_token}?mu=0</code><br>
                                                    单端口多用户端口地址：<code>{$baseUrl}/link/{$ssr_sub_token}?mu=1</code>
                                                </p>
                                            </div>
                                            <div class="tab-pane fade" id="all_ssr_router">
                                                <p>路由器
                                                    刷入<a href="http://www.right.com.cn/forum/thread-161324-1-1.html">这个固件</a>，然后
                                                    SSH 登陆路由器，执行以下命令（导入普通端口）<br>
                                                    <code>wget -O- {$baseUrl}/link/{$router_token}?is_ss=0 | bash &&
                                                        echo -e "\n0 */3 * * * wget -O- {$baseUrl}
                                                        /link/{$router_token}?is_ss=0 | bash\n">>
                                                        /etc/storage/cron/crontabs/admin && killall crond &&
                                                        crond </code><br>
                                                    或者这个单端口多用户的<br>
                                                    <code>wget -O- {$baseUrl}/link/{$router_token_without_mu}
                                                        ?is_ss=0 | bash && echo -e "\n0 */3 * * * wget
                                                        -O- {$baseUrl}/link/{$router_token_without_mu}?is_ss=0 |
                                                        bash\n">> /etc/storage/cron/crontabs/admin && killall crond
                                                        && crond </code><br>
                                                    执行完毕以后就可以到路由器的设置面板里随意选择 Shadowsocks 服务器进行连接了。</p>
                                            </div>

                                        </div>
                                        <div class="tab-pane fade {if !$ssr_prefer}active in{/if}" id="all_ss">
                                            <nav class="tab-nav margin-top-no">
                                                <ul class="nav nav-list">
                                                    <li class="active">
                                                        <a class="waves-attach" data-toggle="tab"
                                                           href="#all_ss_info"><i
                                                                    class="icon icon-lg">info_outline</i>&nbsp;连接信息</a>
                                                    </li>
                                                    <li>
                                                        <a class="waves-attach" data-toggle="tab"
                                                           href="#all_ss_windows"><i class="icon icon-lg">desktop_windows</i>&nbsp;Windows</a>
                                                    </li>
                                                    <li>
                                                        <a class="waves-attach" data-toggle="tab"
                                                           href="#all_ss_mac"><i class="icon icon-lg">laptop_mac</i>&nbsp;MacOS</a>
                                                    </li>
                                                    <li>
                                                        <a class="waves-attach" data-toggle="tab"
                                                           href="#all_ss_ios"><i class="icon icon-lg">laptop_mac</i>&nbsp;iOS</a>
                                                    </li>
                                                    <li>
                                                        <a class="waves-attach" data-toggle="tab"
                                                           href="#all_ss_android"><i
                                                                    class="icon icon-lg">android</i>&nbsp;Android</a>
                                                    </li>
                                                    <li>
                                                        <a class="waves-attach" data-toggle="tab"
                                                           href="#all_ss_router"><i class="icon icon-lg">router</i>&nbsp;路由器</a>
                                                    </li>
                                                </ul>
                                            </nav>
                                            <div class="tab-pane fade active in" id="all_ss_info">
                                                {$user = URL::getSSConnectInfo($pre_user)}
                                                {$ss_url_all = URL::getAllUrl($pre_user, 0, 1)}
                                                {$ss_url_all_mu = URL::getAllUrl($pre_user, 1, 1)}
                                                {$ss_url_all_win = URL::getAllUrl($pre_user, 0, 2)}

                                                {if URL::SSCanConnect($user)}
                                                    <dl class="dl-horizontal">
                                                        <p>各个节点的地址请到节点列表查看！</p>


                                                        <p>
                                                            <dt>端口</dt>
                                                        <dd>{$user->port}</dd>
                                                        </p>

                                                        <p>
                                                            <dt>密码</dt>
                                                        <dd>{$user->passwd}</dd>
                                                        </p>

                                                        <p>
                                                            <dt>自定义加密</dt>
                                                        <dd>{$user->method}</dd>
                                                        </p>

                                                        <p>
                                                            <dt>自定义混淆</dt>
                                                        <dd>{$user->obfs}</dd>
                                                        </p>
                                                    </dl>
                                                {else}
                                                    <p>您好，您目前的 加密方式，混淆，或者协议设置在 SS 客户端下无法连接。请您选用 SSR 客户端来连接，或者到 资料编辑
                                                        页面修改后再来查看此处。</p>
                                                    <p>同时, Shadowsocks 单端口多用户的连接不受您设置的影响,您可以在此使用相应的客户端进行连接~</p>
                                                {/if}
                                            </div>
                                            <div class="tab-pane fade" id="all_ss_windows">
                                                <p>
                                                    <a href="/ssr-download/ss-win.zip">下载</a>，解压，运行程序，然后您有两种方式导入所有节点<br>
                                                    (1)下载<a href="/user/getpcconf?is_mu=0&is_ss=1">这个（普通端口）</a>或者<a href="/user/getpcconf?is_mu=1&is_ss=1">这个（单端口多用户）</a>，放到小飞机的目录下，然后打开小飞机。<br>
                                                    (2)点击<a class="copy-text"
                                                            data-clipboard-text="{$ss_url_all_win}">这里（普通端口）</a>,
                                                    然后右键小飞机 -- 从剪贴板导入 URL<br>
                                            </div>
                                            <div class="tab-pane fade" id="all_ss_mac">
                                                <p><a href="/ssr-download/ss-mac.zip">下载</a>，安装，然后下载<a
                                                            href="/user/getpcconf?is_mu=0&is_ss=1">这个（普通端口）</a>或者<a
                                                            href="/user/getpcconf?is_mu=1&is_ss=1">这个（单端口多用户）</a>，运行程序，小飞机上右键
                                                    服务器列表 子菜单 的 “导入服务器配置文件...”
                                                    导入这个文件，然后选择一个合适的服务器，更新一下PAC，然后开启系统代理即可上网。</p>
                                            </div>
                                            <div class="tab-pane fade" id="all_ss_ios">
                                                <p>
                                                    推荐下载<a href="https://itunes.apple.com/cn/app/shadowrocket/id932747118?mt=8">Shadowrocket</a>，然后在
                                                    Safari 中点击<a href="{$ss_url_all}">这个（普通端口）</a>或者<a
                                                            href="{$ss_url_all_mu}">这个（单端口多用户）</a>，然后点击确定，就可以批量添加节点。
                                                </p>
                                                <p>Surge 推荐使用可以自动更新的订阅规则：点击<a class="copy-text" data-clipboard-text="{$baseUrl}/link/{$ios_token}?is_ss=1&is_sub=1">这里（普通端口）</a>或者<a class="copy-text" data-clipboard-text="{$baseUrl}/link/{$ios_token}?is_ss=1&is_mu=1&is_sub=1">这里（单端口多用户）</a>，然后在 Surge 中选择“从URL下载配置”，将刚复制的地址粘贴导入，然后就可以随意切换服务器上网了。<br>
                                                    也可以手动导入规则，下载<a href="/link/{$ios_token}?is_ss=1">这个（普通端口）</a>或者<a href="/link/{$ios_token}?is_ss=1&is_mu=1">这个（单端口多用户）</a>，导入到 Surge 。</p>
                                            </div>
                                            <div class="tab-pane fade" id="all_ss_android">
                                                <p><a href="/ssr-download/ss-android.apk">下载</a>，再<a
                                                            href="/ssr-download/ss-android-obfs.apk">下载</a>，然后安装，然后在手机上点击<a
                                                            class="copy-text" data-clipboard-text="{$ss_url_all}">这个链接（普通端口）</a>或者<a
                                                            class="copy-text"
                                                            data-clipboard-text="{$ss_url_all_mu}">这个链接（单端口多用户端口）</a>复制到剪贴板，打开
                                                    Shadowsocks 客户端，选择从剪贴板导入，然后选择一个节点，设置一下路由为绕过大陆，点击飞机就可以上网了。</p>
                                            </div>
                                            <div class="tab-pane fade" id="all_ss_router">
                                                <p>路由器
                                                    刷入<a href="http://www.right.com.cn/forum/thread-161324-1-1.html">这个固件</a>，然后
                                                    SSH 登陆路由器，执行以下命令（导入普通端口）<br>
                                                    <code>wget -O- {$baseUrl}/link/{$router_token}?is_ss=1 | bash &&
                                                        echo -e "\n0 */3 * * * wget -O- {$baseUrl}
                                                        /link/{$router_token}?is_ss=1 | bash\n">>
                                                        /etc/storage/cron/crontabs/admin && killall crond &&
                                                        crond </code><br>
                                                    或者这个单端口多用户的<br>
                                                    <code>wget -O- {$baseUrl}/link/{$router_token_without_mu}
                                                        ?is_ss=1 | bash && echo -e "\n0 */3 * * * wget
                                                        -O- {$baseUrl}/link/{$router_token_without_mu}?is_ss=1 |
                                                        bash\n">> /etc/storage/cron/crontabs/admin && killall crond
                                                        && crond </code><br>
                                                    执行完毕以后就可以到路由器的设置面板里随意选择 Shadowsocks 服务器进行连接了。</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-action">
                                    <div class="card-action-btn pull-left">
                                        <p><a class="btn btn-brand btn-flat waves-attach"
                                              href="/user/url_reset"><span class="icon">close</span>&nbsp;重置所有链接</a>
                                        </p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>

                {if $enable_duoshuo=='true'}
                    <div class="card">
                        <div class="card-main">
                            <div class="card-inner margin-bottom-no">
                                <p class="card-heading">讨论区</p>
                                <div class="ds-thread" data-thread-key="0" data-title="index"
                                     data-url="{$baseUrl}/user/"></div>
                                <script type="text/javascript">
                                    var duoshuoQuery = {

                                        short_name: "{$duoshuo_shortname}"


                                    };
                                    (function () {
                                        var ds = document.createElement('script');
                                        ds.type = 'text/javascript';
                                        ds.async = true;
                                        ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
                                        ds.charset = 'UTF-8';
                                        (document.getElementsByTagName('head')[0]
                                            || document.getElementsByTagName('body')[0]).appendChild(ds);
                                    })();
                                </script>
                            </div>

                        </div>
                    </div>
                {/if}

                {include file='dialog.tpl'}


        </div>
        </section>
        </div>
    </main>
{/block}
{block name='script'}
    <script src="/extra/cdnjs.cloudflare.com/ajax/libs/clipboard.js/1.5.16/clipboard.min.js"></script>
    <script>
        $(function () {
            new Clipboard('.copy-text');
        });
        $(".copy-text").click(function () {
            $("#result").modal();
            $("#msg").html("已复制到您的剪贴板，请您继续接下来的操作。");
        });
    </script>
{/block}
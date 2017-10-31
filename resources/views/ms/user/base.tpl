{extends file='base.tpl'}
{block name='nav'}
    <nav aria-hidden="true" class="menu menu-left nav-drawer nav-drawer-md" id="ui_menu" tabindex="-1">
        <div class="menu-scroll">
            <div class="menu-content">
                <a class="menu-logo" href="/"><i class="icon icon-lg">person_pin_circle</i>&nbsp;用户面板</a>
                <ul class="nav">
                    <li id="limenus">
                        <a class="waves-attach" data-toggle="collapse" aria-expanded="false" href="#ui_menu_me">我的</a>
                        <ul class="menu-collapse collapse out" id="ui_menu_me">
                            <li>
                                <a href="/user">
                                    <i class="icon icon-lg">recent_actors</i>&nbsp;首页
                                </a>
                            </li>

                            <li>
                                <a href="/user/profile">
                                    <i class="icon icon-lg">info</i>&nbsp;账户信息
                                </a>
                            </li>

                            <li>
                                <a href="/user/edit">
                                    <i class="icon icon-lg">sync_problem</i>&nbsp;资料编辑
                                </a>
                            </li>

                            <li>
                                <a href="/user/invite">
                                    <i class="icon icon-lg">loyalty</i>&nbsp;邀请码
                                </a>
                            </li>

                            <li>
                                <a href="/user/announcement">
                                    <i class="icon icon-lg">announcement</i>&nbsp;查看公告
                                </a>
                            </li>


                            {if $config['enable_donate']=='true'}
                                <li>
                                    <a href="/user/donate">
                                        <i class="icon icon-lg">attach_money</i>&nbsp;捐赠公示
                                    </a>
                                </li>
                            {/if}


                        </ul>


                        <a class="waves-attach" data-toggle="collapse" href="#ui_menu_use">使用</a>
                        <ul class="menu-collapse collapse out" id="ui_menu_use">
                            <li>
                                <a href="/user/node">
                                    <i class="icon icon-lg">router</i>&nbsp;节点列表
                                </a>
                            </li>

                            <li>
                                <a href="/user/relay">
                                    <i class="icon icon-lg">compare_arrows</i>&nbsp;中转规则
                                </a>
                            </li>

                            <li>
                                <a href="/user/trafficlog">
                                    <i class="icon icon-lg">traffic</i>&nbsp;流量记录
                                </a>
                            </li>

                            <li>
                                <a href="/user/lookingglass">
                                    <i class="icon icon-lg">youtube_searched_for</i>&nbsp;观察窗
                                </a>
                            </li>
                        </ul>

                        <a class="waves-attach" data-toggle="collapse" href="#ui_menu_detect">审计</a>
                        <ul class="menu-collapse collapse out" id="ui_menu_detect">
                            <li><a href="/user/detect"><i class="icon icon-lg">account_balance</i>&nbsp;审计规则</a></li>
                            <li><a href="/user/detect/log"><i class="icon icon-lg">assignment_late</i>&nbsp;审计记录</a>
                            </li>
                        </ul>

                        <a class="waves-attach" data-toggle="collapse" href="#ui_menu_trade">帮助</a>
                        <ul class="menu-collapse collapse out" id="ui_menu_trade">
                            {if $config['enable_wecenter']=='true'}
                                <li>
                                    <a href="{$config["wecenter_url"]}" target="_blank">
                                        <i class="icon icon-lg">help</i>&nbsp;问答系统
                                    </a>
                                </li>
                            {/if}

                            <li>
                                <a href="/user/ticket">
                                    <i class="icon icon-lg">question_answer</i>&nbsp;工单系统
                                </a>
                            </li>
                        </ul>


                        <a class="waves-attach" data-toggle="collapse" href="#ui_menu_help">交易</a>
                        <ul class="menu-collapse collapse out" id="ui_menu_help">


                            <li>
                                <a href="/user/shop">
                                    <i class="icon icon-lg">shop</i>&nbsp;商店
                                </a>
                            </li>

                            <li><a href="/user/bought"><i class="icon icon-lg">shopping_cart</i>&nbsp;购买记录</a></li>


                            <li>
                                <a href="/user/code">
                                    <i class="icon icon-lg">code</i>&nbsp;充值
                                </a>
                            </li>
                        </ul>

                        {if $user->isAdmin()}
                    <li>
                        <a href="/admin">
                            <i class="icon icon-lg">person_pin</i>&nbsp;管理面板
                        </a>
                    </li>
                    {/if}

                    </li>
                </ul>
            </div>
        </div>
    </nav>
{/block}

{block name='basescript'}
    <script src="//cdnjs.cloudflare.com/ajax/libs/clipboard.js/1.5.16/clipboard.min.js"></script>
{/block}
</body>
</html>
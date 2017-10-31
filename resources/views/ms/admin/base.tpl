{extends file='base.tpl'}
{block name='nav'}
    <nav aria-hidden="true" class="menu menu-left nav-drawer nav-drawer-md" id="ui_menu" tabindex="-1">
        <div class="menu-scroll">
            <div class="menu-content">
                <a class="menu-logo" href="/"><i class="icon icon-lg">person_pin</i>&nbsp;管理面板</a>
                <ul class="nav">
                    <li id="limenus">
                        <a class="waves-attach" data-toggle="collapse" href="#ui_menu_me">我的</a>
                        <ul class="menu-collapse collapse out" id="ui_menu_me">
                            <li><a href="/admin"><i class="icon icon-lg">business_center</i>&nbsp;系统概览</a></li>
                            <li><a href="/admin/announcement"><i class="icon icon-lg">announcement</i>&nbsp;公告管理</a>
                            </li>
                            <li><a href="/admin/ticket"><i class="icon icon-lg">question_answer</i>&nbsp;工单管理</a></li>
                            <li><a href="/admin/auto"><i class="icon icon-lg">flash_auto</i>&nbsp;下发命令</a></li>
                        </ul>

                        <a class="waves-attach" data-toggle="collapse" href="#ui_menu_node">节点</a>
                        <ul class="menu-collapse collapse out" id="ui_menu_node">
                            <li><a href="/admin/node"><i class="icon icon-lg">router</i>&nbsp;节点列表</a></li>
                            <li><a href="/admin/trafficlog"><i class="icon icon-lg">traffic</i>&nbsp;流量记录</a></li>
                            <li><a href="/admin/block"><i class="icon icon-lg">dialer_sip</i>&nbsp;已封禁IP</a></li>
                            <li><a href="/admin/unblock"><i class="icon icon-lg">dialer_sip</i>&nbsp;已解封IP</a></li>
                        </ul>

                        <a class="waves-attach" data-toggle="collapse" href="#ui_menu_user">用户</a>
                        <ul class="menu-collapse collapse out" id="ui_menu_user">
                            <li><a href="/admin/user"><i class="icon icon-lg">supervisor_account</i>&nbsp;用户列表</a></li>
                            <li><a href="/admin/relay"><i class="icon icon-lg">compare_arrows</i>&nbsp;中转规则</a></li>
                            <li><a href="/admin/invite"><i class="icon icon-lg">loyalty</i>&nbsp;邀请与返利</a></li>
                            <li><a href="/admin/login"><i class="icon icon-lg">text_fields</i>&nbsp;登录记录</a></li>
                            <li><a href="/admin/alive"><i class="icon icon-lg">important_devices</i>&nbsp;在线IP</a></li>
                        </ul>

                        <a class="waves-attach" data-toggle="collapse" href="#ui_menu_detect">审计</a>
                        <ul class="menu-collapse collapse out" id="ui_menu_detect">
                            <li><a href="/admin/detect"><i class="icon icon-lg">account_balance</i>&nbsp;审计规则</a></li>
                            <li><a href="/admin/detect/log"><i class="icon icon-lg">assignment_late</i>&nbsp;审计记录</a>
                            </li>
                        </ul>


                        <a class="waves-attach" data-toggle="collapse" href="#ui_menu_trade">交易</a>
                        <ul class="menu-collapse collapse out" id="ui_menu_trade">
                            <li><a href="/admin/code"><i
                                            class="icon icon-lg">code</i>&nbsp;充值码{if $config['enable_donate']=='true'}与捐赠{/if}
                                </a></li>
                            <li><a href="/admin/shop"><i class="icon icon-lg">shop</i>&nbsp;商品</a></li>
                            <li><a href="/admin/coupon"><i class="icon icon-lg">card_giftcard</i>&nbsp;优惠码</a></li>
                            <li><a href="/admin/bought"><i class="icon icon-lg">shopping_cart</i>&nbsp;购买记录</a></li>
                        </ul>

                    <li><a href="/user"><i class="icon icon-lg">person</i>&nbsp;用户中心</a></li>
                    </li>


                </ul>
            </div>
        </div>
    </nav>
{/block}

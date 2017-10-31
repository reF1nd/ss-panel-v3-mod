{extends file='user/base.tpl'}
{block name='main'}
    <main class="content">
        <div class="content-header ui-content-header">
            <div class="container">
                <h1 class="content-heading">我的账户</h1>
            </div>
        </div>
        <div class="container">
            <div class="row ms-section min-height-450">
                <div class="col-lg-6 col-md-6">
                    <p class="card-heading">登录信息</p>

                    <nav class="tab-nav margin-top-no">
                        <ul class="nav nav-list">

                            <li class="active ">
                                <a class="waves-attach" data-toggle="tab" href="#all_wodezhanghu">
                                    我的帐号</a>
                            </li>
                            <li >
                                <a class="waves-attach" data-toggle="tab" href="#all_fiveip">
                                    最近五分钟使用IP</a>
                            </li>
                            <li>
                                <a class="waves-attach" data-toggle="tab" href="#all_shiip">
                                    最近十次登录IP</a>
                            </li>

                        </ul>
                    </nav>
                    <div class="tab-pane active in" id="all_wodezhanghu">
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

                    <div class="tab-pane fade in" id="all_fiveip">
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
        </div>
        </section>
        </div>
    </main>
{/block}
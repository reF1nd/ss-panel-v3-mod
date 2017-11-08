{extends file='guest/base.tpl'}
{block name='main'}
    <main class="content">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <section class="margin-top-no max-width-1000 ms-section-clean div-center">

                        <div class="card ">
                            <div class="card-main">
                                <div class="card-inner min-height-450">
                                    <p class="card-heading" style="font-size: 35px;margin-bottom: 60px;">{$config["appName"]}</p>

                                    </p>本APP仅可用于网络加速，请勿将本APP用于非法用途。
                                    请勿发布、传送、传播、储存违反国家法律法规禁止的内容： <p>
                                    <p>（1）违反宪法确定的基本原则的；
                                    <p>
                                    <p>（2）危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；
                                    <p>
                                    <p>（3）损害国家荣誉和利益的；
                                    <p>
                                    <p>（4）煽动民族仇恨、民族歧视，破坏民族团结的；
                                    <p>
                                    <p>（5）破坏国家宗教政策，宣扬邪教和封建迷信的；
                                    <p>
                                    <p>（6）散布谣言，扰乱社会秩序，破坏社会稳定的；
                                    <p>
                                    <p>（7）散布淫秽、色情、赌博、暴力、恐怖或者教唆犯罪的；
                                    <p>
                                    <p>（8）侮辱或者诽谤他人，侵害他人合法权益的；
                                    <p>
                                    <p>（9）煽动非法集会、结社、游行、示威、聚众扰乱社会秩序；
                                    <p>
                                    <p>（10）有版权的影视作品，软件作品或其它版权作品。
                                    <p>
                                    <p>（11）含有法律、行政法规禁止的其他内容的。
                                    <p>
                                        违者后果自负。
                                </div>
                                <div class="card-action">
                                    {if $user->isLogin}
                                        <div class="card-action-btn pull-left">
                                            <a class="btn btn-flat waves-attach waves-light waves-effect"
                                               href="/user"><span class="icon">airline_seat_recline_normal</span>&nbsp;进入</a>
                                        </div>
                                        <div class="card-action-btn pull-left">
                                            <a class="btn btn-flat waves-attach waves-light waves-effect"
                                               href="/user/logout"><span
                                                        class="icon">exit_to_app</span>登出</a>
                                        </div>
                                    {else}
                                        <div class="card-action-btn pull-left">
                                            <a class="btn btn-flat waves-attach waves-light waves-effect"
                                               href="/auth/register"><span
                                                        class="icon">pregnant_woman</span>&nbsp;注册</a>
                                        </div>
                                        <div class="card-action-btn pull-left">
                                            <a class="btn btn-flat waves-attach waves-light waves-effect"
                                               href="/auth/login"><span class="icon">vpn_key</span>&nbsp;登录</a>
                                        </div>
                                        <div class="card-action-btn pull-left">
                                            <a class="btn btn-flat waves-attach waves-light waves-effect"
                                               href="/tos"><i class="icon icon-lg">text_format</i>邀请码</a>
                                        </div>

                                    {/if}
                                    <div class="card-action-btn pull-left">
                                        <a class="btn btn-flat waves-attach waves-light waves-effect"
                                           href="/tos"><i class="icon icon-lg">text_format</i>&nbsp;TOS</a>
                                    </div>
                                    <div class="card-action-btn pull-left">
                                        <a class="btn btn-flat waves-attach waves-light waves-effect"
                                           href="/staff"> &copy; {$config["appName"]} STAFF</a>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </section>
                </div>
            </div>
        </div>
    </main>
{/block}
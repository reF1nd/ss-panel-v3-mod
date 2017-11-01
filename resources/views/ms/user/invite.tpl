{extends file='user/base.tpl'}{block name='main'}
    <main class="content">
        <div class="content-header ui-content-header">
            <div class="container">
                <h1 class="content-heading">邀请</h1>
            </div>
        </div>
        <div class="container">
            <section class="content-inner margin-top-no">
                <div class="row ms-section">
                    <div class="col-lg-12 col-md-12">

                        <div class="card margin-bottom-no">

                            <div class="card-main">
                                <div  class="card-inner">
                                    <p class="card-heading">注意！</p>

                                    <p>邀请码请给认识的需要的人。</p>

                                    <p>邀请有记录，若被邀请的人违反用户协议，您将会有连带责任。</p>
                                    <p>邀请码暂时无法购买，请珍惜。</p>

                                    <p>公共页面不定期发放邀请码，如果用完邀请码可以关注公共邀请。</p>

                                    <p>您每拉一位用户注册，当 TA 充值时您就会获得 TA 充值金额的 <code>{$config["code_payback"]} %</code>
                                        的提成。</p>
                                    <p>当前您可以生成<code>{$user->invite_num}</code>个邀请码
                                        {if $user->invite_num }
                                            <button id="invite" class="btn btn-flat">生成我的邀请码</button>
                                        {/if}
                                    </p>
                                </div>
                                <div class="card-inner">

                                    <div class="card-table">
                                        <div class="table-responsive">
                                            {$codes->render()}
                                            <table class="table">
                                                <thead>
                                                <tr>
                                                    <th>###</th>
                                                    <th>邀请码(点右键复制链接)</th>
                                                    <th>状态</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                {foreach $codes as $code}
                                                    <tr>
                                                        <td><b>{$code->id}</b></td>
                                                        <td><a href="/auth/register?code={$code->code}"
                                                               target="_blank">{$code->code}</a>
                                                        </td>
                                                        <td>可用</td>
                                                    </tr>
                                                {/foreach}
                                                </tbody>
                                            </table>
                                            {$codes->render()}
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
{/block}{block name='script'}
    <script>
        $(document).ready(function () {
            $("#invite").click(function () {
                $.ajax({
                    type: "POST",
                    url: "/user/invite",
                    dataType: "json",
                    success: function (data) {
                        window.location.reload();
                    },
                    error: function (jqXHR) {
                        $("#result").modal();
                        $("#msg").html("发生错误：" + jqXHR.status);
                    }
                })
            })
        })
    </script>
{/block}
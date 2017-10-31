{extends file='guest/base.tpl'}
{block name='main'}
    <main class="content">

        <div class="row ">
            <div class="col-lg-8 col-sm-8 col-lg-offset-2 col-sm-offset-2 box_section  col-md-8 col-md-offset-2">
                <div class="container">
                    <section class="content-inner margin-top-no">


                        <div class="card">
                            <div class="card-main">
                                <div class="card-inner">
                                    <p>您的访问方式不正确。如果您认为这个错误不该发生，<a
                                                href="https://github.com/glzjin/ss-panel-v3-mod/issues">请到
                                            Github 提交 issue</a>。</p>
                                </div>

                                <div class="card-action">
                                    <div class="card-action-btn pull-left">
                                        <a class="btn btn-flat waves-attach" href="javascript:history.back()"><span
                                                    class="icon">backspace</span>&nbsp;返回</a>
                                    </div>
                                </div>

                            </div>
                        </div>


                        <div class="card">
                            <div class="card-main">
                                <div class="card-inner">
                                    <div class="card-img">
                                        <img src="{$pic}" style="width: 100%;">
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
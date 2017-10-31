{extends file='admin/base.tpl'}{block name='main'}
    <main class="content">
        <div class="content-header ui-content-header">
            <div class="container">
                <h1 class="content-heading">添加公告</h1>
            </div>
        </div>
        <div class="container">
            <div class="col-lg-12 col-md-12">
                <section class="content-inner margin-top-no">

                    <div class="card">
                        <div class="card-main">
                            <div class="card-inner">
                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="content">内容</label>
                                    <link rel="stylesheet" href="/theme/{$theme}/editor/css/editormd.min.css"/>
                                    <div id="editormd">
                                        <textarea style="display:none;" id="content"></textarea>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>


                    <div class="card">
                        <div class="card-main">
                            <div class="card-inner">

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-10 col-md-push-1">
                                            <button id="submit" type="submit"
                                                    class="btn btn-block btn-brand waves-attach waves-light">添加
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    {include file='dialog.tpl'}
            </div>


        </div>
    </main>
{/block}{block name='script'}
    <script src="/theme/{$theme}/editor/editormd.min.js"></script>
    <script>
        $(document).ready(function () {
            function submit() {
                $.ajax({
                    type: "POST",
                    url: "/admin/announcement",
                    dataType: "json",
                    data: {
                        content: editor.getHTML(),
                        markdown: editor.getMarkdown()
                    },
                    success: function (data) {
                        if (data.ret) {
                            $("#result").modal();
                            $("#msg").html(data.msg);
                            window.setTimeout("location.href=top.document.referrer", {$config['jump_delay']});
                        } else {
                            $("#result").modal();
                            $("#msg").html(data.msg);
                        }
                    },
                    error: function (jqXHR) {
                        $("#msg-error").hide(10);
                        $("#msg-error").show(100);
                        $("#msg-error-p").html("发生错误：" + jqXHR.status);
                    }
                });
            }

            $("#submit").click(function () {
                submit();
            });
        });

        $(function () {
            editor = editormd("editormd", {
                path: "/theme/{$theme}/editor/lib/", // Autoload modules mode, codemirror, marked... dependents libs path
                height: 720,
                saveHTMLToTextarea: true
            });

            /*
            // or
            var editor = editormd({
                id   : "editormd",
                path : "../lib/"
            });
            */
        });
    </script>
{/block}
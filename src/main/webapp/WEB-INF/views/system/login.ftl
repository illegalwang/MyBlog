<#include "../common/_layout.ftl">
<@layoutHead title="登录">
<style type="text/css">
    body {
        background-image: url(/resources/images/login_background_01.jpg);
    }

    .lucency {
        /* IE透明度设置*/
        filter: alpha(opacity=70);
        /* 火狐透明度设置*/
        -moz-opacity: 0.7;
        opacity: 0.7;
    }
</style>
</@layoutHead>

<@layoutBody bodyClass="blog-body">
<div class="container-fluid">
    <div class="row">
        <#--<div class="col-md-12"><a href="#" class="pull-right">注册</a></div>-->
    </div>
    <div class="row">
        <div class="col-md-4 col-md-offset-4" style="padding-left: 70px;padding-right: 70px">
            <div class="panel panel-default lucency" style="margin-top: 55%">
                <div class="panel-body">
                    <form action="login" id="loginForm" method="post">
                        <div class="form-group">
                            <label for="username">用户名</label>
                            <input class="form-control" id="username" name="username" placeholder="用户名">
                        </div>
                        <div class="form-group">
                            <label for="password">密码</label>
                            <input class="form-control" type="password" id="password" name="password" placeholder="密码">
                        </div>
                        <span class="text-danger">${message!""}</span>
                        <button type="submit" class="btn btn-primary" style="width: 100%;">登录</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="/resources/canvas-particle.js"></script>
<script src="/resources/canvas-particle-include.js"></script>
</@layoutBody>

<@layoutFooter>
</@layoutFooter>

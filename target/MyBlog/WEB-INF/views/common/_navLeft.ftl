<#macro navLeft>
<nav id="navLeft" class="navbar navbar-inverse" style="overflow: auto;">
    <div class="container-fluid">
        <div style="height: 60px;border-bottom: 1px solid #5B5B5B">
            <h2 style="width: 201px;">
                <a href="/index" style="text-decoration: none;color: #808080;"><i class="glyphicon glyphicon-home"></i>&nbsp;博客管理</a>
            </h2>
        </div>
        <div>
            <ul class="nav nav-pills nav-stacked">
                <li role="presentation">
                    <a href="#" class="text-muted"><i class="glyphicon glyphicon-file"></i>
                        文章管理
                    </a>
                </li>
                <li role="presentation">
                    <a href="#" class="text-muted"><i class="glyphicon glyphicon-pencil"></i>
                        评论管理
                    </a>
                </li>
                <li role="presentation">
                    <a href="#systemSetting" class="nav-header collapsed text-muted" data-toggle="collapse">
                        <i class="glyphicon glyphicon-cog"></i>
                        系统管理
                        <span class="pull-right glyphicon glyphicon-menu-down"></span>
                    </a>
                    <ul id="systemSetting" class="nav nav-list collapse">
                        <li><a href="/user/usermanager" class="text-muted">&nbsp;&nbsp;&nbsp;&nbsp;<i class="glyphicon glyphicon-user"></i>用户管理</a></li>
                        <li><a href="/menu" class="text-muted">&nbsp;&nbsp;&nbsp;&nbsp;<i class="glyphicon glyphicon-th-list"></i>菜单管理</a></li>
                        <li><a href="#" class="text-muted">&nbsp;&nbsp;&nbsp;&nbsp;<i class="glyphicon glyphicon-asterisk"></i>角色管理</a></li>
                        <li><a href="#" class="text-muted">&nbsp;&nbsp;&nbsp;&nbsp;<i class="glyphicon glyphicon-edit"></i>修改密码</a></li>
                        <li><a href="#" class="text-muted">&nbsp;&nbsp;&nbsp;&nbsp;<i class="glyphicon glyphicon-eye-open"></i>日志查看</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
</#macro>
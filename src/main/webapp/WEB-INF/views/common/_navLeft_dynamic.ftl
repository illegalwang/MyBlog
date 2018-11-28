<#macro navLeft_dynamic>
<nav id="navLeft" class="navbar navbar-inverse" style="overflow: auto;">
    <div class="container-fluid">
        <div style="height: 60px;border-bottom: 1px solid #5B5B5B">
            <h2 style="width: 201px;">
                <a href="/index" style="text-decoration: none;color: #808080;"><i class="glyphicon glyphicon-home"></i>&nbsp;博客管理</a>
            </h2>
        </div>
        <div>
            <ul class="nav nav-pills nav-stacked">
                <#if menuList?? && (menuList?size > 0) >
                    <#list menuList as menu>
                        <#if menu.childList?? && (menu.childList?size > 0)>
                            <li role="presentation">
                                <a href="${menu.menuPath!''}" class="nav-header collapsed text-muted" data-toggle="collapse">
                                    <i class="${menu.cssClass!''}"></i>
                                        ${menu.menuName!''}
                                    <span class="pull-right glyphicon glyphicon-menu-down"></span>
                                </a>
                                <ul id="${menu.menuPath[1..]}" class="nav nav-list collapse">
                                    <#list menu.childList as childOne>
                                        <li><a href="${childOne.menuPath!''}" class="text-muted">&nbsp;&nbsp;&nbsp;&nbsp;<i class="${childOne.cssClass}"></i>${childOne.menuName}</a></li>
                                    </#list>
                                </ul>
                            </li>
                        <#else>
                            <li role="presentation">
                                <a href="${menu.menuPath!''}" class="text-muted"><i class="${menu.cssClass!''}"></i>
                                ${menu.menuName!''}
                                </a>
                            </li>
                        </#if>
                    </#list>
                </#if>
            </ul>
        </div>
    </div>
</nav>
</#macro>
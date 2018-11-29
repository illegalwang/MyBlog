<#include "../common/_layout.ftl">
<#include "../common/_index.ftl">
<#include "../common/_pagenav.ftl">
<@layoutHead title="菜单管理">

</@layoutHead>
<@layoutBody bodyClass="">
    <@indexLeft>
    </@indexLeft>

    <@indexRightTop>
    </@indexRightTop>
<#-- 右侧中部内容修改区域 -->
    <@indexRightMiddle>
    <div class="row" style="background-color: white;margin-bottom: 15px;">
        <div class="col-md-12" style="background-color: white;">
            <h1 style="text-align: center;font-size: 50px"><strong class="text-muted">菜单管理界面</strong></h1>
        </div>
    </div>
    <div class="row" style="padding-right: 50px;padding-left: 50px">
        <div class="col-md-12">
            <div class="alert alert-warning" style="padding: 15px;margin-bottom: 15px;">
                <a href="#" class="close" data-dismiss="alert">&times;</a>
                <span><strong>友情提示！</strong>带有子菜单的父菜单路径需由“#”开头。操作完成后，重新登录，左侧菜单才会生效！</span>
            </div>
            <div style="background-color: white;padding: 10px 10px 10px 10px;">
                <table class="table" style="border-bottom: solid 1px lavender;">
                    <thead>
                        <tr>
                            <td><strong class="text-muted" style="font-size: 20px;">菜单管理</strong></td>
                        </tr>
                    </thead>
                </table>
                <table style="width: 100%;margin: 0px 0px 10px 10px;table-layout: fixed;">
                    <tr>
                        <td><strong class="text-muted">菜单列表</strong></td>
                        <td>
                            <button class="btn btn-default btn-xs" id="createMenuBtn"><span class="text-muted">新建菜单</span></button>
                        </td>
                    </tr>
                </table>
                <table class="table table-bordered" style="table-layout: fixed;">
                    <tr>
                        <td>
                            <table class="table table-bordered table-hover" id="menuTable">
                                <#if menuList?? && (menuList?size > 0)>
                                    <#list menuList as menu>
                                        <#-- cursor:pointer鼠标变成小手的形状 -->
                                        <tr class="active text-muted" style="cursor: pointer;" onclick="showMenuValue(${menu})">
                                            <td>
                                                <i class="${menu.cssClass}"></i>&nbsp;${menu.menuName}
                                                <#if menu.childList?? && (menu.childList?size > 0)>
                                                    &nbsp;&nbsp;<button class="btn btn-xs btn-default btn-group showChildBtn" data-child="${menu.menuPath}"><i class="glyphicon glyphicon-chevron-down"></i></button>
                                                    <#--&nbsp;&nbsp;<button class="btn btn-xs btn-default btn-group"><i class="glyphicon glyphicon-chevron-down"></i></button>-->
                                                </#if>
                                                <div class="btn-group pull-right">
                                                    <button class="btn btn-xs btn-default btn-group plusBtn" data-id="${menu.id}"><i class="text-muted glyphicon glyphicon-plus"></i></button>
                                                    <button class="btn btn-xs btn-default btn-group minusBtn" data-menu="${menu}"><i class="text-muted glyphicon glyphicon-minus"></i></button>
                                                </div>
                                            </td>
                                        </tr>
                                        <#if menu.childList?? && (menu.childList?size > 0)>
                                            <#list menu.childList as childOne>
                                                <tr class="warning text-muted" data-toggle="${menu.menuPath}" style="cursor: pointer;display: none;" onclick="showMenuValue(${childOne})">
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;<i class="${childOne.cssClass}"></i>&nbsp;${childOne.menuName}
                                                        <div class="btn-group pull-right">
                                                            <button class="btn btn-xs btn-default btn-group minusBtn" data-menu="${childOne}"><i class="text-muted glyphicon glyphicon-minus"></i></button>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </#list>
                                        </#if>
                                    </#list>
                                </#if>
                            </table>
                        </td>
                        <td>
                            <form class="form-horizontal">
                                <input type="hidden" class="form-control" id="inputId" name="id">
                                <div class="form-group text-muted" style="margin: 20px 20px 20px 20px;">
                                    <label for="inputMenuName" class="col-sm-3 control-label" style="font-size: 16px;">标题</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="inputMenuName" name="menuName" placeholder="菜单标题">
                                    </div>
                                </div>
                                <div class="form-group text-muted"" style="margin: 0px 20px 20px 20px;">
                                    <label for="inputMenuPath" class="col-sm-3 control-label" style="font-size: 16px;">路径</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="inputMenuPath" name="menuPath" placeholder="/path/...">
                                    </div>
                                </div>
                                <div class="form-group text-muted" style="margin: 0px 20px 20px 20px;">
                                    <label for="inputCssClass" class="col-sm-3 control-label" style="font-size: 16px;">图标</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="inputCssClass" name="cssClass" placeholder="glyphicon glyphicon-picture">
                                            <span class="input-group input-group-btn">
                                                <button class="btn btn-default" type="button" data-toggle="modal" data-target="#iconModal"><i class="glyphicon glyphicon-picture" id="inputCssClassI"></i></button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group text-muted" style="margin: 0px 20px 20px 20px;">
                                    <label for="inputMenuSort" class="col-sm-3 control-label" style="font-size: 16px;">排序</label>
                                    <div class="col-sm-8">
                                        <input type="number" class="form-control" id="inputMenuSort" name="menuSort" min="0" placeholder="0">
                                    </div>
                                </div>
                                <div class="form-group text-muted" style="margin: 0px 20px 20px 20px;">
                                    <label for="inputParentId" class="col-sm-3 control-label" style="font-size: 16px;">父菜单</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="inputParentId" name="parentId">
                                            <option class="text-muted" value="0">根目录</option>
                                            <#list menuList as menu>
                                                <option class="text-muted" value="${menu.id}">${menu.menuName}</option>
                                            </#list>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-groupd" style="margin: 0px 20px 20px 20px;">
                                    <div class="col-sm-offset-3 col-sm-8">
                                        <button type="button" class="btn btn-default" id="saveBtn" style="width: 100%;"><span class="text-muted">保存</span></button>
                                    </div>
                                </div>
                                <div class="form-groupd" style="margin: 20px 20px 20px 20px;">
                                    <div class="col-sm-offset-3 col-sm-8">
                                        <button type="reset" class="btn btn-default" style="width: 100%;"><span class="text-muted">重置</span></button>
                                    </div>
                                </div>
                            </form>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    </@indexRightMiddle>
<#-- 右侧中部内容修改区域 -->
    <@indexRightBottom>
    </@indexRightBottom>
<!-- 图标模态框 -->
<#include "icon_modal.ftl">
</@layoutBody>
<@layoutFooter>
<script>

    function formReset() {
        $("form")[0].reset();
        $("input[type='hidden']").val("");
    }

    function showMenuValue(menu) {
        formReset();
        $("#inputId").val(menu.id);
        $("#inputMenuName").val(menu.menuName);
        $("#inputMenuPath").val(menu.menuPath);
        $("#inputCssClass").val(menu.cssClass);
        $("#inputCssClassI").attr('class', menu.cssClass);
        $("#inputMenuSort").val(menu.menuSort);
        $("#inputParentId").val(menu.parentId);
    }

    function useAjax(path, type, formJson) {
        $.ajax({
            url: path,
            type: type,
            data: formJson,
            dataType: "JSON",
            success: function(result) {
                var trHtml = "";
                $.each(result, function (i, n) {
                    var hasChild = "";
                    var childList = "";
                    if (n.childList) {
                        hasChild =  "&nbsp;&nbsp;<button class='btn btn-xs btn-default btn-group showChildBtn' data-child='" + n.menuPath + "'><i class='glyphicon glyphicon-chevron-down'></i></button>";
                        $.each(n.childList, function (i, c) {
                           childList +=  "<tr class='warning text-muted' data-toggle='" + n.menuPath + "' style='cursor: pointer;display: none;' onclick='showMenuValue(" + JSON.stringify(c) + ")'>" +
                                            "<td>&nbsp;&nbsp;&nbsp;&nbsp;<i class='" + c.cssClass + "'></i>&nbsp;" + c.menuName +
                                                "<div class='btn-group pull-right'>" +
                                                    "<button class='btn btn-xs btn-default btn-group minusBtn' data-menu='" + JSON.stringify(c) + "'><i class='text-muted glyphicon glyphicon-minus'></i></button>" +
                                                "</div>" +
                                            "</td>" +
                                        "</tr>";
                        });
                    }

                    trHtml += "<tr class='active text-muted' style='cursor: pointer;' onclick='showMenuValue(" + JSON.stringify(n) + ")'>"+
                                 "<td>" +
                                     "<i class='" + n.cssClass + "'></i>&nbsp;" + n.menuName + hasChild +
                                     "<div class='btn-group pull-right'>" +
                                         "<button class='btn btn-xs btn-default btn-group plusBtn' data-id='" + n.id + "'><i class='text-muted glyphicon glyphicon-plus'></i></button>" +
                                         "<button class='btn btn-xs btn-default btn-group minusBtn' data-menu='" + JSON.stringify(n) + "'><i class='text-muted glyphicon glyphicon-minus'></i></button>" +
                                     "</div>" +
                                 "</td>" +
                             "</tr>" + childList;
                });

            $("#menuTable > tbody").html(trHtml);
            }
        });
    }

    $(function() {
        $("#iconTable td").mouseenter(function() {
            $(this).attr('class', 'active');
        });

        $("#iconTable td").mouseleave(function() {
            $(this).attr('class', '');
        });

        $("#iconTable").on('click', 'td', function () {
           var icon = $(this).children().attr('class');
           $("#inputCssClass").val(icon);
           $("#inputCssClassI").attr('class', icon);
        });

        $(document).on("click", ".plusBtn", function(){
            $("#inputMenuName").focus();
            formReset();
        });

        $(document).on('click', '.showChildBtn', function (e) {
            e.stopPropagation();
            var path = $(this).data("child");
            $(this).children().attr('class', $(this).children().attr('class')
                == 'glyphicon glyphicon-chevron-right' ? 'glyphicon glyphicon-chevron-down' : 'glyphicon glyphicon-chevron-right');
            $("tr[data-toggle='"+path+"']").toggle();
        });
        
        $("#createMenuBtn").on('click', function () {
            $("#inputMenuName").focus();
            formReset();
        });

        $("#saveBtn").on("click", function () {
            // 获取form中的信息参数
            var formVal = $("form").serializeArray();
            var formJson = {};
            var path = "/menu/menu";
            var type = "POST";
            var msg;
            $.each(formVal, function(i, n) {
                formJson[n.name] = n.value;
            });
            if(formJson['id']) {
                msg = "是否保存修改信息？";
                formJson['_method'] = "PUT";
            } else {
                msg = "是否保存？";
            }
            if (confirm(msg)){
                useAjax(path, type, formJson);
            }
        });

        $(document).on('click', '.minusBtn', function() {
            if (confirm("是否删除菜单？")){
                if ($.type($(this).data("menu")) == "string") {
                    eval("var menu = " + $(this).data("menu"));
                } else {
                    var menu = $(this).data("menu");
                }
                var childList = menu.childList;
                var ids = [];
                if (childList) {
                    $.each(childList, function(i, n) {
                        ids.push(n.id);
                    });
                }
                ids.push(menu.id);

                var path = "/menu/menu/" + ids;
                var type = "POST";
                var formJson = {"_method": "DELETE"};
                useAjax(path, type, formJson);
            }
        });
    });
</script>
</@layoutFooter>
<#include "../common/_layout.ftl">
<#include "../common/_index.ftl">
<#include "../common/_pagenav.ftl">
<@layoutHead title="用户管理">
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
            <h1 style="text-align: center;font-size: 50px"><strong class="text-muted">用户管理界面</strong></h1>
        </div>
    </div>
    <div class="row" style="padding-right: 50px;padding-left: 50px">
        <div class="col-md-12">
            <div style="background-color: white;padding: 10px;margin-bottom: 15px;">
                <!-- 添加按钮 -->
                <button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#addModal">
                    <span class="text-muted"><i class="glyphicon glyphicon-plus"></i>&nbsp;添加</span>
                </button>
            </div>
            <div style="background-color: white;padding: 10px 10px 0px 10px;">
                <table class="table table-hover table-striped">
                    <thead>
                    <tr>
                        <th>用户名</th>
                        <th>姓名</th>
                        <th style="width: 150px;">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                        <#list page.list as user>
                        <tr>
                            <td>${user.username}</td>
                            <td>${user.trueName}</td>
                            <td>
                                <div class="row">
                                    <div class="col-md-6" style="margin: 0px;padding: 0px;">
                                        <button class="pull-right btn btn-default btn-sm editBtn" type="button" data-user="${user}" data-toggle="modal" data-target="#editModal">
                                            <span class="text-muted"><i class="glyphicon glyphicon-pencil"></i>&nbsp;编辑</span>
                                        </button>
                                    </div>
                                    <div class="col-md-6" style="margin: 0px;padding: 0px;">
                                        <form action="/user/usermanager/${user.userId}" method="POST">
                                            <input type="hidden" name="_method" value="DELETE">
                                            <button class="btn btn-sm btn-default" type="submit">
                                                <span class="text-muted"><i class="glyphicon glyphicon-trash"></i>&nbsp;删除</span>
                                            </button>
                                        </form>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        </#list>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="3">
                                <@pagenav pageUrl="/user/usermanagerpage"></@pagenav>
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
    </@indexRightMiddle>
<#-- 右侧中部内容修改区域 -->
    <@indexRightBottom>
    </@indexRightBottom>
<!-- 添加功能模态框开始 -->
    <#include "add_user.ftl">
<#-- 修改功能模态框 -->
    <#include "edit_user.ftl">
</@layoutBody>
<@layoutFooter>
<script>

    $(function() {
        $(document).on('click', '.editBtn', function () {
            // 判断是string还是object
            if ($.type($(this).data("user")) == "string") {
                eval("var user=" + $(this).data("user"));
            } else {
                var user = $(this).data("user");
            }
            $.each(user, function(i, n) {
                $("#editForm input[name="+i+"]").val(n);
            });
        });

        //$("#pageNavDiv a").click(function() {  }) 开始时这么写，ajax调用完 再点击导航无效，后来改成了下面这种写法
        // jquery的事件委托机制，完美解决
        $("#pageNavDiv").on('click', 'a', function() {
            var url = $(this).data("href");
            var pNum = $(this).data("num");

            $.ajax({
                url: url,
                type: "GET",
                data: {"pageNum": pNum},
                dataType: "json",
                success: function(data) {
                    var trs = "";
                    var pageNav = "";
                    $.each(data.list, function(i, n) {
                        var thisUser = JSON.stringify(n);
                        trs += "<tr>" +
                                "<td>" + n.username + "</td>" + "<td>" + n.trueName+ "</td>" +
                                "<td>" +
                                "<div class='row'>" +
                                "<div class='col-md-6' style='margin: 0px;padding: 0px;'>" +
                                "<button class='pull-right btn btn-default btn-sm editBtn' type='button' data-user='"+ thisUser +"' data-toggle='modal' data-target='#editModal'>" +
                                " <span class='text-muted'><i class='glyphicon glyphicon-pencil'></i>&nbsp;编辑</span>" +
                                "</button>" +
                                "</div>" +
                                "<div class='col-md-6' style='margin: 0px;padding: 0px;'>" +
                                "<form action='/user/usermanager/" + n.userId + "' method='POST'>" +
                                "<input type='hidden' name='_method' value='DELETE'>" +
                                "<button class='btn btn-sm btn-default' type='submit'>" +
                                "<span class='text-muted'><i class='glyphicon glyphicon-trash'></i>&nbsp;删除</span>" +
                                "</button>" +
                                "</form>" +
                                "</div>" +
                                "</div>" +
                                "</td>" +
                                "</tr>";
                    });

                    var pageArrsHtml = "";
                    $.each(data.navigatepageNums, function(i, n) {
                        if(data.pageNum == n) {
                            pageArrsHtml += "<li class='active'><a href='javascript:void(0)' data-href='/user/usermanagerpage' data-num='" + n + "'>" + n + "</a></li>";
                        } else {
                            pageArrsHtml += "<li><a href='javascript:void(0)' data-href='/user/usermanagerpage' data-num='" + n + "'>" + n + "</a></li>";
                        }

                    });

                    var isFirstHtml = "<li>";
                    if (data.isFirstPage) {
                        isFirstHtml = "<li class='disabled'>";
                    }

                    var prePageHtml = "";
                    if (data.hasPreviousPage) {
                        prePageHtml ="<li>" +
                                "<a href='javascript:void(0)' data-href='/user/usermanagerpage' data-num='" + data.prePage + "' aria-label='Previous'>" +
                                "<span aria-hidden='true'>&lt;</span>" +
                                "</a>" +
                                "</li>";
                    }

                    var nextPageHtml = "";
                    if(data.hasNextPage) {
                        nextPageHtml = "<li>" +
                                "<a href='javascript:void(0)' data-href='/user/usermanagerpage' data-num='" + data.nextPage + "' aria-label='Next'>" +
                                "<span aria-hidden='true'>&gt;</span>" +
                                "</a>" +
                                "</li>";
                    }

                    var isLastPageHtml = "<li>";
                    if (data.isLastPage) {
                        isLastPageHtml = "<li class='disabled'>";
                    }

                    pageNav = "<span class='text-muted'>共&nbsp;" + data.total + "&nbsp;条数据</span>" +
                            "<nav class='pull-right' aria-label='Page navigation' style='margin: 0px;'>" +
                            "<ul class='pagination'>" + isFirstHtml +
                            "<a href='javascript:void(0)' data-href='/user/usermanagerpage' data-num='" + data.navigateFirstPage + "' aria-label='First'>" +
                            "<span aria-hidden='true'>&lt;&lt;</span>" +
                            "</a>" +
                            "</li>" + prePageHtml + pageArrsHtml + nextPageHtml + isLastPageHtml +
                            "<a href='javascript:void(0)' data-href='/user/usermanagerpage' data-num='" + data.navigateLastPage + "' aria-label='End'>" +
                            "<span aria-hidden='true'>&gt;&gt;</span>" +
                            "</a>" +
                            "</li>" +
                            "</ul>" +
                            "</nav>";

                    $("tbody").html(trs);
                    $("#pageNavDiv").html(pageNav);
                }
            });
        });
    });
</script>
</@layoutFooter>
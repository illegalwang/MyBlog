/**
 * 这里写一些js事件
 * */
$(function() {
    /*获取当前时间轮询*/
    setInterval(function() {
        var now = (new Date()).toLocaleString();
        $('#current_time').text(now);
    },1000);

    /*初始化左侧菜单滚动条*/
    $("#navLeft").mCustomScrollbar({
        axis: "y",
        theme: "minimal"
    });

    /*初始化中部内容滚动条*/
    $("#rightMiddleDiv").mCustomScrollbar({
        axis: "y",
        theme: "inset-2-dark"
    });
});


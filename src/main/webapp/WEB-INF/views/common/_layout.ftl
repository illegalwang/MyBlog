<#-- macro自定义指令，类似自定义标签库 -->
<#macro layoutHead title>
<!DOCTYPE html>
<#-- overflow:hidden设置页面无滚动条；overflow:scroll设置有滚动条 -->
<html style="height: 100%;overflow:hidden;">
<head lang="en">
    <meta charset="UTF-8">
    <title>${title!""} - wj</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="icon" href="/resources/images/favicon.ico">
    <link rel="stylesheet" href="/resources/bootstrap-3.3.7/css/bootstrap.css">
    <link rel="stylesheet" href="/resources/css/main.css">
    <link rel="stylesheet" href="/resources/mCustomScollbar/jquery.mCustomScrollbar.css">
    <script src="/resources/jquery-3.3.1.min.js"></script>
    <#-- 不定义nested指令，自定义标签之间的内容将被忽略，定义后就可以在标签之间加入新的东西 -->
    <#nested>

</head>
</#macro>
<#macro layoutBody bodyClass>
<body class="mainBody ${bodyClass!''}">

<#--header-->

    <#nested>


<script src="/resources/bootstrap-3.3.7/js/bootstrap.js"></script>
<#-- 自定义的js -->
<script src="/resources/js/main.js"></script>
<#-- 漂亮的滚动条 -->
<script src="/resources/mCustomScollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<#-- 鼠标点击会出现💗的形状 -->
<#--<script src="/resources/js/love.js"></script>-->
<#-- bilibili中的小女孩儿22 -->
<#--<script src="/resources/live2dw/lib/L2Dwidget.min.js?0c58a1486de42ac6cc1c59c7d98ae887"></script>
<script src="/resources/live2dw/importLive2dw.js"></script>-->
</body>
</#macro>
<#macro layoutFooter>
    <#nested>
</html>
</#macro>



<#include "../common/_navTop.ftl">
<#include "../common/_navLeft_dynamic.ftl">
<#macro indexLeft>
<div class="bodyDiv container-fluid" style="background-color: lavender">
<div class="bodyDiv row">
    <#-- 左侧开始 -->
    <div class="bodyDiv col-md-2">
        <@navLeft_dynamic></@navLeft_dynamic>
        <#nested>
    </div>
    <#-- 左侧结束 -->
</#macro>

<#macro indexRightTop>
<#-- 右侧开始 -->
<div class="col-md-10">
    <#-- 右侧上开始 -->
    <div class="row">
        <div class="bodyDiv col-md-12">
            <@navTop></@navTop>
            <#nested>
        </div>
    </div>
    <#-- 右侧上结束 -->
</#macro>

<#macro indexRightMiddle>
    <#-- 右侧中开始 -->
    <div class="row">
        <div class="bodyDiv col-md-12">
            <div id="rightMiddleDiv" style="position: fixed; overflow: auto; top:53px;bottom: 50px;left: 17%;right: 0px;">
                <#nested>
            </div>
        </div>
    </div>
    <#-- 右侧中结束 -->
</#macro>

<#macro indexRightBottom>
    <#-- 右侧底开始 -->
    <div class="row">
        <div class="bodyDiv col-md-12">
            <div style="position: fixed;bottom: 0px;width: 100%;height: 50px;background-color: whitesmoke;
                padding-top: 15px;padding-left: 10px">
                <span style="font-size: 15px;"><strong>Copyright</strong> Company © 2018-2020 wj</span>
                <span id="current_time" style="font-size: 15px;position: fixed;right: 15px;"></span>
                <#nested>
            </div>
        </div>
    </div>
    <#-- 右侧底结束-->
</div>
<#-- 右侧结束 -->
</div>
</div>
</#macro>

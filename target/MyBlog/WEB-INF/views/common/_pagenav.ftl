<#macro pagenav pageUrl>
<div id="pageNavDiv">
    <span class="text-muted">共&nbsp;${page.total}&nbsp;条数据</span>
    <nav class="pull-right" aria-label="Page navigation" style="margin: 0px;">
        <ul class="pagination">
            <li <#if page.isFirstPage>class="disabled"</#if>>
                <a href="javascript:void(0)" <#if !page.isFirstPage>data-href="${pageUrl}" data-num="${page.navigateFirstPage}"</#if> aria-label="First">
                    <span aria-hidden="true">&lt;&lt;</span>
                </a>
            </li>
        <#if page.isHasPreviousPage()>
            <li>
                <a href="javascript:void(0)" data-href="${pageUrl}" data-num="${page.prePage}" aria-label="Previous">
                    <span aria-hidden="true">&lt;</span>
                </a>
            </li>
        </#if>
        <#list page.navigatepageNums as num>
                <li <#if page.pageNum == num>class="active"</#if>><a href="javascript:void(0)" <#if page.pageNum != num>data-href="${pageUrl}" data-num="${num}"</#if>>${num}</a></li>
        </#list>
        <#if page.isHasNextPage()>
            <li>
              <a href="javascript:void(0)" data-href="${pageUrl}" data-num="${page.nextPage}" aria-label="Next">
                    <span aria-hidden="true">&gt;</span>
                </a>
            </li>
        </#if>
            <li <#if page.isLastPage>class="disabled" </#if>>
                <a href="javascript:void(0)" <#if !page.isLastPage>data-href="${pageUrl}" data-num="${page.navigateLastPage}"</#if> aria-label="End">
                    <span aria-hidden="true">&gt;&gt;</span>
                </a>
            </li>
        </ul>
    </nav>
</div>
</#macro>
<#include "/default/utils/ui.ftl"/>
<#assign topId = 1 />

<@layout>
    <ol class="breadcrumb ">
        <li title="发布时间排序" <#if order == 'newest'> class="active" </#if>>
            <a href="?order=newest">最近</a>
        </li>
        <li title="点赞数排序" <#if order == 'favors'> class="active" </#if>>
            <a href="?order=favors">投票</a>
        </li>
        <li title="评论次数排序" <#if order == 'hottest'> class="active" </#if>>
            <a href="?order=hottest">热门</a>
        </li>
    </ol>

    <@contents pn=pn order=order>
    <div class="row main">
        <#list results.content as row>
            <div class="col-lg-12 col-md-4 col-sm-6 col-xs-12">
                <div class="block">
                    <a class="block-thumbnail" href="${base}/view/${row.id}">
                        <div class="thumbnail-overlay"></div>
                        <span class="button-zoom">
                                <img src="${base}/dist/images/image-overlay-view-icon.png">
                            </span>

                        <#if row.thumbnail??>
                            <img src="${base + row.thumbnail}">
                        <#else>
                            <img src="${base}/dist/images/spinner-overlay.png">
                        </#if>
                    </a>

                    <div class="block-contents">
                        <p class="tit">${row.title?html}
                        </p>
                    </div>
                </div>
                <li class="list-group-item media col-md-12" style="margin-top: 0px;">
                    <a class="reply_last_time hidden-xs meta" href="/content/11386">
                        <span class="stress">13</span> 浏览<span> ⋅ </span>0 回复
                    </a>

                    <div class="avatar pull-left">
                        <a href="/user/1">
                            <img class="media-object img-thumbnail avatar avatar-middle" src="http://qzapp.qlogo.cn/qzapp/101235848/934F5897B49DE64FACE2E0F47C7A6472/100" alt="">
                        </a>
                    </div>

                    <div class="infos">
                        <div class="media-heading">
                            <span class="hidden-xs label label-default">问答</span>
                            <a href="/content/11386">${row.title}</a>
                        </div>
                    </div>
                </li>
            </div>
        </#list>
    </div>
    <div class="row" style="width:100%; text-align:center;">
        <!-- Pager -->
        <@pager request.requestURI!"", results, 5/>
    </div>

    </@contents>

</@layout>
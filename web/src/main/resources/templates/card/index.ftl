<#include "/default/utils/ui.ftl"/> <#assign topId = 1 /> <@layout>
<@contents pn=pn order=order blogClass=blogClass>
<div class="row users-show streams">
    <div class="col-xs-12 col-md-2 side-left">
        <nav class="navbar navbar-default shadow-box background-white">
            <div id="home-navbar" class="collapse navbar-collapse">
                <ul class="list-group user-nav first">
                    <li class="list-group-item">
                        <a href="?order=newest"><i class="icon icon-list"></i> 最近</a>
                    </li>
                    <li class="list-group-item">
                        <a href="?order=favors"><i class="icon icon-speech"></i> 投票 </a>
                    </li>
                    <li class="list-group-item">
                        <a href="?order=comments"><i class="icon icon-heart"></i> 热门</a>
                    </li>
                </ul>

                <ul class="list-group user-nav">
                    <#list blogClasss as view>
                        <li class="list-group-item">
                            <a href="${base}/blogClass/${view.key}"><i class="icon icon-layers"></i>  ${view.name}
                            </a>
                        </li>
                    </#list>

                </ul>
            </div>
        </nav>
    </div>
    <div class="col-xs-12 col-md-10 side-right">
        <#--<div class="panel-heading">-->
            <#--<ul class="list-inline topic-filter">-->
                <#--<li data-toggle="tooltip" title="" data-original-title="发布时间排序">-->
                    <#--<a href="?order=newest" class="active">最近</a>-->
                <#--</li>-->
                <#--<li data-toggle="tooltip" title="" data-original-title="点赞数排序">-->
                    <#--<a href="?order=favors">投票</a>-->
                <#--</li>-->
                <#--<li data-toggle="tooltip" title="" data-original-title="评论次数排序">-->
                    <#--<a href="?order=comments">热门</a>-->
                <#--</li>-->
            <#--</ul>-->
            <#--<div class="clearfix"></div>-->
        <#--</div>-->
        <div class="panel panel-default">
            <#list results.content as row>
                <li class="list-group-item">
                    <div class="infos">
                        <div class="media-heading">
                            <h3>
                                <a href="${base}/view/${row.id}">${row.title}</a>
                            </h3>
                        </div>
                    </div>
                    <div class="summary oneline">${row.summary}</div>
                    <div class="info-box d-flex align-content-center">
                        <a class="reply_last_time hidden-xs meta" style="float: left;margin-left: 0px;padding-left: 0px;"
                           href="${base}/users/${row.authorId}"> <span style="color: #3d3d3d;">${row.authorName}</span> ⋅
                            <#list blogClasss as view>
                                <#if ( row.blogClassKey==view.key)><span >${view.name} ⋅ </span></#if>
                            </#list>
                            <span class="timeago">${timeAgo(row.created)}</span>
                        </a>
                        <a class="reply_last_time hidden-xs meta"
                            href="${base}/view/${row.id}"> <span style="color: #3399ea;">${row.views}</span>
                            阅读 ⋅<span style="color: #3399ea;"> ${row.comments}</span> 评论
                        </a>
                    </div>
                </li>
            </#list>
        </div>
    </div>
</div>
<div class="row" style="width: 100%; text-align: center;">
	<!-- Pager -->
	<@pager request.requestURI!"", results, 5/>
</div>

</@contents> </@layout>

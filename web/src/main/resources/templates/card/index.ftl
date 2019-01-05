<#include "/default/utils/ui.ftl"/> <#assign topId = 1 /> <@layout>
<ol class="breadcrumb ">
	<li title="发布时间排序"<#if order == 'newest'> class="active" </#if>>
		<a href="?order=newest">最近</a>
	</li>
	<li title="点赞数排序"<#if order == 'favors'> class="active" </#if>> <a
		href="?order=favors">投票</a>
	</li>
	<li title="评论次数排序"<#if order == 'hottest'> class="active" </#if>>
		<a href="?order=hottest">热门</a>
	</li>
</ol>

<@contents pn=pn order=order>
<div class="row main">
    <div class="col-xs-12 col-md-12 side-left">
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
                            <span>${row.tags} ⋅ </span> <span class="timeago">${timeAgo(row.created)}</span>
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

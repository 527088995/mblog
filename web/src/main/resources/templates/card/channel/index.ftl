<#include "/default/utils/ui.ftl"/>
<@layout channel.name>
    <@contents channelId=channel.id  pn=pn order=order blogClass=blogClass>
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
                                    <a href="${base}/blogClass/${view.key}"><i class="icon icon-layers"></i> ${view.name}
                                    </a>
                                </li>
                            </#list>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class="col-xs-12 col-md-10 side-right">
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
                                <a class="reply_last_time hidden-xs meta"
                                   style="float: left;margin-left: 0px;padding-left: 0px;"
                                   href="${base}/users/${row.authorId}"> <span
                                            style="color: #3d3d3d;">${row.authorName}</span> ⋅
                                    <#list blogClasss as view>
                                        <#if ( row.blogClassKey==view.key)><span>${view.name} ⋅ </span></#if>
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
            <#if results.content?size == 0>
                <div class="col-md-12 col-sm-12">
                    <div class="infos text-center">
                        <div class="media-heading">该目录下还没有内容!</div>
                    </div>
                </div>
            </#if>
        </div>
        <div class="row" style="width:100%; text-align:center;">
            <!-- Pager -->
            <@pager request.requestURI!"", results, 5/>
        </div>

    </@contents>

</@layout>


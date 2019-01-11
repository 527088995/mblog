<#include "/default/utils/ui.ftl"/>
<@layout channel.name>
    <#--<ol class="breadcrumb ">-->
        <#--<li title="发布时间排序" <#if order == 'newest'> class="active" </#if>>-->
            <#--<a href="?order=newest">最近</a>-->
        <#--</li>-->
        <#--<li title="点赞数排序" <#if order == 'favors'> class="active" </#if>>-->
            <#--<a href="?order=favors">投票</a>-->
        <#--</li>-->
        <#--<li title="评论次数排序" <#if order == 'hottest'> class="active" </#if>>-->
            <#--<a href="?order=hottest">热门</a>-->
        <#--</li>-->
    <#--</ol>-->
    <@contents channelId=channel.id pn=pn order=order blogClass=blogClass>
        <div class="row users-show streams">
            <div class="col-xs-12 col-md-2 side-left">
                <nav class="navbar navbar-default shadow-box background-white">
                    <div id="home-navbar" class="collapse navbar-collapse">
                        <ul class="list-group user-nav first">
                            <li class="list-group-item">
                                <a href="?blogClass=ai"><i class="icon icon-layers"></i> 人工智能</a>
                            </li>
                            <li class="list-group-item" >
                                <a href="?blogClass=mobile"><i class="icon icon-list"></i> 移动开发
                                </a>
                            </li>
                            <li class="list-group-item">
                                <a href="?blogClass=iot"><i class="icon icon-speech"></i> 物联网
                                </a>
                            </li>
                        </ul>

                        <ul class="list-group user-nav">
                            <li class="list-group-item">
                                <a href="?blogClass=arch"><i class="icon icon-heart"></i> 架构
                                </a>
                            </li>
                            <li class="list-group-item">
                                <a href="?blogClass=cloud"><i class="icon icon-user-following"></i> 云计算/大数据
                                </a>
                            </li>
                            <li class="list-group-item">
                                <a href="?blogClass=newest"><i class="icon icon-user-follow"></i> 互联网
                                </a>
                            </li>
                            <li class="list-group-item">
                                <a href="?blogClass=game"><i class="icon icon-user-follow"></i> 游戏开发
                                </a>
                            </li>
                            <li class="list-group-item">
                                <a href="?blogClass=ops"><i class="icon icon-user-follow"></i> 运维
                                </a>
                            </li>
                            <li class="list-group-item">
                                <a href="?blogClass=db"><i class="icon icon-user-follow"></i> 数据库
                                </a>
                            </li>
                            <li class="list-group-item">
                                <a href="?blogClass=web"><i class="icon icon-user-follow"></i> 前端
                                </a>
                            </li><li class="list-group-item">
                                <a href="?blogClass=newest"><i class="icon icon-user-follow"></i> 后端
                                </a>
                            </li>
                            <li class="list-group-item">
                                <a href="?blogClass=lang"><i class="icon icon-user-follow"></i> 编程语言
                                </a>
                            </li>
                            <li class="list-group-item">
                                <a href="?blogClass=engineering"><i class="icon icon-user-follow"></i> 研发管理
                                </a>
                            </li>
                            <li class="list-group-item">
                                <a href="?blogClass=sec"><i class="icon icon-user-follow"></i> 安全
                                </a>
                            </li>

                            <li class="list-group-item">
                                <a href="?blogClass=career"><i class="icon icon-user-follow"></i> 程序人生
                                </a>
                            </li>
                            <li class="list-group-item">
                                <a href="?blogClass=blockchain"><i class="icon icon-user-follow"></i> 区块链
                                </a>
                            </li>
                            <li class="list-group-item">
                                <a href="?blogClass=avi"><i class="icon icon-user-follow"></i> 音视频研发
                                </a>
                            </li>
                            <li class="list-group-item">
                                <a href="?blogClass=hottest"><i class="icon icon-user-follow"></i> 咨询
                                </a>
                            </li>
                            <li class="list-group-item">
                                <a href="?blogClass=fund"><i class="icon icon-user-follow"></i> 计算机理论与基础
                                </a>
                            </li>
                        </ul>

                        <ul class="list-group user-nav">
                            <li class="list-group-item">
                                <a href="/user?method=notifies">
                                    <i class="icon icon-envelope"></i> 通知
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class="col-xs-12 col-md-10 side-right">
                <div class="panel-heading">
                    <ul class="list-inline topic-filter">
                        <li data-toggle="tooltip" title="" data-original-title="发布时间排序">
                            <a href="?order=newest" class="active">最近</a>
                        </li>
                        <li data-toggle="tooltip" title="" data-original-title="点赞数排序">
                            <a href="?order=favors">投票</a>
                        </li>
                        <li data-toggle="tooltip" title="" data-original-title="评论次数排序">
                            <a href="?order=comments">热门</a>
                        </li>
                    </ul>
                    <div class="clearfix"></div>
                </div>
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

            <#--<#list results.content as row>-->
                <#--<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">-->
                    <#--<div class="block">-->
                        <#--<a class="block-thumbnail" href="${base}/view/${row.id}">-->
                            <#--<div class="thumbnail-overlay"></div>-->
                            <#--<span class="button-zoom">-->
                                <#--<img src="${base}/dist/images/image-overlay-view-icon.png">-->
                            <#--</span>-->

                            <#--<#if row.thumbnail??>-->
                                <#--<img src="${base + row.thumbnail}">-->
                            <#--<#else>-->
                                <#--<img src="${base}/dist/images/spinner-overlay.png">-->
                            <#--</#if>-->
                        <#--</a>-->

                        <#--<div class="block-contents">-->
                            <#--<p class="tit">${row.title?html}-->
                            <#--</p>-->
                        <#--</div>-->
                    <#--</div>-->
                <#--</div>-->
            <#--</#list>-->

            <#if results.content?size == 0>
                <div class="col-md-12 col-sm-12">
                    <div class="infos text-center">
                        <div class="media-heading">该目录下还没有内容000!</div>
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


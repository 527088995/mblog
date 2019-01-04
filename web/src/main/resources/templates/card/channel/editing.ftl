<#include "/default/utils/ui.ftl"/>
<@layout "编辑文章">

<form class="form" action="${base}/post/submit" method="post" enctype="multipart/form-data">
    <div class="row">
        <div class="col-xs-12 col-md-8">
            <div id="message"></div>
            <#if view??>
                <input type="hidden" name="id" value="${view.id}"/>
                <input type="hidden" name="authorId" value="${view.authorId}"/>
            </#if>
            <input type="hidden" name="thumbnail" value="${view.thumbnail}"/>

            <div class="form-group">
                <input type="text" class="form-control" name="title" maxlength="128" data-required value="${view.title}" placeholder="请输入标题">
            </div>
            <div class="form-group">
                <select class="form-control" name="channelId" data-required>
                    <option value="">请选择栏目</option>
                    <#list channels as row>
                        <option value="${row.id}" <#if (view.channelId == row.id)> selected </#if>>${row.name}</option>
                    </#list>
                </select>
            </div>
            <div class="form-group">
                <#include "/default/channel/editor/ueditor.ftl"/>
            </div>
        </div>
        <div class="col-xs-12 col-md-4 side-right">
		    <div class="panel panel-default corner-radius help-box">
		        <div class="panel-heading text-center">
		            <h3 class="panel-title">构建高品质的社区</h3>
		        </div>
		        <div class="panel-body">
		            <ul class="list">
		                <li>请传播美好的事物，这里拒绝低俗、诋毁、谩骂等相关信息</li>
		                <li>请尽量分享技术相关的话题，谢绝发布社会, 政治等相关新闻</li>
		                <li>这里绝对不讨论任何有关盗版软件、音乐、电影如何获得的问题</li>
		            </ul>
		        </div>
		    </div>
		
		    <div class="panel panel-default corner-radius help-box">
		        <div class="panel-heading text-center">
		            <h3 class="panel-title">在高质量优秀社区的我们</h3>
		        </div>
		        <div class="panel-body">
		            <ul class="list">
		                <li>分享生活见闻, 分享知识</li>
		                <li>接触新技术, 讨论技术解决方案</li>
		                <li>为自己的创业项目找合伙人, 遇见志同道合的人</li>
		                <li>自发线下聚会, 加强社交</li>
		                <li>发现更好工作机会</li>
		                <li>甚至是开始另一个神奇的开源项目</li>
		            </ul>
		        </div>
		    </div>
		</div>
    </div>
    <div class="form-group">
    	<div class="bootstrap-tagsinput"><input type="text" name="tags" id="fieldTags"  data-required value="${view.tags}" placeholder="请输入标签, 多个逗号隔开" size="14" style="width: 14em !important;"></div>
    </div>
    <div class="form-group status-post-submit">
        <button class="btn btn-primary submit-btn" id="topic-submit" type="submit">发 布</button>
    </div>
</form>
<!-- /form-actions -->
<script type="text/javascript">
seajs.use('post', function (post) {
	post.init();
});
</script>
</@layout>
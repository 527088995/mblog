<#include "/default/utils/ui.ftl"/>

<@layout "我的评论">
<div class="row users-show">
    <div class="col-xs-12 col-md-3 side-left">
		<#include "/default/user/left.ftl"/>
    </div>
    <div class="col-xs-12 col-md-9 side-right">
        <div class="panel panel-default">
            <div class="panel-heading">
                我的评论
            </div>

            <div class="panel-body">
                <ul class="list-group">
					<#list page.content as row>
                        <li class="list-group-item" el="loop-${row.id}">
							<#if row.post??>
                                <a href="${base}/view/${row.post.id}" class="remove-padding-left">${row.post.title}</a>
							<#else>
                                <a href="javascript:;" class="remove-padding-left">文章已删除</a>
							</#if>
                            <span class="meta">
								<span class="timeago">${timeAgo(row.created)}</span>
      						</span>

							<div class="pull-right hidden-xs">
								<a class="act" href="javascript:void(0);" data-evt="trash" data-id="${row.id}" data-toggle="tooltip" title="删除评论">
                                    <i class="icon icon-close"></i>
                                </a>
							</div>

                            <div class="reply-body markdown-reply content-body">
                                <p>${row.content}</p>
                            </div>
						</li>
					</#list>

					<#if page.content?size == 0>
                        <li class="list-group-item ">
                            <div class="infos">
                                <div class="media-heading">该目录下还没有内容!</div>
                            </div>
                        </li>
					</#if>
                </ul>
            </div>
            <div class="panel-footer">
				<@pager "user?method=comments", page, 5/>
            </div>
        </div>
    </div>
</div>
<!-- /end -->

<script type="text/javascript">
$(function() {
	$('a[data-evt=trash]').click(function () {
		var id = $(this).attr('data-id');

		layer.confirm('确定删除此项吗?', {
            btn: ['确定','取消'], //按钮
            shade: false //不显示遮罩
        }, function(){
			jQuery.getJSON('${base}/comment/delete', {'id':id }, function (ret) {
				layer.msg(ret.message, {icon: 1});
				if (ret.code >=0) {
					location.reload();
				}
				<!--if (ret.code >=0) {
					var el = $('li[el=loop-' + id + ']');
                    el.next().remove();
                    el.next().remove();
                    el.remove();
				}-->
			});
            
        }, function(){
			
        });
	});
})
</script>
</@layout>
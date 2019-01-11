/*
+--------------------------------------------------------------------------
|   Mblog [#RELEASE_VERSION#]
|   ========================================
|   Copyright (c) 2014, 2015 mtons. All Rights Reserved
|   http://www.mtons.com
|
+---------------------------------------------------------------------------
*/
package mblog.web.controller.site;

import mblog.base.lang.Consts;
import mblog.modules.blog.data.PostVO;
import mblog.modules.blog.entity.Channel;
import mblog.modules.blog.entity.BlogClass;
import mblog.modules.blog.entity.ArticleType;
import mblog.modules.blog.service.ChannelService;
import mblog.modules.blog.service.BlogClassService;
import mblog.modules.blog.service.ArticleTypeService;
import mblog.modules.blog.service.PostService;
import mblog.web.controller.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.Assert;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Channel 主页
 * @author langhsu
 *
 */
@Controller
public class ChannelController extends BaseController {
	@Autowired
	private ChannelService channelService;
	@Autowired
	private BlogClassService blogClassService;
	@Autowired
	private ArticleTypeService articleTypeService;
	@Autowired
	private PostService postService;
	
	@RequestMapping("/channel/{id}")
	public String channel(@PathVariable Integer id, ModelMap model,
			HttpServletRequest request) {
		// init params
		String order = ServletRequestUtils.getStringParameter(request, "order", Consts.order.NEWEST);
		int pn = ServletRequestUtils.getIntParameter(request, "pn", 1);

		Channel channel = channelService.getById(id);
		// callback params
		model.put("channel", channel);
		model.put("order", order);
		model.put("pn", pn);
		model.put("blogClasss", blogClassService.findAll(Consts.STATUS_NORMAL));//博客分类
		model.put("articleTypes", articleTypeService.findAll(Consts.STATUS_NORMAL));
		return view(Views.ROUTE_POST_INDEX);
	}
//	@RequestMapping("/blogClass/{id}")
//	public String blogClass(@PathVariable Integer id, ModelMap model,
//						  HttpServletRequest request) {
//		// init params
//		String order = ServletRequestUtils.getStringParameter(request, "order", Consts.order.NEWEST);
//		int pn = ServletRequestUtils.getIntParameter(request, "pn", 1);
//
//		BlogClass blogClass = blogClassService.getById(id);
//		// callback params
//		model.put("blogClass", blogClass);
//		model.put("order", order);
//		model.put("pn", pn);
//		return view(Views.ROUTE_POST_INDEX);
//	}
//	@RequestMapping("/articleType/{id}")
//	public String articleType(@PathVariable Integer id, ModelMap model,
//						  HttpServletRequest request) {
//		// init params
//		String order = ServletRequestUtils.getStringParameter(request, "order", Consts.order.NEWEST);
//		int pn = ServletRequestUtils.getIntParameter(request, "pn", 1);
//
//		ArticleType articleType = articleTypeService.getById(id);
//		// callback params
//		model.put("articleType", articleType);
//		model.put("order", order);
//		model.put("pn", pn);
//		return view(Views.ROUTE_POST_INDEX);
//	}

	@RequestMapping("/view/{id}")
	public String view(@PathVariable Long id, ModelMap model) {
		PostVO view = postService.get(id);

		Assert.notNull(view, "该文章已被删除");

		postService.identityViews(id);
		model.put("view", view);
		return view(Views.ROUTE_POST_VIEW);
	}
}

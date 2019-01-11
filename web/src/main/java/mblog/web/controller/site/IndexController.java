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

import javax.servlet.http.HttpServletRequest;

import mblog.modules.blog.service.ArticleTypeService;
import mblog.modules.blog.service.BlogClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestBindingException;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import mblog.base.lang.Consts;
import mblog.web.controller.BaseController;

/**
 * @author langhsu
 *
 */
@Controller
public class IndexController extends BaseController{

	@Autowired
	private BlogClassService blogClassService;
	@Autowired
	private ArticleTypeService articleTypeService;
	
	@RequestMapping(value= {"/", "/index"})
	public String root(ModelMap model, HttpServletRequest request) {
		String order = ServletRequestUtils.getStringParameter(request, "order", Consts.order.NEWEST);
		int pn = ServletRequestUtils.getIntParameter(request, "pn", 1);

		model.put("order", order);
		model.put("pn", pn);
		model.put("blogClasss", blogClassService.findAll(Consts.STATUS_NORMAL));//博客分类
		model.put("articleTypes", articleTypeService.findAll(Consts.STATUS_NORMAL));
		return view(Views.INDEX);
	}

}

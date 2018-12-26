/*
+--------------------------------------------------------------------------
|   Mblog [#RELEASE_VERSION#]
|   ========================================
|   Copyright (c) 2014, 2015 mtons. All Rights Reserved
|   http://www.mtons.com
|
+---------------------------------------------------------------------------
*/
package mblog.web.controller.admin;

import mblog.base.data.Data;
import mblog.boot.ContextStartup;
import mblog.modules.blog.entity.Config;
import mblog.modules.blog.service.ConfigService;
import mblog.modules.blog.service.PostService;
import mblog.web.controller.BaseController;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * 系统配置
 *
 * @author langhsu
 *
 */
@Controller
@RequestMapping("/admin/config")
public class ConfigController extends BaseController {
	@Autowired
	private ConfigService configService;
	@Autowired
	private PostService postService;
	@Autowired
	private ContextStartup contextStartup;

	@RequestMapping("/main")
	@RequiresPermissions("config:list")
	public String list(ModelMap model) {
		model.put("configs", configService.findAll2Map());
		return "/admin/config/main";
	}
	
	@RequestMapping("/update")
	@RequiresPermissions("config:update")
	public String update(HttpServletRequest request) {
		Map<String, String[]> params = request.getParameterMap();

		List<Config> configs = new ArrayList<>();

		params.forEach((k, v) -> {
			Config conf = new Config();
			conf.setKey(k);
			conf.setValue(v[0]);

			configs.add(conf);
		});

		configService.update(configs);

		contextStartup.resetSiteConfig(false);

		return "redirect:/admin/config/main";
	}

	/**
	 * 刷新系统变量
	 * @return
	 */
	@RequestMapping("/flush_conf")
	public @ResponseBody Data flushFiledia() {
		contextStartup.resetSiteConfig(false);
		contextStartup.resetChannels();
		return Data.success("操作成功", Data.NOOP);
	}

	@RequestMapping("/flush_indexs")
	public @ResponseBody Data flushIndexs() {
		postService.resetIndexs();
		return Data.success("操作成功", Data.NOOP);
	}
	
}

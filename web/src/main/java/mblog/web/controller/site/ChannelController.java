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

import com.alibaba.fastjson.JSONObject;
import mblog.base.lang.Consts;
import mblog.modules.authc.entity.Monitor;
import mblog.modules.authc.service.MonitorService;
import mblog.modules.blog.data.PostVO;
import mblog.modules.blog.entity.Channel;
import mblog.modules.blog.service.ChannelService;
import mblog.modules.blog.service.BlogClassService;
import mblog.modules.blog.service.ArticleTypeService;
import mblog.modules.blog.service.PostService;
import mblog.modules.user.data.AccountProfile;
import mblog.web.controller.BaseController;
import mblog.web.controller.site.util.AddressUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.Assert;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;

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
	@Autowired
	private MonitorService monitorService;

	
	@RequestMapping("/channel/{id}")
	public String channel(@PathVariable Integer id, ModelMap model,
			HttpServletRequest request) {
		// init params
		String order = ServletRequestUtils.getStringParameter(request, "order", Consts.order.NEWEST);
		int pn = ServletRequestUtils.getIntParameter(request, "pn", 1);
		String blogClass=request.getParameter("blogClass");//匹配博客分类

		Channel channel = channelService.getById(id);
		// callback params
		model.put("channel", channel);
		model.put("order", order);
		model.put("pn", pn);
		model.put("blogClass", blogClass);//匹配博客分类
		model.put("blogClasss", blogClassService.findAll(Consts.STATUS_NORMAL));//博客分类
		model.put("articleTypes", articleTypeService.findAll(Consts.STATUS_NORMAL));
		return view(Views.ROUTE_POST_INDEX);
	}

	@RequestMapping("/view/{id}")
	public String view(@PathVariable Long id, ModelMap model, HttpServletRequest request) {
		PostVO view = postService.get(id);

		Assert.notNull(view, "该文章已被删除");

		postService.identityViews(id);
		monitorReadIp(request,id);
		model.put("view", view);
		return view(Views.ROUTE_POST_VIEW);
	}

	public  void monitorReadIp(HttpServletRequest request,Long id){
		Monitor monitor=new Monitor();
		String ipAddress = request.getRemoteAddr();//记录每篇文章访问的ip
		// json_result用于接收返回的json数据1
		String json_result = null;
		try {
			json_result = AddressUtils.getAddresses("ip=" + ipAddress, "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		JSONObject json = JSONObject.parseObject(json_result).getJSONObject("data");
		System.out.println("json数据： " + json);
		String country = json.get("country").toString();
		String region = json.get("region").toString();
		String city = json.get("city").toString();
		String county = json.get("county").toString();
		String isp = json.get("isp").toString();
		String area = json.get("area").toString();
		System.out.println("国家： " + country);
		System.out.println("地区： " + area);
		System.out.println("省份: " + region);
		System.out.println("城市： " + city);
		System.out.println("区/县： " + county);
		System.out.println("互联网服务提供商： " + isp);

		String address = country + "/";
		address += region + "/";
		address += city + "/";
		//address += county;
		System.out.println(address);


		monitor.setIp(ipAddress);
		monitor.setPostId(id);
		monitor.setAddress(address);
		monitor.setIsp(isp);
		AccountProfile profile = (AccountProfile) session.getAttribute("profile");
		if (profile != null && profile.getBadgesCount() != null) {
			monitor.setUserId(profile.getId());
		}
		monitorService.saveMonitor(monitor);
	}
}

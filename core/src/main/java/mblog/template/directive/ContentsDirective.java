/**
 *
 */
package mblog.template.directive;

import mblog.base.lang.Consts;
import mblog.modules.blog.data.PostVO;
import mblog.modules.blog.entity.Channel;
import mblog.modules.blog.service.ChannelService;
import mblog.modules.blog.service.PostService;
import mblog.template.DirectiveHandler;
import mblog.template.TemplateDirective;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import java.util.*;

/**
 * 文章内容查询
 *
 * 示例：
 * 	请求：http://mtons.com/index?ord=newest&pn=2
 *  使用：@contents group=x pn=pn ord=ord
 *
 * @author langhsu
 *
 */
@Component
public class ContentsDirective extends TemplateDirective {
	@Autowired
    private PostService postService;
    @Autowired
    private ChannelService channelService;

    @Override
    public String getName() {
        return "contents";
    }

    @Override
    public void execute(DirectiveHandler handler) throws Exception {
        Integer pn = handler.getInteger("pn", 1);
        Integer channelId = handler.getInteger("channelId", 0);
        String blogClass=handler.getString("blogClass");//博客分类
        Integer size = handler.getInteger("size", 16);
        String order = Consts.order.HOTTEST;

        Calendar calendar = Calendar.getInstance();
        Date date=new Date();
        calendar.setTime(date);
        int odrType=calendar.get(Calendar.SECOND);
        if(odrType%5==0 ||odrType%5==3){
            order = Consts.order.NEWEST;
        }else if(odrType%5==1){
            order = Consts.order.FAVOR;
        }else if(odrType%5==2){
            order = Consts.order.FEATURED;
        };


        Set<Integer> excludeChannelIds = new HashSet<>();

        if (channelId <= 0) {
            List<Channel> channels = channelService.findAll(Consts.STATUS_CLOSED);
            if (channels != null) {
                channels.forEach((c) -> excludeChannelIds.add(c.getId()));
            }
        }

        Pageable pageable = new PageRequest(pn - 1, size);
        Page<PostVO> result = postService.paging(pageable, channelId, excludeChannelIds, order,blogClass);

        handler.put(RESULTS, result).render();
    }
}

package mblog.ds.mqListener;

import mblog.ds.rabbitConfig.RabbitConfig;
import mblog.modules.blog.data.PostVO;
import mblog.modules.blog.service.PostService;
import mblog.util.JacksonUtil;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class PostInfoListener {
    private static org.apache.log4j.Logger log = org.apache.log4j.Logger.getLogger("PostInfoListener");

    @Autowired
    private PostService postService;

    /**
     * 功能描述 消费正常队列
     *
     * @param s
     * @param message
     * @return void
     * @author wj
     * @date 2019/3/12 15:33
     */
    @RabbitListener(queues = RabbitConfig.QUEUE_B)
    public void receiveMessage(String s, Message message) {
        try {
            log.info(">>>>>>>>>>>>>>消费正常队列收到订单汇总表MQ" + s);
            log.info("============" + new String(message.getBody()) + "==============");

            String str = new String(message.getBody());
            PostVO oo = JacksonUtil.fromJson(s, PostVO.class);
            if (oo == null) {
                log.info(">>>>>>>>>>>>>>正常队列订单汇总MQ消费异常：订单参数异常");
                return;
            }

            Long rb = postService.post(oo);
            if (rb == null) {
                log.info(">>>>>>>>>>>>>>正常队列订单汇总MQ消费异常：订单参数异常");
            }
        } catch (Exception e) {
            log.error("RabbitMQ Error 正常队列订单汇总MQ消费" + e.getMessage(), e);
        }
    }
}

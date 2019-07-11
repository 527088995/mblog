package mblog.ds.mqListener;

import mblog.ds.rabbit.RabbitMQConstants;
import mblog.ds.rabbit.dto.OrderInfoDTO;
import mblog.util.JacksonUtil;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

/**
 * @Auther: xqc
 * @Date: 2019/3/7 09:35
 * @Description: 订单汇总
 */
//@Slf4j
@Component
public class OrderInfoSummaryListener {

    private static org.apache.log4j.Logger log = org.apache.log4j.Logger.getLogger("mblog");

//    @Resource
//    OrderInfoSummaryBusiness orderInfoBusiness;


    /**
     * 功能描述 消费死信队列，同样也是立即消费
     *
     * @param s
     * @param message
     * @return void
     * @author wj
     * @date 2019/3/12 15:32
     */
    @RabbitListener(queues = RabbitMQConstants.ORDER_REDIRECT_QUEUE_NAME)
    public void receiveDeadMessage(String s, Message message) {
        try {
            log.info(">>>>>>>>>>>>>>消费死信队列收到订单汇总表MQ" + s);
            log.info("============" + new String(message.getBody()) + "==============");

            String str = new String(message.getBody());
            OrderInfoDTO oo = JacksonUtil.fromJson(str, OrderInfoDTO.class);
            if (oo == null) {
                log.info(">>>>>>>>>>>>>>死信队列订单汇总MQ消费异常：订单参数异常");
                return;
            }

            //boolean rb = orderInfoBusiness.saveOrderInfoSummaryByOrderId(oo);
            boolean rb = true;
            if (!rb) {
                log.info(">>>>>>>>>>>>>>死信队列订单汇总MQ消费异常：订单参数异常");
            }
        } catch (Exception e) {
            log.error("RabbitMQ Error 死信队列订单汇总MQ消费" + e.getMessage(), e);
        }
    }


}

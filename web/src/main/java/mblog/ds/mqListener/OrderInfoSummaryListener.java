package mblog.ds.mqListener;

import mblog.ds.rabbit.RabbitMQConstants;
import mblog.modules.authc.entity.Monitor;
import mblog.modules.authc.service.MonitorService;
import mblog.util.JacksonUtil;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.annotation.Exchange;
import org.springframework.amqp.rabbit.annotation.Queue;
import org.springframework.amqp.rabbit.annotation.QueueBinding;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.factory.annotation.Autowired;
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

    //@Resource
    //OrderInfoSummaryBusiness orderInfoBusiness;
    @Autowired
    private MonitorService monitorService;
    /**
     *功能描述 消费正常队列(收到订单汇总表MQ)
     *
     * @param s
    	* @param message
     * @return void
     * @author wj
     * @date 2019/3/12 15:33
     */
    @RabbitListener(bindings = @QueueBinding(value = @Queue(value = RabbitMQConstants.ORDER_SUMMARY_ROUTINGKEY, durable = "true"),
            exchange = @Exchange(value = RabbitMQConstants.ORDER_SUMMARY_EXCHANGE),
            key = RabbitMQConstants.ORDER_SUMMARY_ROUTINGKEY))
    public void receiveMessage(String s, Message message) {
        try {
            log.info(">>>>>>>>>>>>>>消费正常队列(收到订单汇总表MQ)监控访问文章mq" + s);
            log.info("============" + new String(message.getBody()) + "==============");

            String str = new String(message.getBody());
            Monitor monitor = JacksonUtil.fromJson(str, Monitor.class);
            if (monitor == null ) {
                log.info(">>>>>>>>>>>>>>正常队列监控(收到订单汇总表MQ)访问文章mq消费异常：订单参数异常");
                return;
            }
            monitorService.saveMonitor(monitor);
           // boolean rb = orderInfoBusiness.saveOrderInfoSummaryByOrderId(oo);
            boolean rb = true;
            if (!rb) {
                log.info(">>>>>>>>>>>>>>正常队列监控(收到订单汇总表MQ)访问文章mq消费异常：订单参数异常");
            }
        } catch (Exception e) {
            log.error("RabbitMQ Error 正常队列监控(收到订单汇总表MQ)访问文章mq消费" + e.getMessage(), e);
        }
    }

    /**
     * 功能描述 消费死信队列，同样也是立即消费
     *
     * @param s
     * @param message
     * @return void
     * @author wj
     * @date 2019/3/12 15:32
     */
//    @RabbitListener(bindings = @QueueBinding(value = @Queue(value = RabbitMQConstants.ORDER_DEAD_ROUTING_KEY, durable = "false"),
//            exchange = @Exchange(value = RabbitMQConstants.ORDER_DEAD_EXCHANGE_NAME),
//            key = RabbitMQConstants.ORDER_DEAD_ROUTING_KEY))
//    public void receiveDeadMessage(String s, Message message) {
//        try {
//            log.info(">>>>>>>>>>>>>>消费死信队列收到订单汇总表MQ" + s);
//            log.info("============" + new String(message.getBody()) + "==============");
//
//            String str = new String(message.getBody());
//            OrderInfoDTO oo = JacksonUtil.fromJson(str, OrderInfoDTO.class);
//            if (oo == null ) {
//                log.info(">>>>>>>>>>>>>>死信队列监控访问文章mq消费异常：订单参数异常");
//                return;
//            }
//
//            //boolean rb = orderInfoBusiness.saveOrderInfoSummaryByOrderId(oo);
//            boolean rb = true;
//            if (!rb) {
//                log.info(">>>>>>>>>>>>>>死信队列监控访问文章mq消费异常：订单参数异常");
//            }
//        } catch (Exception e) {
//            log.error("RabbitMQ Error 死信队列监控访问文章mq消费" + e.getMessage(), e);
//        }
//    }


}

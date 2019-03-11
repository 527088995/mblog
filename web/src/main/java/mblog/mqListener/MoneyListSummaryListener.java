package mblog.mqListener;


import lombok.extern.slf4j.Slf4j;
import mblog.rabbit.RabbitMQConstants;
import mblog.rabbit.dto.MoneyListDto;
import mblog.util.JacksonUtil;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.annotation.Exchange;
import org.springframework.amqp.rabbit.annotation.Queue;
import org.springframework.amqp.rabbit.annotation.QueueBinding;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

/**
 * @Auther: xqc
 * @Date: 2019/3/7 09:35
 * @Description: 用户资金流水
 */
@Slf4j
@Component
public class MoneyListSummaryListener {


//    @RabbitListener(bindings = @QueueBinding(value = @Queue(value = RabbitMQConstants.MONEYLIST_ROUTINGKEY, durable = "true"),
//            exchange = @Exchange(value = RabbitMQConstants.MONEYLIST_EXCHANGE),
//            key = RabbitMQConstants.MONEYLIST_ROUTINGKEY))
//    public void receiveMessage(String s, Message message) {
//        try {
//            log.info(">>>>>>>>>>>>>>收到用户资金流水表MQ" + s);
//            log.info("============" + new String(message.getBody()) + "==============");
//
//            String str = new String(message.getBody());
//            MoneyListDto moneyListDto = JacksonUtil.fromJson(str, MoneyListDto.class);
//            if (moneyListDto == null) {
//                log.info(">>>>>>>>>>>>>>用户资金流水MQ消费异常：订单参数异常");
//                return;
//            }
//            // boolean rb = userMoneyDetailBusiness.SaveMoneyListDetailByUser(moneyListDto);
//            boolean rb = true;
//            if (!rb) {
//                log.info(">>>>>>>>>>>>>>用户资金流水MQ消费异常：执行结果");
//            }
//        } catch (Exception e) {
//            log.error("RabbitMQ Error 用户资金流水MQ" + e.getMessage(), e);
//        }
//    }

}

package mblog.rabbitConfig;


import mblog.rabbit.RabbitMQConstants;
import mblog.rabbit.dto.MqOrderDTO;
import mblog.util.JacksonUtil;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ImmediateSender {

    @Autowired
    private RabbitTemplate rabbitTemplate;

    public void sendMessage(MqOrderDTO mqOrderDTO, int delayTime) {
        this.rabbitTemplate.convertAndSend(RabbitMQConstants.ORDER_DEAD_EXCHANGE_NAME, RabbitMQConstants.ORDER_DEAD_ROUTING_KEY,
                JacksonUtil.toJson(mqOrderDTO),
                message -> {
                    message.getMessageProperties().setExpiration(delayTime + "");
                    return message;
                });
    }
}

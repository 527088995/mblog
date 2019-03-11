package mblog.rabbit.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;

/**
 * 功能描述: mq推送下单实体类
 *
 * @author suntf
 * @date 2019/3/4 10:47
 */
@Getter
@Setter
@ToString
public class MqOrderDTO implements Serializable {

    /**
     * 订单ID
     */
    private Long orderId;
    /**
     * 用户ID
     */
    private Long memberId;
}

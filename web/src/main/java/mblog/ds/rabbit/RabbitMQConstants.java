package mblog.ds.rabbit;

/**
 * @author ds
 */
public class RabbitMQConstants {
    /**
     * 用户资金流水
     */
    public static final String MONEYLIST_EXCHANGE = "dsmall.currency.moneyList.exchangetest";
    public static final String MONEYLIST_ROUTINGKEY = "dsmall.currency.moneyList.routingKeytest";
    /**
     * 用户奖励流水
     */
    public static final String PRIZELIST_EXCHANGE = "dsmall.currency.prizeList.exchange";
    public static final String PRIZELIST_ROUTINGKEY = "dsmall.currency.prizeList.routingKey";
    /**
     * 定义死信队列转发队列
     */
    public static final String ORDER_REDIRECT_QUEUE_NAME = "order.redirect.queue";

    /**
     * 功能描述: 死信队列
     */
    public static final String ORDER_DEAD_KEY = "dead.key";
    public static final String ORDER_DEAD_QUEUE_NAME = "order.dead.queue";
    public static final String ORDER_DEAD_EXCHANGE_NAME = "order.dead.exchange";
    public static final String ORDER_DEAD_ROUTING_KEY = "order.dead";

    /**
     * 订单结算MQ队列
     */
    public static final String ORDER_SETTLEMENT_QUEUE = "order.settlement.queue";
    /**
     * 订单结算MQ通道
     */
    public static final String ORDER_SETTLEMENT_EXCHANGE = "order.settlement.exchange";
    /**
     * 订单结算MQ KEY
     */
    public static final String ORDER_SETTLEMENT_KEY = "order.settlement.key";

    /**
     * 用户订单总表-订单创建消息
     */
    public static final String ORDER_SUMMARY_QUEUE = "dsmall.order.summary.queue";
    public static final String ORDER_SUMMARY_EXCHANGE = "dsmall.order.summary.exchange";
    public static final String ORDER_SUMMARY_ROUTINGKEY = "dsmall.order.summary.routingKey";

    /**
     * 用户相关升级
     */
    public static final String USER_UP_QUEUE = "dsmall.user.up.queue";
    public static final String USER_UP_EXCHANGE = "dsmall.user.up.exchange";
    public static final String USER_UP_ROUTINGKEY = "dsmall.user.up.key";

    /**
     * 用户订单总表（结算时发送mq）
     */
    public static final String ORDER_SUMMARY_SETTLEMENT_QUEUE = "dsmall.order.summary.settlement.queue";
    public static final String ORDER_SUMMARY_SETTLEMENT_EXCHANGE = "dsmall.order.summary.settlement.exchange";
    public static final String ORDER_SUMMARY_SETTLEMENT_ROUTINGKEY = "dsmall.order.summary.settlement.routingKey";
}

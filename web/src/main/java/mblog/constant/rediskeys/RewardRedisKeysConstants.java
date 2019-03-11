package mblog.constant.rediskeys;

/**
 * 功能描述:结算缓存相关缓存key
 *
 * @author suntf
 * @date 2019/3/5 14:15
 */
public class RewardRedisKeysConstants implements RedisKeys {

    /**
     * 返利相关缓存key
     */
    public static final String REWARD_KEY = "reward:";
    /**
     * 店铺返利相关
     */
    public static final String STOREREWARD = FIRST_KEY + REWARD_KEY + "storeReward:";
    /**
     * 分享相关
     */
    public static final String SHARE = FIRST_KEY + REWARD_KEY + "share:";
    /**
     * 分销
     */
    public static final String REWARD = FIRST_KEY + REWARD_KEY + "reward:";
    /**
     * 产品
     */
    public static final String PRODUCT = FIRST_KEY + REWARD_KEY + "product:";
    /**
     * 支付方式
     */
    public static final String PAYMENT = FIRST_KEY + REWARD_KEY + "payment:";
    /**
     * 订单
     */
    public static final String ORDER = FIRST_KEY + REWARD_KEY + "order:";
    /**
     * 商城相关
     */
    public static final String MALL = FIRST_KEY + REWARD_KEY + "mall:";
    /**
     * 配送
     */
    public static final String DELIVERY = FIRST_KEY + REWARD_KEY + "delivery:";
    /**
     * 消费奖励相关
     */
    public static final String CONSUME_REWARD = FIRST_KEY + REWARD_KEY + "consumeReward:";
    /**
     * 后台设置:推广奖励深度设置
     */
    public static final String PROMOTIONDEEPSETTING = FIRST_KEY + REWARD_KEY + "promotion:deepSetting";
}

package mblog.constant.rediskeys;

/**
 * 功能描述 订单相关的redis-key
 *
 * @author sevenSeconds
 * @date 2019/2/28 17:21
 */

public class OrderRedisKeysConstants implements RedisKeys {
    /**
     * 购物车相关缓存key
     */
    public static final String SECOND_KEY = "cart:";
    /**
     * 会员购物车商品存储
     */
    public static final String MEMBER_SHOPING_CART = FIRST_KEY + SECOND_KEY + "member_shoping_cart :";
    /**
     * 购物车操作防止连续快速操作KEY
     */
    public static final String CART_MEMBER_REDIS_KEY = FIRST_KEY + SECOND_KEY + "cart_member_redis_key:";
    /**
     * 确认收货防止连续快速点击操作KEY
     */
    public static final String ORDER_DOUBLE_REDIS_KEY = FIRST_KEY + SECOND_KEY + "order_double_redis_key:";
}

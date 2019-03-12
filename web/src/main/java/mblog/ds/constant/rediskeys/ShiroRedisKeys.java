package mblog.ds.constant.rediskeys;

/**
 * 功能描述: shiro相关redis key
 *
 * @author suntf
 * @date 2019/3/2 14:17
 */
public class ShiroRedisKeys implements RedisKeys {

    /**
     * redis-key-前缀-shiro:cache:
     */
    public final static String PREFIX_SHIRO_CACHE = FIRST_KEY + "shiro:cache:";

    /**
     * redis-key-前缀-shiro:access_token:
     */
    public final static String PREFIX_SHIRO_ACCESS_TOKEN = FIRST_KEY + "shiro:access_token:";

    /**
     * redis-key-前缀-shiro:refresh_token:
     */
    public final static String PREFIX_SHIRO_REFRESH_TOKEN = FIRST_KEY + "shiro:refresh_token:";

}

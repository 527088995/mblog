package mblog.ds.constant.rediskeys;

/**
 * 功能描述:结算缓存相关缓存key
 *
 * @author wj
 * @date 2019/3/5 14:15
 */
public class CurrencyRedisKeysConstants implements RedisKeys {

    /**
     * 返利相关缓存key
     */
    public static final String CURRENCY_KEY = "currency:";
    /**
     * 数据字典
     */
    public static final String DICT_DATA = FIRST_KEY + CURRENCY_KEY + "sysDict:";
    /**
     * 运费规则前缀
     */
    public static final String FREID_RULE = FIRST_KEY + CURRENCY_KEY + "FreigRule:";
    /**
     * 首页轮播图
     */
    public static final String HOME_IMG_CONFIG = FIRST_KEY + CURRENCY_KEY + "homeImgConfig:";
    /**
     * 产品标签
     */
    public static final String PRODUCT_TAGS = "product_tags";
}

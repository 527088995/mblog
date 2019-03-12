package mblog.ds.constant.rediskeys;

/**
 * 功能描述:产品相关的redis-key
 *
 * @author : GoodMan
 * @date : 2019-02-27
 */
public class ProductRedisKeysConstants implements RedisKeys {

    /**
     * 产品统一key
     */
    public static final String PRODUCT_KEY = "product:";

    /**
     * 产品统一key
     */
    public static final String CATEGORY_KEY = "category:list:listInfo";

    /**
     * SKU详情
     */
    public static final String SKU_DETAIL_KEY = PRODUCT_KEY + "skuDetail:";

    /**
     * SKU详情hash，详情key
     */
    public static final String SKU_DETAIL_INFO = PRODUCT_KEY + "skuDetailVoInfo";

    /**
     * SKU详情hash，销量
     */
    public static final String SKU_DETAIL_SALECOUNT = PRODUCT_KEY + "skuDetailVoSaleCount";

    /**
     * SKU详情hash，库存
     */
    public static final String SKU_DETAIL_STOCKCOUNT = PRODUCT_KEY + "skuDetailVoStockCount";


    /**
     * 首页第一页产品缓存
     */
    public static final String PRODUCT_INDEX_DATA = PRODUCT_KEY + "index:data";

}

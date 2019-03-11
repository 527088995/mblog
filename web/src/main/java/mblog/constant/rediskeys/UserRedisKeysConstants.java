package mblog.constant.rediskeys;

/**
 * 功能描述:用户相关缓存key
 *
 * @author : suntf
 * @date : 2019/2/22
 */
public class UserRedisKeysConstants implements RedisKeys {

    /**
     * 用户相关缓存key
     */
    public static final String USER_KEY = "user:";
    /**
     * 用户信息缓存key
     */
    public static final String USER_INFO_KEY = USER_KEY + "user_info:";
    /**
     * 用户memberid和phone关联关系缓存key
     */
    public static final String USER_PHONE_UNION_MEMBERID = USER_KEY + "phone_union_memberid:memberid:";
    /**
     * 用户推荐码和phone关联关系缓存key
     */
    public static final String USER_PHONE_UNION_INVITECODE = USER_KEY + "phone_union_invitecode:invitecode:";
    /**
     * 用户手机验证码缓存key-注册
     */
    public static final String REDIS_PHONE_CODE_REG = USER_KEY + "redis_phone_code_reg:";
    /**
     * 用户手机验证码缓存key-登陆
     */
    public static final String REDIS_PHONE_CODE_LOGIN = USER_KEY + "redis_phone_code_login:";
    /**
     * 用户手机验证码缓存key-找回密码
     */
    public static final String REDIS_PHONE_CODE_PASSWORD = USER_KEY + "redis_phone_code_password:";
    /**
     * 用户手机验证码缓存key-修改用户信息
     */
    public static final String REDIS_UPDATE_USER_INFO = USER_KEY + "redis_update_user_info:";
    /**
     * 手机号短信发送次数
     */
    public static final String REDIS_MSG_COUNT_PHONE = USER_KEY + "send_msg_count:";

    /**
     * 用户可以升级到的店铺等级_GoodMan
     */
    public static final String NEXT_STORE_LEVEL = USER_KEY + "next_store_level:";

}

package mblog.constant.rediskeys;

/**
 * 功能描述:功能设置相关
 *
 * @author wj
 * @date 2019/3/5 14:15
 */
public class RewardDetailRedisKeysConstants implements RedisKeys {

    /**
     * 返利相关缓存key
     */
    public static final String REWARD_KEY = "reward:";
    /**
     * 店铺奖励等级
     */
    public static final String REWARDLEVEL = FIRST_KEY + REWARD_KEY + "storeReward:rewardLevel";

    /**
     * 店铺返利相关
     */
    public static final String OPENREWARD = "openReward";    //开启店铺奖励
    public static final String MYTEACHER = "myTeacher";    //开启我的导师
    public static final String STORERULE = "storeRule";    //店铺规则
    public static final String STORERATIO = "storeRatio";    //店铺奖励比例
    public static final String PROMOTIONRATIO = "promotionRatio";    //推广奖励比例
    public static final String OPENRULE = "openRule";    //开启店铺规则
    /**
     * 分享相关
     */
    public static final String SHAREPOINT = "sharePoint";    //分享奖励积分
    public static final String SHAREURL = "shareUrl";    //分享链接
    public static final String MEMBERINVITE = "memberInvite";    //会员锁定邀请人模式
    /**
     * 分销
     */
    public static final String ISDISTRIBUTION = "isDistribution";    //分销开关
    public static final String DISTRIBUTIONRATIO = "distributionRatio";    //分销比例
    public static final String RAKEBACKMODEL = "rakeBackModel";    //返佣方式
    public static final String BECOMEPROMOTERMODEL = "becomePromoterModel";    //如何成为推广员
    /**
     * 产品
     */
    public static final String LOWSTOCKPULLOFF = "lowStockPullOff";    //库存不足下架
    public static final String DISPLAYORIGINALPRICE = "displayOriginalPrice";    //显示原价
    public static final String SALESMOBILES = "salesMobiles";    //手机端产品销量
    public static final String COMMISSIONCALCULATOR = "commissionCalculator";    //佣金计算器
    public static final String COPYCOMMISSION = "copyCommission";    //佣金计算器文案
    public static final String STOCKREMINDER = "stockReminder";    //库存提醒
    public static final String COMMODITYDETAILS = "commodityDetails";    //商品详情
    public static final String SHOPJUMP = "shopJump";    //店铺跳转
    public static final String PRODUCTDETAILS = "productDetails";    //产品详情
    /**
     * 支付方式
     */
    public static final String ALIPAYPAY = "alipayPay";    //支付宝支付
    public static final String WECHATPAY = "weChatPay";    //微信支付
    public static final String SMALLCHANGE = "smallChange";    //零钱支付
    /**
     * 登录
     */
    public static final String LOGINPASS = "loginPass";    //默认登录密码
    public static final String PAYPASS = "payPass";    //默认支付密码
    /**
     * 订单
     */
    public static final String RECEIVINGTIME = "receivingTime";    //默认收货时间(天)
    public static final String RECEIVINGSETTLEMENT = "receivingSettlement";    //收货结算开关
    public static final String CANCELORDERTIME = "cancelOrderTime";    //下单未支付自动取消订单时间(分钟)
    /**
     * 商城相关
     */
    public static final String MINMALLNAME = "minMallName";    //商城名称
    public static final String MALLINTRODUCE = "mallIntroduce";    //商城简介
    public static final String URLQRCODE = "urlQRCode";    //商城二维码链接
    public static final String LOGOURL = "logoUrl";    //商城LOGO地址
    /**
     * 配送
     */
    public static final String SELFMENTION = "selfMention";    //自提
    public static final String PARTNERSDELIVERY = "partnersDelivery";    //合作商虚拟发货
    public static final String EXPRESS = "express";    //快递
    public static final String AGENTDELIVERY = "agentDelivery";    //平台代理商虚拟发货
    /**
     * 消费奖励相关
     */
    public static final String OPENCONSUME = "openConsume";    //开启消费奖励
    public static final String REWARDMODEL = "rewardModel";    //奖励金模式 1：固定金额 2：产品销售价格比例
    public static final String REWARDFIXEDMONEY = "rewardFixedMoney";    //每件产品固定奖励金额(分)
    public static final String REWARDRATIOMONEY = "rewardRatioMoney";    //每件产品奖励金额比例
    public static final String TOTALCONSUME = "totalConsume";    //个人累计消费(分)
    public static final String TAKEMODEL = "takeModel";    //奖励领取方式
    public static final String LIMITTAKEMODEL = "limitTakeModel";    //每天限领金额模式 1：固定金额 2：总奖励金比例
    public static final String LIMITTAKEFIXEDMONEY = "limitTakeFixedMoney";    //每天限领固定金额
    public static final String LIMITTAKERATIOMONEY = "limitTakeRatioMoney";    //每天限领比例金额


}

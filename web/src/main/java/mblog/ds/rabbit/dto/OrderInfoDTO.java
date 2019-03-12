package mblog.ds.rabbit.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;

/**
 * 功能描述 订单信息DTO
 *
 * @author sevenSeconds
 * @date 2019/2/25 14:42
 */

@Getter
@Setter
@ToString
public class OrderInfoDTO implements Serializable {
    private static final long serialVersionUID = -4460193212983830780L;

    /**
     * 主键
     */
    private Long id;
    /**
     * 订单ID
     */
    private Long orderId;
    /**
     * 用户ID
     */
    private Long memberId;
    /**
     * 订单号
     */
    private String orderCode;
    /**
     * 是否拆单
     */
    private Integer isSplit;
    /**
     * 父级订单ID
     */
    private String orderPid;
    /**
     * 是否主单
     */
    private Integer isMain;
    /**
     * 订单状态（字典order_status）
     */
    private Integer orderStatus;
    /**
     * 联系人
     */
    private String contact;
    /**
     * 联系方式
     */
    private String phone;
    /**
     * 省
     */
    private String province;
    /**
     * 市
     */
    private String city;
    /**
     * 区
     */
    private String district;
    /**
     * 详细地址
     */
    private String detail;
    /**
     * 订单总金额包含运费
     */
    private Long totalMoney;
    /**
     * 订单零售金额
     */
    private Long retailMoney;
    /**
     * 商品总价
     */
    private Long totalProductMoney;
    /**
     * 运费
     */
    private Long totalWeight;
    /**
     * 重量
     */
    private Integer freight;
    /**
     * 支付状态
     */
    private Integer payStatus;
    /**
     * 支付方式（字典pay_type）
     */
    private Integer payType;
    /**
     * 支付金额
     */
    private Long payMoney;
    /**
     * 支付时间
     */
    private Date payDate;
    /**
     * 支付备注
     */
    private String payRemark;
    /**
     * 礼包类型 对应ProductTypeEnums
     */
    private Integer packetsType;
    /**
     * 是否虚拟发货 0 =否 1=是
     */
    private Integer isVirtual;
    /**
     * 收货状态
     */
    private Integer receivedStatus;
    /**
     * 收货时间
     */
    private Date receivedDate;
    /**
     * 订单来源（字典order_from）
     */
    private Integer orderFrom;
    /**
     * 买家备注
     */
    private String buyerRemark;
    /**
     * 买家备注
     */
    private String sellerRemark;
    /**
     * 物流公司ID
     */
    private Long expressId;
    /**
     * 物流方式（字典express_type）区分是快递还是礼包
     */
    private Integer expressType;
    /**
     * 快递流转状态，0、未知，1、接单，2、打印，3、捡货，4、复核，5、打包，6、称重，7，已发货，8、发货异常，9、关闭，10、关闭
     */
    private Integer expressStatus;
    /**
     * 包裹重量
     */
    private Integer expressWeight;
    /**
     * 物流名称
     */
    private String expressName;
    /**
     * 物流单号
     */
    private String expressCode;
    /**
     * 是否计算返佣
     */
    private Integer isProfit;
    /**
     * 发货状态
     */
    private Integer shipStatus;
    /**
     * 发货时间
     */
    private Date shipDate;
    /**
     * 支付流水号shipStatus
     */
    private Long paymentNumber;
    /**
     * 0:无退货退款;1申请退货;2申请退款
     * 0:无退货退款;1申请退货;2申请退款
     * 0:无退货退款;1申请退货;2申请退款
     */
    private Integer refundType;
    /**
     * 评论状态0：未评论；1：已评论；默认0
     */
    private Integer commentStatus;
    /**
     * 备注信息
     */
    private String remarks;
    /**
     * 创建人
     */
    private Long createBy;
    /**
     * 创建时间
     */
    private Date createDate;
    /**
     * 修改人
     */
    private Long updateBy;
    /**
     * 修改时间
     */
    private Date updateDate;
    /**
     * 删除标识0：正常；1：删除。默认为0。
     */
    private Integer status;


    /**
     * 当前页
     */
    private Integer page;
    /**
     * 条数
     */
    private Integer limit;
    /**
     * 版本号
     */
    private String version;
    /**
     * 结算时间
     */
    private Date settlementDate;
    /**
     * 推广奖励应反金额
     */
    private Long extendShouldMoney;
    /**
     * 推广奖励实反金额
     */
    private Long extendActualMoney;
    /**
     * 店铺奖励应反金额
     */
    private Long storeShouldMoney;
    /**
     * 店铺奖励实反金额
     */
    private Long storeActualMoney;
    /**
     * 消费奖励应反金额
     */
    private Long consumeShouldMoney;
    /**
     * 消费奖励实反金额
     */
    private Long consumeActualMoney;


}

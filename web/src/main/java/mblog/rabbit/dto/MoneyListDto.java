package mblog.rabbit.dto;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * <p>
 * 用户资金流水
 * </p>
 *
 * @author suntf
 * @since 2019-02-22
 */
@Data
public class MoneyListDto implements Serializable {

    private static final long serialVersionUID = 1645519247175436560L;
    /**
     * 主键
     */
    private Long id;
    /**
     * 用户id
     */
    private Long memberId;
    /**
     * 流水类型：1-进账 2-出账
     */
    private Integer type;
    /**
     * 是否是第三方流水   1:是   0:否    默认0
     */
    private Integer thirdParty;
    /**
     * 账户余额
     */
    private Long balance;
    /**
     * 流水金额
     */
    private Long money;
    /**
     * 资金流水类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-消费  5-退款  6-提现  7-充值
     */
    private Integer moneyType;
    /**
     * 产生流水记录的关联订单号
     */
    private Long orderId;
    /**
     * 备注
     */
    private String remarks;
    /**
     * 有效状态 0：无效；1：有效；默认为1。
     */
    private Integer validStatus;
    /**
     * 删除标志 0：正常；1：删除。默认为0。
     */
    private Integer delStatus;
    /**
     * 创建人
     */
    private Long createdBy;
    /**
     * 创建时间
     */
    private Date createDate;
    /**
     * 最后修改人
     */
    private Long updatedBy;
    /**
     * 更新时间
     */
    private Date updateDate;
    /**
     * 删除标志 0：正常；1：删除。默认为0。
     */
    private Integer status;
    /**
     * 会员昵称
     */
    private String nickName;
    /**
     * 订单编号
     */
    private String orderCode;
    /**
     * 手机号
     */
    private String phone;
}

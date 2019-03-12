package mblog.ds.configuration.shareSql;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * <p>
 * 会员信息表
 * </p>
 *
 * @author suntf
 * @since 2019-03-01
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class Member implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    private Long id;
    /**
     * 当前用户数据所在数据库编号
     */
    private Integer dataBase;
    /**
     * 当前用户数据所在表编号
     */
    private Integer dataTable;
    /**
     * 用户名
     */
    private String userName;
    /**
     * 密码   （登录密码至少8位字母+数字）
     */
    private String password;
    /**
     * 密码盐  UUID
     */
    private String salt;
    /**
     * 手机号
     */
    private String phone;
    /**
     * 邀请码  10位随机数
     */
    private Long inviteCode;
    /**
     * 用户等级  0：粉丝 0以上推广员
     */
    private Integer levelId;
    /**
     * 冻结状态  1-未冻结 2-冻结
     */
    private Integer freezeStatus;
    /**
     * 实名状态  1-未实名 2-已实名
     */
    private Integer authStatus;
    /**
     * 身份证号
     */
    private String identityCard;
    /**
     * 邀请人
     */
    private Long refMemberId;
    /**
     * 备注信息
     */
    private String remarks;
    /**
     * 创建人
     */
    private String createBy;
    /**
     * 创建时间
     */
    private Date createDate;
    /**
     * 修改人
     */
    private String updateBy;
    /**
     * 修改时间
     */
    private Date updateDate;
    /**
     * 删除标识0：正常；1：删除。默认为0。
     */
    private Integer status;
    /**
     * 省编号
     */
    private String provinceCode;
    /**
     * 市编号
     */
    private String cityCode;
    /**
     * 会员来源 0：主动关注 1：二维码
     */
    private Integer memberSource;
    /**
     * 省名称
     */
    private String provinceName;
    /**
     * 市名称
     */
    private String cityName;
    /**
     * 姓名
     */
    private String realName;
    /**
     * 用户昵称
     */
    private String nickName;
    /**
     * 支付密码 （6位纯数字）
     */
    private String payPassword;
    /**
     * 性别 1:男 2:女
     */
    private Integer sex;
    /**
     * QQ号码
     */
    private String qq;
    /**
     * 生日
     */
    private String birthday;
    /**
     * 职业
     */
    private String profession;
    /**
     * 推广员代数
     */
    private Integer generation;
    /**
     * 店铺奖励等级ID
     */
    private Long storeRewardLevelId;
    /**
     * 成为推广员时间
     */
    private Date toPromoterDate;
    /**
     * 用户编号   暂时同memberId
     */
    private String memberCode;
    /**
     * 头像
     */
    private String headImage;
    /**
     * 微信号
     */
    private String wechatNumber;
    /**
     * 微信二维码
     */
    private String wechatCodeImage;
    /**
     * 是否显示手机号  1-显示   0-不显示   默认不显示
     */
    private Integer phoneView;
    /**
     * 是否显示微信号  1-显示   0-不显示   默认不显示
     */
    private Integer wechatView;
}

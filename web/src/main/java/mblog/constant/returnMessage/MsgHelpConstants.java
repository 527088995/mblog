package mblog.constant.returnMessage;

/**
 * 功能描述: 返回提示语帮助类
 *
 * @author suntf
 * @date 2019/2/23 13:09
 */
public class MsgHelpConstants {

    public final static String NOT_LOGIN = "请登录";
    public static final String MSG_LOGIN = "恭喜您，登陆成功！";
    public static final String MSG_ALREADY_LOGIN = "您已经登录!";
    public static final String MSG_LOGOUT = "退出登录成功！";

    public final static String SUCCESS_OPERATION = "操作成功";
    public final static String FAIL_OPERATION = "操作失败";
    public final static String NOT_FLUND_MEMBER = "不存在该用户";
    public final static String NOT_PHONE = "手机号码不存在";
    public final static String NOT_NULL_PHONE = "手机号码不能为空";
    public final static String ERROR_FORMAT_PHONE = "手机号码格式不正确";
    public final static String PHONE_CODE_ERROR = "手机/验证码错误";

    public final static String NOT_INVITE_CODE = "邀请码不存在";
    public final static String INVITE_CODE_INVALID = "邀请码无效";
    public final static String ERROR_MSG = "数据不合法";
    public final static String TOKRN_ERROR = "token错误";
    public final static String PHONE_IS_USER = "此号已经被注册";
    public final static String PASSWORD_NOT_NULL = "密码不能为空";
    public final static String PASSWORD_ERROR = "账号或密码不正确";
    public final static String USER_FREEZE = "账号已被冻结,请联系管理员";

    public final static String OLD_PASSWORD_ERROR = "旧密码不正确";
    public final static String PASSWORD_CHANGE_SUCCESS = "密码修改成功";
    public final static String PASSWORD_LENGTH_MIM = "密码长度至少8位";
    public final static String PASSWORD_LENGTH_MAX = "密码长度过长";

    public final static String CHECK_NUM_SEND_SUCCESS = "验证码发送成功，请耐心等待";
    public final static String CHECK_NUM_SEND_FAIL = "验证码发送失败";
    public final static String CHECK_NUM_ERROR = "验证码不正确";
    public final static String CHECK_NUM_NOT_NULL = "验证码不能为空";
    public final static String CHECK_NUM_TIME_OUT = "验证码已经超时";
    public final static String CHECK_NUM_OVER_10 = "当日验证码获取次数已用完";
    public final static String SMS_WATING = "验证码发送频繁，请稍后再试";
    public final static String SMS_HOUR_CHECK = "一小时内，您只能获得5条短信验证码，请稍后再试";

}

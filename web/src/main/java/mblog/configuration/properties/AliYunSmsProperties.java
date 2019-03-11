package mblog.configuration.properties;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Getter
@Setter
@Component
@ConfigurationProperties(prefix = "common.aliyun.sms")
public class AliYunSmsProperties {
    /**
     * 你的accessKeyId
     */
    private String accessKeyId;
    /**
     * 你的accessKeySecret
     */
    private String accessKeySecret;
    /**
     * 短信签名
     */
    private String signName;

    /**
     * 短信发送开关
     */
    private Boolean sendSmsFlag;
    /**
     * 设置固定短信验证码
     */
    private String sendPhoneCodeSms;

    /**
     * 注册短信模板
     */
    private String registerSmsTemplateCode;

    /**
     * 登陆短信验证码模板
     */
    public String loginSmsTemplateCode;
    /**
     * 密码找回短信验证码模板
     */
    public String passwordSmsTemplateCode;
}

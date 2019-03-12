package mblog.ds.configuration.properties;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Getter
@Setter
@Component
@ConfigurationProperties(prefix = "common.aliyun.oss")
public class AliYunOssProperties {

    /**
     * 限制上传文件大小--单位: B
     */
    private Integer ossImageSize;

    private String bucketName;
    private String httpUrl;
    private String endpoint;
    private String accessKeyId;
    private String accessKeySecret;
}

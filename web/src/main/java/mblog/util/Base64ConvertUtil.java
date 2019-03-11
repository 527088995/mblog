package mblog.util;

import java.io.UnsupportedEncodingException;
import java.util.Base64;

/**
 * @ClassName Base64ConvertUtil
 * @Description TODO
 * @Author suntf
 * @Date 2019/2/27 21:07
 * @Version 1.0
 **/
public class Base64ConvertUtil {
    /**
     * 加密JDK1.8
     *
     * @param str
     * @return java.lang.String
     * @author suntf
     * @date 2018/8/21 15:28
     */
    public static String encode(String str) throws UnsupportedEncodingException {
        byte[] encodeBytes = Base64.getEncoder().encode(str.getBytes("utf-8"));
        return new String(encodeBytes);
    }

    /**
     * 解密JDK1.8
     *
     * @param str
     * @return java.lang.String
     * @author suntf
     * @date 2018/8/21 15:28
     */
    public static String decode(String str) throws UnsupportedEncodingException {
        byte[] decodeBytes = Base64.getDecoder().decode(str.getBytes("utf-8"));
        return new String(decodeBytes);
    }
}

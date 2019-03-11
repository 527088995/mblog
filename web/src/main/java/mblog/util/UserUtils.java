package mblog.util;

import org.apache.commons.codec.digest.DigestUtils;

/**
 * 用户工具类
 *
 * @ds
 * @since 2019/02/20 20:51
 */
public final class UserUtils {
    /**
     * 用户密码加盐
     *
     * @param password  密码
     * @param saltValue 盐值
     * @return 加盐后的密码
     */
    public static String passwordAddSalt(String password, String saltValue) {
        return password + saltValue;
    }

    /**
     * 对给定的字符串进行MD5加密
     *
     * @param content 要加密的字符串
     * @return 加密后的内容
     */
    public static String md5EncodePassword(String content) {
        return DigestUtils.md5Hex(content);
    }

    /**
     * 判断加密后的密码是否和指定的MD5值一样
     *
     * @param md5Value        MD5值
     * @param passwordAndSalt 加盐后的密码
     * @return 加密后的密码是否和指定的MD5值一样
     */
    public static boolean authenticatePassword(String md5Value, String passwordAndSalt) {
        return md5EncodePassword(passwordAndSalt).equals(md5Value);
    }
}

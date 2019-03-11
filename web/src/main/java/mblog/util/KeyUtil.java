package mblog.util;

import com.google.common.base.Preconditions;
import io.shardingsphere.core.keygen.TimeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.net.InetAddress;
import java.net.NetworkInterface;
import java.text.SimpleDateFormat;
import java.util.*;

public class KeyUtil {

    private static final Logger log = LoggerFactory.getLogger(KeyUtil.class);
    public static final long EPOCH;
    private static final long SEQUENCE_BITS = 12L;
    private static final long WORKER_ID_BITS = 10L;
    private static final long SEQUENCE_MASK = 4095L;
    private static final long WORKER_ID_LEFT_SHIFT_BITS = 12L;
    private static final long TIMESTAMP_LEFT_SHIFT_BITS = 22L;
    private static final long WORKER_ID_MAX_VALUE = 1024L;
    private static TimeService timeService = new TimeService();
    private static long workerId;
    private long sequence;
    private long lastTime;
    private static Map<Integer, KeyUtil> map = new HashMap<>();

    public enum KeyTypeEnum {
        PRODUCT_COMMENT(1, "用户资金流水"),
        MEMBER(2, "会员"),
        MEMBER_ADDRESS(3, "会员地址"),
        MEMBER_AUTH(4, "会员实名认证登记表"),
        MEMBER_COLLECTION(5, "会员收藏表"),
        MEMBER_EXT(6, "会员扩展信息"),
        MONEY_LIST(7, "用户资金流水"),
        ORDER_INFO(8, "订单表"),
        ORDER_PRODUCT(9, "订单产品"),
        PRODUCT(10, "产品表"),
        PRODUCT_CATEGORY(11, "产品分类"),
        PRODUCT_TAGS(12, "产品标签"),
        SKU(13, "产品SKU"),
        SKU_PROPERTY(14, "属性名"),
        SKU_PROPERTY_VALUE(15, "属性值"),
        DIBS_PAY_NUMBER(16, "零钱支付流水号"),
        SUMMARY_VALUE(17, "总表");
        private Integer code;
        private String msg;

        KeyTypeEnum(Integer code, String msg) {
            this.code = code;
            this.msg = msg;
        }

        public Integer getCode() {
            return code;
        }

        public String getName() {
            return msg;
        }
    }

    static {
        Calendar calendar = Calendar.getInstance();
        calendar.set(2016, 10, 1);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        EPOCH = calendar.getTimeInMillis();
        initWorkId();
        for (KeyTypeEnum keyTypeEnum : KeyTypeEnum.values()) {
            map.put(keyTypeEnum.getCode(), new KeyUtil());
        }
    }

    public static long generateKey(KeyTypeEnum keyTypeEnum) {
        if (workerId < 0L || workerId >= 1024L) {
            initWorkId();
        }
        KeyUtil keyUtil = map.get(keyTypeEnum.code);
        return keyUtil.generateKey().longValue();
    }

    private static void setWorkerId(long workerId) {
        Preconditions.checkArgument(workerId >= 0L && workerId < 1024L);
        KeyUtil.workerId = workerId;
    }

    private synchronized Number generateKey() {
        long currentMillis = timeService.getCurrentMillis();
        Preconditions.checkState(this.lastTime <= currentMillis, "Clock is moving backwards, last time is %d milliseconds, current time is %d milliseconds", new Object[]{this.lastTime, currentMillis});
        if (this.lastTime == currentMillis) {
            if (0L == (this.sequence = this.sequence + 1L & 4095L)) {
                currentMillis = this.waitUntilNextTime(currentMillis);
            }
        } else {
            this.sequence = 0L;
        }

        this.lastTime = currentMillis;
        if (log.isDebugEnabled()) {
            log.debug("{}-{}-{}", new Object[]{(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS")).format(new Date(this.lastTime)), workerId, this.sequence});
        }

        return currentMillis - EPOCH << 22 | workerId << 12 | this.sequence;
    }

    private long waitUntilNextTime(long lastTime) {
        long time;
        for (time = timeService.getCurrentMillis(); time <= lastTime; time = timeService.getCurrentMillis()) {
        }

        return time;
    }

    public static void setTimeService(TimeService timeService) {
        timeService = timeService;
    }

    private static void initWorkId() {
        try {
            KeyUtil.setWorkerId(Long.parseLong(new Random().nextInt(255) + ""));
            Enumeration<NetworkInterface> netInterfaces;
            netInterfaces = NetworkInterface.getNetworkInterfaces();
            InetAddress ip = null;
            while (netInterfaces.hasMoreElements()) {
                NetworkInterface ni = netInterfaces.nextElement();
                Enumeration<InetAddress> address = ni.getInetAddresses();
                while (address.hasMoreElements()) {
                    ip = address.nextElement();
                    if (ip.isSiteLocalAddress()
                            && !ip.isLoopbackAddress()
                            && ip.getHostAddress().indexOf(":") == -1) {
                        KeyUtil.setWorkerId(Long.parseLong(ip.getHostAddress().split("\\.")[3]));
                        break;
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 功能描述: 生成10位随机数
     *
     * @param
     * @return java.lang.String
     * @author suntf
     * @date 2019/2/28 16:26
     */
    public static String getTenRandom() {
        int startNum = java.util.concurrent.ThreadLocalRandom.current().nextInt(999999999);
        int endNum = java.util.concurrent.ThreadLocalRandom.current().nextInt(10);
        String randNum = startNum + "" + endNum;
        char numArray[] = randNum.toCharArray();
        // 第一位不能是0
        if (numArray[0] == '0') {
            numArray[0] = '1';
        }
        int size = numArray.length;
        // 判重容器

        loop1:
        for (int i = 0; i < size; i++) {
            HashSet set = new HashSet(3);
            if (i + 2 == size) {
                break;
            }
            // 判断是否有三个连续
            set.add(numArray[i]);
            set.add(numArray[i + 1]);
            set.add(numArray[i + 2]);
            if (set.size() == 1) {
                // 替换三个连续数字中间那个
                loop2:
                while (true) {
                    char[] replaceNum = (java.util.concurrent.ThreadLocalRandom.current().nextInt(10) + "").toCharArray();
                    if (replaceNum[0] != numArray[i + 1]) {
                        numArray[i + 1] = replaceNum[0];
                        break loop2;
                    }
                }
            }
            // 清空set
            set.clear();
        }
        String newRandm = new String(numArray);
        return newRandm;
    }
}

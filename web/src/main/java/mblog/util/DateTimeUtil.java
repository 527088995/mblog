package mblog.util;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.time.DateFormatUtils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

/**
 * @Author: ds
 * @Description: 日期操作类
 * @Date: Created in 2018-1-3.
 */
public class DateTimeUtil extends org.apache.commons.lang3.time.DateUtils {
    /**
     * 用来获取几秒前，几分钟前。。
     */
    private static final long ONE_MINUTE = 60000L;
    private static final long ONE_HOUR = 3600000L;
    private static final long ONE_DAY = 86400000L;
    private static final long ONE_WEEK = 604800000L;
    private static final String ONE_SECOND_AGO = "秒前";
    private static final String ONE_MINUTE_AGO = "分钟前";
    private static final String ONE_HOUR_AGO = "小时前";
    private static final String ONE_DAY_AGO = "天前";
    private static final String ONE_MONTH_AGO = "月前";
    private static final String ONE_YEAR_AGO = "年前";
    /**
     * 日期操作类型 - 年
     */
    public static final int TYPE_YEAR = Calendar.YEAR;
    /**
     * 日期操作类型 - 月
     */
    public static final int TYPE_MONTH = Calendar.MONTH;
    /**
     * 日期操作类型 - 日
     */
    public static final int TYPE_DATE = Calendar.DATE;
    // 时区
    private static TimeZone zone = TimeZone.getTimeZone("GMT+8");
    private static String[] parsePatterns = {
            "yyyy-MM-dd", "yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd HH:mm", "yyyy-MM",
            "yyyy/MM/dd", "yyyy/MM/dd HH:mm:ss", "yyyy/MM/dd HH:mm", "yyyy/MM",
            "yyyy.MM.dd", "yyyy.MM.dd HH:mm:ss", "yyyy.MM.dd HH:mm", "yyyy.MM"};

    /**
     * 日期型字符串转化为日期 格式
     * { "yyyy-MM-dd", "yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd HH:mm",
     * "yyyy/MM/dd", "yyyy/MM/dd HH:mm:ss", "yyyy/MM/dd HH:mm",
     * "yyyy.MM.dd", "yyyy.MM.dd HH:mm:ss", "yyyy.MM.dd HH:mm" }
     */
    public static Date parseDate(Object str) {
        if (str == null) {
            return null;
        }
        try {
            Date date = parseDate(str.toString(), parsePatterns);

            SimpleDateFormat fo = new SimpleDateFormat(parsePatterns[1]);
            fo.setTimeZone(zone);

            return fo.parse(DateFormatUtils.format(date, parsePatterns[1]));
        } catch (ParseException e) {
            return null;
        }
    }

    /**
     * 得到日期字符串 默认格式（yyyy-MM-dd） pattern可以为："yyyy-MM-dd" "HH:mm:ss" "E"
     */
    public static String formatDate(Date date, Object... pattern) {
        String formatDate = null;
        if (pattern != null && pattern.length > 0) {
            formatDate = DateFormatUtils.format(date, pattern[0].toString());
        } else {
            formatDate = DateFormatUtils.format(date, "yyyy-MM-dd");
        }
        return formatDate;
    }

    /**
     * 取得周的第一天
     *
     * @param timeInMillis 所属日期
     * @return
     */
    public static Long getWeekFirstDay(Long timeInMillis) {
        Calendar calendar = Calendar.getInstance();
        if (timeInMillis != null) {
            calendar.setTimeInMillis(timeInMillis);
        }
        calendar.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);
        return calendar.getTimeInMillis();
    }

    /**
     * 取得月的第一天
     *
     * @param timeInMillis 所属日期
     * @return
     */
    public static Long getMonthFirstDay(Long timeInMillis) {
        Calendar calendar = Calendar.getInstance();
        if (timeInMillis != null) {
            calendar.setTimeInMillis(timeInMillis);
        }
        calendar.set(Calendar.DAY_OF_MONTH, 1);
        return calendar.getTimeInMillis();
    }

    /**
     * 取得年的第一天
     *
     * @param timeInMillis 所属日期
     * @return
     */
    public static Long getYearFirstDay(Long timeInMillis) {
        Calendar calendar = Calendar.getInstance();
        if (timeInMillis != null) {
            calendar.setTimeInMillis(timeInMillis);
        }
        calendar.set(Calendar.MONTH, Calendar.JANUARY);
        calendar.set(Calendar.DAY_OF_MONTH, 1);
        return calendar.getTimeInMillis();
    }

    public static Date string2Date(String date, String format) {
        if (StringUtils.isBlank(date)) {
            return null;
        } else {
            if (StringUtils.isBlank(format)) {
                format = "yyyy-MM-dd HH:mm:ss";
            }

            SimpleDateFormat df = new SimpleDateFormat(format);
            df.setTimeZone(TimeZone.getTimeZone("GMT+8"));
            try {
                return df.parse(date);
            } catch (Exception var4) {
                var4.printStackTrace();
                return null;
            }
        }
    }

    public static boolean isEqual(Date d1, Date d2) {
        SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");
        return df.format(d1).equals(df.format(d2));
    }

    public static long string2Long(String dateStr, String format) {
        String dateStrTmp = format.equals("yyyy-MM-dd HH:mm:ss") && dateStr.length() == 10 ? dateStr + " 00:00:00" : dateStr;
        Date date = string2Date(dateStrTmp, format);
        return date == null ? 0L : date.getTime();
    }

    public static String long2String(Long dateParam, String format) {
        Date date = new Date();
        date.setTime(dateParam);
        SimpleDateFormat df = new SimpleDateFormat(format);
        return df.format(date);
    }

    /**
     * 根据日期设置获取前num小时的0分0秒时间
     *
     * @param date 当前日期
     * @param num  获取往前跳的小时数
     * @return num小时的0分0秒时间
     */
    public static Date getLastHourTimeByNum(Date date, int num) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.HOUR, -Math.abs(num));
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        return calendar.getTime();
    }

    /**
     * 根据日期设置获取前num小时的0分0秒时间
     *
     * @param date 当前日期
     * @param num  获取往前跳的小时数
     * @return num小时的0分0秒时间
     */
    public static Date getLastMinuteTimeByNum(Date date, int num) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.MINUTE, -Math.abs(num));
        calendar.set(Calendar.SECOND, 0);
        return calendar.getTime();
    }

    /**
     * 根据日期设置获取前num天时间
     *
     * @param date 当前日期
     * @param num  获取往前跳的小时数
     * @return num小时的0分0秒时间
     */
    public static Date getLastDayByNum(Date date, int num) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.DAY_OF_MONTH, -Math.abs(num));
        calendar.set(Calendar.HOUR, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        return calendar.getTime();
    }

    //获取上周的开始时间
    public static Date getBeginDayOfLastWeek() {
        Date date = new Date();
        if (date == null) {
            return null;
        }
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        int dayofweek = cal.get(Calendar.DAY_OF_WEEK);
        if (dayofweek == 1) {
            dayofweek += 7;
        }
        cal.add(Calendar.DATE, 2 - dayofweek - 7);
        return getDayStartTime(cal.getTime());
    }

    //获取上周的结束时间
    public static Date getEndDayOfLastWeek() {
        Calendar cal = Calendar.getInstance();
        cal.setTime(getBeginDayOfLastWeek());
        cal.add(Calendar.DAY_OF_WEEK, 6);
        Date weekEndSta = cal.getTime();
        return getDayEndTime(weekEndSta);
    }

    //获取某个日期的开始时间
    public static Date getDayStartTime(Date d) {
        Calendar calendar = Calendar.getInstance();
        if (null != d) calendar.setTime(d);
        calendar.set(
                calendar.get(Calendar.YEAR),
                calendar.get(Calendar.MONTH),
                calendar.get(Calendar.DAY_OF_MONTH),
                0,
                0,
                0);
        calendar.set(Calendar.MILLISECOND, 0);
        return new Date(calendar.getTimeInMillis());
    }

    //获取某个日期的结束时间
    public static Date getDayEndTime(Date d) {
        Calendar calendar = Calendar.getInstance();
        if (null != d) calendar.setTime(d);
        calendar.set(
                calendar.get(Calendar.YEAR),
                calendar.get(Calendar.MONTH),
                calendar.get(Calendar.DAY_OF_MONTH),
                23,
                59,
                59);
        calendar.set(Calendar.MILLISECOND, 999);
        return new Date(calendar.getTimeInMillis());
    }

    /**
     * 时间片段校验
     *
     * @param curTime
     * @param beginTime
     * @param endTime
     * @return
     */
    public static boolean belongCalendar(Date curTime, Date beginTime, Date endTime) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(curTime);

        Calendar begin = Calendar.getInstance();
        begin.setTime(beginTime);

        Calendar end = Calendar.getInstance();
        end.setTime(endTime);
        return calendar.after(begin) && calendar.before(end);
    }

    /**
     * @param createDate
     * @return
     * @description
     * @method getDifftime
     * @date: 2018年08月25日 11:22:54
     * @author:liyang
     */
    public static String getDifftime(Date createDate) {
        long delta = System.currentTimeMillis() - createDate.getTime();
        if (delta < 1L * ONE_MINUTE) {
            long seconds = toSeconds(delta);
            return (seconds <= 0 ? 1 : seconds) + ONE_SECOND_AGO;
        }
        if (delta < 60L * ONE_MINUTE) {
            long minutes = toMinutes(delta);
            return (minutes <= 0 ? 1 : minutes) + ONE_MINUTE_AGO;
        }
        if (delta < 24L * ONE_HOUR) {
            long hours = toHours(delta);
            return (hours <= 0 ? 1 : hours) + ONE_HOUR_AGO;
        }
        if (delta < 48L * ONE_HOUR) {
            return "昨天";
        }
        if (delta < 30L * ONE_DAY) {
            long days = toDays(delta);
            return (days <= 0 ? 1 : days) + ONE_DAY_AGO;
        }
        if (delta < 12L * 4L * ONE_WEEK) {
            long months = toMonths(delta);
            return (months <= 0 ? 1 : months) + ONE_MONTH_AGO;
        } else {
            long years = toYears(delta);
            return (years <= 0 ? 1 : years) + ONE_YEAR_AGO;
        }
    }

    private static long toSeconds(long date) {
        return date / 1000L;
    }

    private static long toMinutes(long date) {
        return toSeconds(date) / 60L;
    }

    private static long toHours(long date) {
        return toMinutes(date) / 60L;
    }

    private static long toDays(long date) {
        return toHours(date) / 24L;
    }

    private static long toMonths(long date) {
        return toDays(date) / 30L;
    }

    private static long toYears(long date) {
        return toMonths(date) / 365L;
    }
}

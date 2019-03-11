package mblog.util;

import org.apache.commons.beanutils.BeanComparator;
import org.apache.commons.collections.ComparatorUtils;
import org.apache.commons.collections.comparators.ComparableComparator;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * 功能描述:list 工具类
 *
 * @author : suncaoyong (WeChat)
 * @date : 2019-02/27 21:30
 */

public class ListUtil extends org.apache.commons.lang3.time.DateUtils {

    /**
     * 功能描述: 根据list-bean中某个字段进行排序
     *
     * @param list      1 list集合
     * @param fieldName 2 排序字段
     * @param asc       3 正序倒叙
     * @return : void
     * @author : suncaoyong (WeChat)
     * @date : 2019-02/28 11:13
     */
    public static <T> void sort(List<T> list, String fieldName, boolean asc) {
        Comparator<?> mycmp = ComparableComparator.getInstance();
        mycmp = ComparatorUtils.nullLowComparator(mycmp); // 允许null
        if (!asc) {
            mycmp = ComparatorUtils.reversedComparator(mycmp); // 逆序
        }
        Collections.sort(list, new BeanComparator(fieldName, mycmp));
    }
}

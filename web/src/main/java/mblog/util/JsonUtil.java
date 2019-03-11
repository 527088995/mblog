package mblog.util;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConversionException;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.Converter;
import org.apache.commons.lang3.StringUtils;

import java.beans.BeanInfo;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.io.IOException;
import java.lang.reflect.Method;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * 功能描述
 *
 * @author sevenSeconds
 * @date 2019/2/28 9:59
 */

@SuppressWarnings("unchecked")
public class JsonUtil {
    /**
     * 定义jackson对象
     */
    private static final ObjectMapper MAPPER = new ObjectMapper();

    /**
     * 将对象转换成json字符串。
     *
     * @param data 数据
     * @return 结果
     */
    public static String objectToJson(Object data) throws JsonProcessingException {
        return MAPPER.writeValueAsString(data);
    }

    /**
     * 将json结果集转化为对象
     *
     * @param jsonData json数据
     * @param beanType 对象中的object类型
     * @return 结果
     */
    public static <T> T jsonToPojo(String jsonData, Class<T> beanType) throws Exception {
        if (StringUtils.isBlank(jsonData)) {
            return null;
        }
        return MAPPER.readValue(jsonData, beanType);
    }

    /**
     * 将json数据转换成pojo对象list
     * <p>Title: jsonToList</p>
     * <p>Description: </p>
     *
     * @param jsonData 数据
     * @param beanType 对象类型
     * @return 结果
     */
    public static <T> List<T> jsonToList(String jsonData, Class<T> beanType) throws IOException {
        JavaType javaType = MAPPER.getTypeFactory().constructParametricType(ArrayList.class, beanType);
        return MAPPER.readValue(jsonData, javaType);
    }

    /**
     * 使用Introspector，map集合成javabean
     *
     * @param map map
     * @param obj obj
     */
    public static void transMap2Bean(Map<String, Object> map, Object obj) throws Exception {
        ConvertUtils.register(new Converter() {
            @Override
            @SuppressWarnings("unchecked")
            public Object convert(Class arg0, Object arg1) {
                if (arg1 == null) {
                    return null;
                }
                if (!(arg1 instanceof String)) {
                    throw new ConversionException("只支持字符串转换 !");
                }
                String str = (String) arg1;
                if ("".equals(str.trim())) {
                    return null;
                }

                SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

                try {
                    return sd.parse(str);
                } catch (ParseException e) {
                    throw new RuntimeException(e);
                }
            }
        }, java.util.Date.class);
        if (map == null || obj == null) {
            return;
        }
        BeanUtils.populate(obj, map);
    }

    /**
     * 使用Introspector，map集合成javabean
     *
     * @param list      list
     * @param beanClass bean的Class类
     * @return bean对象
     */
    public static <T> List<T> listToBean(List<Map<String, Object>> list, Class<T> beanClass) throws Exception {
        if (null == list) {
            return null;
        }
        List<T> resultList = new ArrayList<>();
        for (Map<String, Object> map : list) {
            T t = beanClass.newInstance();
            BeanInfo beanInfo = Introspector.getBeanInfo(t.getClass());
            PropertyDescriptor[] propertyDescriptors = beanInfo.getPropertyDescriptors();
            for (PropertyDescriptor property : propertyDescriptors) {
                Method setter = property.getWriteMethod();
                if (setter != null) {
                    setter.invoke(t, map.get(property.getName()));
                }
            }
            resultList.add(t);
        }
        return resultList;
    }

}
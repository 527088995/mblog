package mblog.redis.customer;

import mblog.constant.rediskeys.RedisKeys;
import redis.clients.jedis.JedisCluster;

import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * 功能描述: redis集群客户端操作类
 *
 * @author suntf
 * @date 2019/2/22 18:19
 */
public class RedisClusterServer {
    private JedisCluster jedisCluster;

    public RedisClusterServer() {
    }

    public void setJedisCluster(JedisCluster jedisCluster) {
        this.jedisCluster = jedisCluster;
    }

    public JedisCluster getJedisCluster() {
        return this.jedisCluster;
    }


    /**
     * 将 key 所储存的值加上增量 increment
     *
     * @param key   String
     * @param value long
     * @return long
     */
    public long increment(String key, long value) {
        key = RedisKeys.FIRST_KEY + key;
        return getJedisCluster().incrBy(key, value);
    }

    /**
     * 自增加1
     *
     * @param key String
     * @return long
     */
    public long increment(String key) {
        key = RedisKeys.FIRST_KEY + key;
        return getJedisCluster().incr(key);
    }

    /**
     * 将 key 所储存的值减去减量 decrement
     *
     * @param key   String
     * @param value long
     * @return long
     */
    public long decrment(String key, long value) {
        key = RedisKeys.FIRST_KEY + key;
        return getJedisCluster().decrBy(key, value);
    }

    /**
     * 通过key删除
     *
     * @param key String
     */
    public void del(String key) {
        key = RedisKeys.FIRST_KEY + key;
        getJedisCluster().del(key);
    }


    /**
     * 添加key value 并且设置存活时间
     *
     * @param key
     * @param value
     * @param liveTime
     */
    public void set(String key, String value, int liveTime) {
        this.set(key, value);
        key = RedisKeys.FIRST_KEY + key;
        getJedisCluster().expire(key, liveTime);
    }

    /**
     * 添加key value
     *
     * @param key
     * @param value
     */
    public void set(String key, String value) {
        key = RedisKeys.FIRST_KEY + key;
        getJedisCluster().set(key, value);
    }

    /**
     * 获取redis value (String)
     *
     * @param key
     * @return
     */
    public String get(String key) {
        key = RedisKeys.FIRST_KEY + key;
        String value = getJedisCluster().get(key);
        if ("\"\"".equals(value)) {
            value = "";
        }
        return value;
    }

    /**
     * 通过正则匹配keys
     *
     * @param pattern
     * @return
     */
    public Set<String> keys(String pattern) {
        pattern = RedisKeys.FIRST_KEY + pattern;
        return getJedisCluster().hkeys(pattern);
    }

    /**
     * 检查key是否已经存在
     *
     * @param key
     * @return
     */
    public boolean exists(String key) {
        key = RedisKeys.FIRST_KEY + key;
        return getJedisCluster().exists(key);
    }

    // 存list
    public void setListLpush(String key, List<String> list) {
        if (list != null && list.size() > 0) {
            for (String str : list) {
                getJedisCluster().lpush(key, str);
            }
        }
    }

    public void setListRpush(String key, List<String> list) {
        if (list != null && list.size() > 0) {
            for (String str : list) {
                getJedisCluster().rpush(key, str);
            }
        }
    }

    /**
     * 移除表中所有与 value 相等的值。
     *
     * @param key
     * @param value
     * @return
     */
    public long lrem(String key, String value) {
        key = RedisKeys.FIRST_KEY + key;
        return getJedisCluster().lrem(key, 0, value);
    }

    /**
     * 功能描述: 存list 中的单个
     *
     * @param key
     * @param str
     * @return void
     * @author suntf
     * @date 2019/2/22 18:17
     */
    public void setOneForlistLpush(String key, String str) {
        getJedisCluster().lpush(key, str);
    }

    public void setOneForlistRpush(String key, String str) {
        getJedisCluster().rpush(key, str);
    }

    /**
     * 功能描述: 获取Alllist
     *
     * @param key
     * @return java.util.List<java.lang.String>
     * @author suntf
     * @date 2019/2/22 18:17
     */
    public List<String> getAllList(String key) {
        return getJedisCluster().lrange(key, 0, -1);
    }

    /**
     * 功能描述: 获取列表片段
     *
     * @param key
     * @param start
     * @param stop
     * @return java.util.List<java.lang.String>
     * @author suntf
     * @date 2019/2/22 18:17
     */
    public List<String> getListStartAndStop(String key, int start, int stop) {
        return getJedisCluster().lrange(key, start, stop);
    }

    /**
     * 功能描述: 获取列表长度
     *
     * @param key
     * @return java.lang.Long
     * @author suntf
     * @date 2019/2/22 18:18
     */
    public Long getListSize(String key) {
        return getJedisCluster().llen(key);
    }


    public Long setHash(String key, String field, String value) {
        key = RedisKeys.FIRST_KEY + key;
        return getJedisCluster().hset(key, field, value);
    }

    public String getHash(String key, String field) {
        key = RedisKeys.FIRST_KEY + key;
        return getJedisCluster().hget(key, field);
    }

    public Long delHash(String key, String... field) {
        key = RedisKeys.FIRST_KEY + key;
        return getJedisCluster().hdel(key, field);
    }

    public String hmset(String key, Map<String, String> hash) {
        key = RedisKeys.FIRST_KEY + key;
        return getJedisCluster().hmset(key, hash);
    }

    public List<String> hmget(String key, String... fields) {
        key = RedisKeys.FIRST_KEY + key;
        return getJedisCluster().hmget(key, fields);
    }

    public Long hincrBy(String key, String field, long value) {
        key = RedisKeys.FIRST_KEY + key;
        return getJedisCluster().hincrBy(key, field, value);
    }

    public Double hincrByFloat(String key, String field, double value) {
        key = RedisKeys.FIRST_KEY + key;
        return getJedisCluster().hincrByFloat(key, field, value);
    }

    public Boolean hexists(String key, String field) {
        key = RedisKeys.FIRST_KEY + key;
        return getJedisCluster().hexists(key, field);
    }

    public Long hlen(String key) {
        key = RedisKeys.FIRST_KEY + key;
        return getJedisCluster().hlen(key);
    }

    public Set<String> hkeys(String key) {
        key = RedisKeys.FIRST_KEY + key;
        return getJedisCluster().hkeys(key);
    }

    public List<String> hvals(String key) {
        key = RedisKeys.FIRST_KEY + key;
        return getJedisCluster().hvals(key);
    }

    /**
     * 从redis队列左侧取数据
     *
     * @param key key
     * @return 左侧第一个元素
     */
    public String lpop(String key) {
        return getJedisCluster().lpop(key);
    }
}

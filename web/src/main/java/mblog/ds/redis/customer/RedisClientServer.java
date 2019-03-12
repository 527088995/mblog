package mblog.ds.redis.customer;

import mblog.ds.constant.rediskeys.RedisKeys;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import java.util.List;
import java.util.Set;

/**
 * 功能描述: redis单机客户端操作类
 *
 * @author suntf
 * @date 2019/2/22 18:19
 */
public class RedisClientServer {
    private JedisPool jedisPool;

    public RedisClientServer() {
    }

    public void setJedisPool(JedisPool jedisPool) {
        this.jedisPool = jedisPool;
    }

    public JedisPool getJedisCluster() {
        return this.jedisPool;
    }

    /**
     * 功能描述: 字符串-返回 key 所关联的字符串值
     *
     * @param key key
     * @return java.lang.String
     * @author suntf
     * @date 2019/2/23 10:42
     */
    public String get(String key) {
        try {
            key = RedisKeys.FIRST_KEY + key;
            Jedis jedis = getJedisCluster().getResource();
            String string = jedis.get(key);
            jedis.close();
            return string;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 功能描述:字符串-将字符串值 value 关联到 key
     *
     * @param key
     * @param value
     * @return java.lang.String
     * @author suntf
     * @date 2019/2/23 10:42
     */
    public String set(String key, String value) {
        try {
            key = RedisKeys.FIRST_KEY + key;
            Jedis jedis = getJedisCluster().getResource();
            String string = jedis.set(key, value);
            jedis.close();
            return string;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 功能描述: 字符串-将 key 中储存的数字值增一
     *
     * @param key
     * @return java.lang.Long
     * @author suntf
     * @date 2019/2/23 10:45
     */
    public Long incr(String key) {
        try {
            key = RedisKeys.FIRST_KEY + key;
            Jedis jedis = getJedisCluster().getResource();
            Long result = jedis.incr(key);
            jedis.close();
            return result;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 功能描述: 字符串-将 key 中储存的数字值减一
     *
     * @param key
     * @return java.lang.Long
     * @author suntf
     * @date 2019/2/23 10:46
     */
    public Long decr(String key) {
        try {
            key = RedisKeys.FIRST_KEY + key;
            Jedis jedis = getJedisCluster().getResource();
            Long result = jedis.decr(key);
            jedis.close();
            return result;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 功能描述: 哈希表-返回哈希表 key 中给定域 field 的值
     *
     * @param hkey
     * @param key
     * @return java.lang.String
     * @author suntf
     * @date 2019/2/23 10:44
     */
    public String hget(String hkey, String key) {
        try {
            hkey = RedisKeys.FIRST_KEY + hkey;
            Jedis jedis = getJedisCluster().getResource();
            String string = jedis.hget(hkey, key);
            jedis.close();
            return string;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 功能描述: 哈希表-将哈希表 key 中的域 field 的值设为 value
     *
     * @return java.lang.Long
     * @author suntf
     * @date 2019/2/23 10:45
     */
    public Long hset(String hkey, String key, String value) {
        try {
            hkey = RedisKeys.FIRST_KEY + hkey;
            Jedis jedis = getJedisCluster().getResource();
            Long l = jedis.hset(hkey, key, value);
            jedis.close();
            return l;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 功能描述: 为给定 key 设置生存时间，当 key 过期时(生存时间为 0 )，它会被自动删除
     *
     * @param key
     * @param seconds
     * @return java.lang.Long
     * @author suntf
     * @date 2019/2/23 10:46
     */
    public Long expire(String key, int seconds) {
        try {
            key = RedisKeys.FIRST_KEY + key;
            Jedis jedis = getJedisCluster().getResource();
            Long expire = jedis.expire(key, seconds);
            jedis.close();
            return expire;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 功能描述: 以秒为单位，返回给定 key 的剩余生存时间(TTL, time to live)
     *
     * @param key
     * @return java.lang.Long
     * @author suntf
     * @date 2019/2/23 10:47
     */
    public Long ttl(String key) {
        try {
            key = RedisKeys.FIRST_KEY + key;
            Jedis jedis = getJedisCluster().getResource();
            Long result = jedis.ttl(key);
            jedis.close();
            return result;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 功能描述: 删除给定的 key
     *
     * @param key
     * @return java.lang.Long
     * @author suntf
     * @date 2019/2/23 10:47
     */
    public Long del(String key) {
        try {
            key = RedisKeys.FIRST_KEY + key;
            Jedis jedis = getJedisCluster().getResource();
            Long result = jedis.del(key);
            jedis.close();
            return result;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 功能描述: 哈希表-删除哈希表 key 中的一个或多个指定域，不存在的域将被忽略
     *
     * @param hkey
     * @param key
     * @return java.lang.Long
     * @author suntf
     * @date 2019/2/23 10:48
     */
    public Long hdel(String hkey, String key) {
        try {
            hkey = RedisKeys.FIRST_KEY + hkey;
            Jedis jedis = getJedisCluster().getResource();
            Long result = jedis.hdel(hkey, key);
            jedis.close();
            return result;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 功能描述: 将list插入到列表 key 的表头
     *
     * @param key
     * @param list
     * @return void
     * @author suntf
     * @date 2019/2/23 10:51
     */
    public void setListLpush(String key, List<String> list) {
        try {
            key = RedisKeys.FIRST_KEY + key;
            if (list != null && list.size() > 0) {
                Jedis jedis = getJedisCluster().getResource();
                for (String str : list) {
                    jedis.lpush(key, str);
                }
                jedis.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 功能描述: 将list插入到列表 key 的表尾(最右边)。
     *
     * @param key
     * @param list
     * @return void
     * @author suntf
     * @date 2019/2/23 10:52
     */
    public void setListRpush(String key, List<String> list) {
        try {
            key = RedisKeys.FIRST_KEY + key;
            if (list != null && list.size() > 0) {
                Jedis jedis = getJedisCluster().getResource();
                for (String str : list) {
                    jedis.rpush(key, str);
                }
                jedis.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 功能描述: 移除表中所有与 value 相等的值。
     *
     * @param key
     * @param value
     * @return long
     * @author suntf
     * @date 2019/2/23 10:53
     */
    public Long lrem(String key, String value) {
        try {
            Jedis jedis = getJedisCluster().getResource();
            key = RedisKeys.FIRST_KEY + key;
            long ret = jedis.lrem(key, 0, value);
            jedis.close();
            return ret;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 功能描述: 存list 中的单个，插入到列表 key 的表头
     *
     * @param key
     * @param str
     * @return void
     * @author suntf
     * @date 2019/2/23 10:53
     */
    public void setOneForlistLpush(String key, String str) {
        try {
            key = RedisKeys.FIRST_KEY + key;
            Jedis jedis = getJedisCluster().getResource();
            jedis.lpush(key, str);
            jedis.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 功能描述: 存list 中的单个，插入到列表 key 的表尾(最右边)。
     *
     * @param key
     * @param str
     * @return void
     * @author suntf
     * @date 2019/2/23 10:53
     */
    public void setOneForlistRpush(String key, String str) {
        try {
            key = RedisKeys.FIRST_KEY + key;
            Jedis jedis = getJedisCluster().getResource();
            jedis.rpush(key, str);
            jedis.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

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
        try {
            key = RedisKeys.FIRST_KEY + key;
            Jedis jedis = getJedisCluster().getResource();
            List<String> ret = jedis.lrange(key, 0, -1);
            jedis.close();
            return ret;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
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
        try {
            key = RedisKeys.FIRST_KEY + key;
            Jedis jedis = getJedisCluster().getResource();
            List<String> ret = jedis.lrange(key, start, stop);
            jedis.close();
            return ret;

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

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
        try {
            key = RedisKeys.FIRST_KEY + key;
            Jedis jedis = getJedisCluster().getResource();
            Long ret = jedis.llen(key);
            jedis.close();
            return ret;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 放入zset集合数据
     *
     * @param key    key
     * @param score  可以理解为在队列中的排序
     * @param member 数据
     * @return java.lang.Long
     * @author GoodMan
     * @date 2019/3/8 11:25
     */
    public Long zadd(String key, double score, String member) {
        try {
            key = RedisKeys.FIRST_KEY + key;
            Jedis jedis = getJedisCluster().getResource();
            Long ret = jedis.zadd(key, score, member);
            jedis.close();
            return ret;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 获取zset集合中的指定范围的数据
     *
     * @param key
     * @param start
     * @param end
     * @return java.util.Set<java.lang.String>
     * @author GoodMan
     * @date 2019/3/8 11:34
     */
    public Set<String> zrange(String key, int start, int end) {
        try {
            key = RedisKeys.FIRST_KEY + key;
            Jedis jedis = getJedisCluster().getResource();
            Set<String> ret = jedis.zrange(key, start, end);
            jedis.close();
            return ret;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 取zset集合长度
     *
     * @param key key
     * @return java.lang.Long
     * @author GoodMan
     * @date 2019/3/9 11:50
     */
    public Long zcard(String key) {
        try {
            key = RedisKeys.FIRST_KEY + key;
            Jedis jedis = getJedisCluster().getResource();
            Long ret = jedis.zcard(key);
            jedis.close();
            return ret;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

}

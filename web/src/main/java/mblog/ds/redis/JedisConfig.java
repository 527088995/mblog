package mblog.ds.redis;

import mblog.ds.redis.customer.RedisClientServer;
import mblog.ds.redis.customer.RedisClusterServer;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.data.redis.RedisProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import redis.clients.jedis.HostAndPort;
import redis.clients.jedis.JedisCluster;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Jedis相关bean
 *
 * @author suntf
 * @since 2019/2/22
 */
@Configuration
public class JedisConfig {

//    @Autowired
//    RedisProperties redisProperties;
//
//    @Bean
//    JedisCluster jedisCluster() {
//        final String DELIMITER = ":";
//        // 获取redis单机服务器
//        String host = redisProperties.getHost();
//        if (!StringUtils.isBlank(host)) {
//            return null;
//        }
//        // 获取redis集群服务器数组(这里要相信自己的输入，所以没有考虑空指针问题)
//        List<String> serverArray = redisProperties.getCluster().getNodes();
//        Set<HostAndPort> nodes = new HashSet<>();
//
//        for (String ipPort : serverArray) {
//            String[] ipPortPair = ipPort.split(DELIMITER);
//            nodes.add(new HostAndPort(ipPortPair[0].trim(), Integer.valueOf(ipPortPair[1].trim())));
//        }
//
//        return new JedisCluster(nodes, redisProperties.getTimeout().getNano(), redisProperties.getCluster().getMaxRedirects());
//
//    }
//
//    @Bean
//    JedisPool jedisPool() {
//
//        // 获取redis单机服务器
//        String host = redisProperties.getHost();
//        if (!StringUtils.isBlank(host)) {
//            int port = redisProperties.getPort();
//            // 连接池的配置对象
//            JedisPoolConfig config = new JedisPoolConfig();
//            // 设置最大连接数
//            config.setMaxTotal(1000);
//            // 设置最大空闲连接数
//            config.setMaxIdle(10);
//            JedisPool jedisPool = new JedisPool(config, host, port, redisProperties.getTimeout().getNano(), redisProperties.getPassword(), redisProperties.getDatabase(), null);
//
//            return jedisPool;
//        }
//        return null;
//    }
//
//    @Bean(name = "redisClusterServer")
//    RedisClusterServer redisClusterServer(JedisCluster jedisCluster) {
//        RedisClusterServer redisClusterServer = new RedisClusterServer();
//        redisClusterServer.setJedisCluster(jedisCluster);
//        return redisClusterServer;
//    }
//
//    @Bean(name = "redisClientServer")
//    RedisClientServer redisClientServer(JedisPool jedisPool) {
//        RedisClientServer redisClientServer = new RedisClientServer();
//        redisClientServer.setJedisPool(jedisPool);
//        return redisClientServer;
//    }

}

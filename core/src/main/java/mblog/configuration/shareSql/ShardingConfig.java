package mblog.configuration.shareSql;

import com.zaxxer.hikari.HikariDataSource;
import io.shardingsphere.core.api.ShardingDataSourceFactory;
import io.shardingsphere.core.api.config.ShardingRuleConfiguration;
import io.shardingsphere.core.api.config.TableRuleConfiguration;
import io.shardingsphere.core.api.config.strategy.StandardShardingStrategyConfiguration;
import mblog.configuration.config.DatabaseShardingAlgorithm;
import mblog.configuration.config.TablePreciseShardingAlgorithm;
import mblog.configuration.config.TableRangeShardingAlgorithm;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;

import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

@Configuration
public class ShardingConfig {

//    @ConfigurationProperties(prefix = "spring.datasource.order00")
//    @Bean(name = "order00")
//    public DataSource dataSource0() {
//        return new HikariDataSource();
//    }
//
//    @ConfigurationProperties(prefix = "spring.datasource.order01")
//    @Bean(name = "order01")
//    public DataSource dataSource1() {
//        return new HikariDataSource();
//    }
//
//    @ConfigurationProperties(prefix = "spring.datasource.order02")
//    @Bean(name = "order02")
//    public DataSource dataSource2() {
//        return new HikariDataSource();
//    }
//
//    @ConfigurationProperties(prefix = "spring.datasource.order03")
//    @Bean(name = "order03")
//    public DataSource dataSource3() {
//        return new HikariDataSource();
//    }
//
//    @Primary
//    @Bean(name = "shardingDataSource")
//    public DataSource getDataSource(@Qualifier("order00") DataSource order00, @Qualifier("order01") DataSource order01,
//                                    @Qualifier("order02") DataSource order02, @Qualifier("order03") DataSource order03) throws SQLException {
//        ShardingRuleConfiguration shardingRuleConfig = new ShardingRuleConfiguration();
//        //shardingRuleConfig.getTableRuleConfigs().add(getOrderInfoTableRuleConfiguration());
//        shardingRuleConfig.getTableRuleConfigs().add(getOrderProductTableRuleConfiguration());
//        shardingRuleConfig.getBindingTableGroups().add("order_info, order_product");
//        //引用分库分表
//        shardingRuleConfig.setDefaultDatabaseShardingStrategyConfig(new StandardShardingStrategyConfiguration("member_id", new DatabaseShardingAlgorithm()));
//        //引用分库分表
//        shardingRuleConfig.setDefaultTableShardingStrategyConfig(new StandardShardingStrategyConfiguration("member_id", new TablePreciseShardingAlgorithm(), new TableRangeShardingAlgorithm()));
//        Map<String, DataSource> dataSourceMap = new HashMap<>();
//        dataSourceMap.put("order00", order00);
//        dataSourceMap.put("order01", order01);
//        dataSourceMap.put("order02", order02);
//        dataSourceMap.put("order03", order03);
//        Properties properties = new Properties();
//        return ShardingDataSourceFactory.createDataSource(dataSourceMap, shardingRuleConfig, new HashMap<String, Object>(), properties);
//    }
//
//    private static TableRuleConfiguration getOrderInfoTableRuleConfiguration() {
//        TableRuleConfiguration result = new TableRuleConfiguration();
//        result.setLogicTable("order_info");
//        result.setActualDataNodes("order0${0..3}.order_info_0${0..9}");
//        result.setKeyGeneratorColumnName("member_id");
//        return result;
//    }
//
//    private static TableRuleConfiguration getOrderProductTableRuleConfiguration() {
//        TableRuleConfiguration result = new TableRuleConfiguration();
//        result.setLogicTable("order_product");
//        result.setActualDataNodes("order0${0..3}.order_product_0${0..9}");
//        result.setKeyGeneratorColumnName("member_id");
//        return result;
//    }

}

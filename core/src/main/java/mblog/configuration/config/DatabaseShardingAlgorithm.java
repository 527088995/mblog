package mblog.configuration.config;

import io.shardingsphere.core.api.algorithm.sharding.PreciseShardingValue;
import io.shardingsphere.core.api.algorithm.sharding.standard.PreciseShardingAlgorithm;

import java.util.Collection;
/**
 *功能描述 分库分表
 *
 * @return
 * @author wj
 * @date 2019/3/12 10:09
 */
public final class DatabaseShardingAlgorithm implements PreciseShardingAlgorithm<Long> {

    @Override
    public String doSharding(final Collection<String> availableTargetNames, final PreciseShardingValue<Long> shardingValue) {
        long i = shardingValue.getValue() % (10 * availableTargetNames.size()) / 10 ;
        for (String each : availableTargetNames) {
            if (each.endsWith(i + "")) {
                return each;
            }
        }
        throw new UnsupportedOperationException();
    }

}
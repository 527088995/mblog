package mblog.util.shareMemberSql;


import mblog.configuration.shareSql.Member;
import mblog.util.KeyUtil;

import java.util.UUID;

/**
 *功能描述 根据用户id后三位除40，再除10，商是库，余是表
 * 例如用户id是310724947817680896，是1库6表
 * 用户id是311104201541701632，是3库2表
 *
 * @return
 * @author wj
 * @date 2019/3/12 11:34
 */
public class shareMemberSqlServiceImpl {

    public void memberId(){
        Member member = new Member();
        // 加密盐值
        String salt = UUID.randomUUID().toString().replace("-", "");
        // 生成主键memberId
        long id = KeyUtil.generateKey(KeyUtil.KeyTypeEnum.MEMBER);
        member.setId(id);
        //存储的库
        member.setDataBase((int) (id % 40L / 10L));
        //存储表
        member.setDataTable((int) (id % 10L));
    }
}

package mblog.modules.authc.dao;

import mblog.modules.authc.entity.Monitor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface MonitorDao extends JpaRepository<Monitor, Long>, JpaSpecificationExecutor<Monitor> {


}

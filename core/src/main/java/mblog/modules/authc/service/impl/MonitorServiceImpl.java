package mblog.modules.authc.service.impl;

import mblog.modules.authc.dao.MonitorDao;
import mblog.modules.authc.entity.Monitor;
import mblog.modules.authc.service.MonitorService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
//@Transactional
public class MonitorServiceImpl implements MonitorService {

    @Autowired
    private MonitorDao monitorDao;


    @Override
    public void saveMonitor(Monitor monitor) {
        monitor.setCreateTime(new Date());
        monitorDao.save(monitor);
    }
}

package me.zhengjie.modules.quartz.service;

import me.zhengjie.base.CommonService;
import me.zhengjie.modules.quartz.domain.Triggers;

public interface TriggersService extends CommonService<Triggers> {
    Triggers findByJobNameAndGroupName(String jobName, String groupName);
}

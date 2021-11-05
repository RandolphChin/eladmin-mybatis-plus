package me.zhengjie.modules.quartz.service.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import me.zhengjie.base.CommonMapper;
import me.zhengjie.modules.quartz.domain.CronTriggers;
import me.zhengjie.modules.quartz.service.dto.CronInfoDto;
import org.springframework.stereotype.Repository;

/**
* @author wwe
* @date 2021-11-04
*/
@Repository
public interface CronTriggersMapper extends CommonMapper<CronTriggers> {
    IPage<CronInfoDto> getAllJob(IPage<CronInfoDto> page);
}

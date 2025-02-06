package com.suke.czx.modules.order.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.suke.czx.modules.order.dto.QueryOrderDto;
import com.suke.czx.modules.order.dto.UserPerformanceDto;
import com.suke.czx.modules.order.entity.SystemOrder;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 订单管理
 * 
 * @author zwz
 * @email 602459150@qq.com
 * @date 2024-10-26 14:22:27
 */
public interface SystemOrderMapper extends BaseMapper<SystemOrder> {

    List<UserPerformanceDto> getUserPerformance(QueryOrderDto queryOrderDto);
}

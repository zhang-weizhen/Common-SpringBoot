package com.suke.czx.modules.order.service;

import com.suke.czx.common.exception.RRException;
import com.suke.czx.modules.order.dto.QueryOrderDto;
import com.suke.czx.modules.order.dto.UserPerformanceDto;
import com.suke.czx.modules.order.entity.SystemOrder;

import com.baomidou.mybatisplus.extension.service.IService;
import com.suke.czx.modules.oss.entity.SysOss;

import java.util.List;

/**
 * 订单管理
 * 
 * @author zwz
 * @email 602459150@qq.com
 * @date 2024-10-26 14:22:27
 */
public interface SystemOrderService extends IService<SystemOrder> {

    List<UserPerformanceDto> userPerformance(QueryOrderDto queryOrderDto) throws RRException;

    SysOss downLoad(String id);
}

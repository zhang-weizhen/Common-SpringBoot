package com.suke.czx.modules.order.controller;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.collection.CollectionUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.suke.czx.common.annotation.SysLog;
import com.suke.czx.common.base.AbstractController;
import com.suke.czx.modules.order.constant.OrderConstant;
import com.suke.czx.modules.order.dto.OrderDto;
import com.suke.czx.modules.order.dto.QueryOrderDto;
import com.suke.czx.modules.order.dto.ReadingOrderDto;
import com.suke.czx.modules.order.entity.SystemOrder;
import com.suke.czx.modules.order.service.SystemOrderService;
import com.suke.czx.modules.sys.entity.SysUser;
import com.suke.czx.modules.sys.service.SysUserService;
import com.suke.zhjg.common.autofull.util.R;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;


/**
 * 订单管理
 *
 * @author zwz
 * @email 602459150@qq.com
 * @date 2024-10-26 14:22:27
 */
@RestController
@AllArgsConstructor
@RequestMapping("/order")
@Api(value = "SystemOrderController", tags = "订单管理")
public class SystemOrderController extends AbstractController {
    private final SystemOrderService systemOrderService;
    @Autowired
    private SysUserService sysUserService;

    /**
     * 列表
     */
    @ApiOperation(value = "订单管理列表")
    @GetMapping("/list")
    public R list(@RequestParam Map<String, Object> params) {
        //查询列表数据
        QueryWrapper<SystemOrder> queryWrapper = new QueryWrapper<>();
        setSelectValue(queryWrapper, params);
        Map<String, SysUser> userMap = new HashMap<>();
        IPage listPage = systemOrderService.page(mpPageConvert.pageParamConvert(params), queryWrapper);
        List<SystemOrder> records = listPage.getRecords();
        if (params != null && Boolean.TRUE.toString().equals(params.get("read"))) {
            List<ReadingOrderDto> readResult = new ArrayList<>();
            records.forEach(record -> {
                ReadingOrderDto readingOrderDto = new ReadingOrderDto();
                BeanUtil.copyProperties(record, readingOrderDto);
                if (userMap.get(readingOrderDto.getCreateBy()) != null) {
                    SysUser user = userMap.get(readingOrderDto.getCreateBy());
                    readingOrderDto.setCreateByName(user.getName());
                } else {
                    SysUser user = sysUserService.getById(readingOrderDto.getCreateBy());
                    userMap.put(user.getUserId(), user);
                    readingOrderDto.setCreateByName(user.getName());
                }
                readResult.add(readingOrderDto);
            });
            listPage.setRecords(readResult);
        } else {
            List<OrderDto> readResult = new ArrayList<>();
            records.forEach(record -> {
                OrderDto orderDto = new OrderDto();
                BeanUtil.copyProperties(record, orderDto);
                if (userMap.get(orderDto.getCreateBy()) != null) {
                    SysUser user = userMap.get(orderDto.getCreateBy());
                    orderDto.setCreateByName(user.getName());
                } else {
                    SysUser user = sysUserService.getById(orderDto.getCreateBy());
                    userMap.put(user.getUserId(), user);
                    orderDto.setCreateByName(user.getName());
                }
                readResult.add(orderDto);
            });
            listPage.setRecords(readResult);
        }
        return R.ok().setData(listPage);
    }

    /**
     * 列表
     */
    @ApiOperation(value = "订单管理列表-查询总额")
    @GetMapping("/listCount")
    public R listCount(@RequestParam Map<String, Object> params) {
        //查询列表数据
        QueryWrapper<SystemOrder> queryWrapper = new QueryWrapper<>();
        setSelectValue(queryWrapper, params);
        Map<String, BigDecimal> count = new HashMap<>();
        count.put("totalReceivedAmount", BigDecimal.valueOf(0));
        count.put("totalAmount", BigDecimal.valueOf(0));
        List<SystemOrder> list = systemOrderService.list(queryWrapper);
        if (!CollectionUtil.isNotEmpty(list)) {
            return R.ok().setData(count);
        }
        BigDecimal totalReceivedAmount = BigDecimal.valueOf(0);
        BigDecimal totalAmount = BigDecimal.valueOf(0);
        for (SystemOrder order : list) {
            if (order.getReceivedAmount() != null) {
                totalReceivedAmount = totalReceivedAmount.add(order.getReceivedAmount());
            }
            if (order.getTotalAmount() != null) {
                totalAmount = totalAmount.add(order.getTotalAmount());
            }
        }
        count.put("totalReceivedAmount", totalReceivedAmount);
        count.put("totalAmount", totalAmount);
        return R.ok().setData(count);
    }

    private QueryWrapper<SystemOrder> setSelectValue(QueryWrapper<SystemOrder> queryWrapper , Map<String, Object> params) {
        if (params.get("id") != null) {
            queryWrapper.eq("id", params.get("id"));
        }
        if (params.get("createBy") != null) {
            queryWrapper.eq("create_by", params.get("createBy"));
        }
//        if (params.get("customName") != null) {
//            queryWrapper.like("custom_name", params.get("customName"));
//        }
        if (params.get("customCode") != null) {
            queryWrapper.like("custom_code", params.get("customCode"));
        }
        if (params.get("orderStatus") != null) {
            queryWrapper.like("order_status", params.get("orderStatus"));
        }
        if (params.get("materialCode") != null) {
            queryWrapper.like("material_code", params.get("materialCode"));
        }
        if (params.get("sendingStatus") != null) {
            queryWrapper.like("sending_status", params.get("sendingStatus"));
        }
        if (params.get("paymentStatus") != null) {
            queryWrapper.like("payment_status", params.get("paymentStatus"));
        }
        if (params.get("startTime") != null) {
            queryWrapper.gt("create_time", params.get("startTime"));
        }
        if (params.get("endTime") != null) {
            queryWrapper.lt("create_time", params.get("endTime"));
        }
        queryWrapper.orderByDesc("create_time");
        return queryWrapper;
    }

    /**
     * 新增订单管理
     */
    @ApiOperation(value = "新增订单管理数据")
    @SysLog("新增订单管理数据")
    @PostMapping("/save")
    public R save(@RequestBody SystemOrder systemOrder) {
        systemOrder.setCreateTime(new Date());
        systemOrder.setCreateBy(getUserId());
        systemOrder.setUpdateTime(new Date());
        systemOrder.setUpdateBy(getUserId());
        systemOrder.setOrderStatus(OrderConstant.SUBMITTING);
        LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
        String id = "DD" + now.format(formatter) ;
        systemOrder.setId(id);
        systemOrderService.save(systemOrder);
        return R.ok();
    }


    /**
     * 修改
     */
    @ApiOperation(value = "修改订单管理数据")
    @SysLog("修改订单管理数据")
    @PutMapping("/update")
    public R update(@RequestBody OrderDto orderDto) {
        SystemOrder systemOrder = new SystemOrder();
        BeanUtil.copyProperties(orderDto, systemOrder);
        systemOrder.setUpdateTime(new Date());
        systemOrder.setUpdateBy(getUserId());
        systemOrderService.updateById(systemOrder);
        return R.ok();
    }


    /**
     * 删除
     */
    @ApiOperation(value = "删除订单管理数据")
    @SysLog("删除订单管理数据")
    @DeleteMapping("/delete")
    public R delete(@RequestBody OrderDto orderDto) {
        systemOrderService.removeById(orderDto.getId());
        return R.ok();
    }

    /**
     * 发货
     */
    @ApiOperation(value = "订单设置发货")
    @SysLog("订单设置发货")
    @PutMapping("/updateStatus")
    public R updateStatus(@RequestBody SystemOrder systemOrder) {
        systemOrder.setUpdateTime(new Date());
        systemOrder.setUpdateBy(getUserId());
        systemOrder.setOrderStatus(OrderConstant.COMPLETED);
        systemOrderService.updateById(systemOrder);
        return R.ok();
    }


    /**
     * 个人业绩
     */
    @ApiOperation(value = "个人业绩")
    @SysLog("个人业绩")
    @PostMapping("/userPerformance")
    public R userPerformance(@RequestBody QueryOrderDto queryOrderDto) {
        queryOrderDto.setUserId(getUserId());
        return R.ok().setData(systemOrderService.userPerformance(queryOrderDto));
    }

    @ApiOperation(value = "订单详情")
    @SysLog("订单详情")
    @GetMapping("/detail/{id}")
    public R detail(@PathVariable("id") String id) {
        Optional<SystemOrder> optById = systemOrderService.getOptById(id);
        return R.ok().setData(optById.get());
    }

    @ApiOperation(value = "下载订单图档")
    @SysLog("下载订单图档")
    @GetMapping("/downLoad/{id}")
    public R downLoad(@PathVariable("id") String id) {
        return R.ok().setData(systemOrderService.downLoad(id));
    }


}

package com.suke.czx.modules.custom.controller;

import java.util.Date;
import java.util.Map;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import org.springframework.web.bind.annotation.*;
import com.suke.czx.modules.custom.entity.SystemCustomInfo;
import com.suke.czx.modules.custom.service.SystemCustomInfoService;
import com.suke.zhjg.common.autofull.util.R;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import com.suke.czx.common.annotation.SysLog;
import com.suke.czx.common.base.AbstractController;


/**
 * 客户管理
 *
 * @author zwz
 * @email 602459150@qq.com
 * @date 2024-10-26 00:58:55
 */
@RestController
@AllArgsConstructor
@RequestMapping("/custom/info")
@Api(value = "SystemCustomInfoController", tags = "客户管理")
public class SystemCustomInfoController extends AbstractController {
    private final SystemCustomInfoService systemCustomInfoService;

    /**
     * 列表
     */
    @ApiOperation(value = "客户管理列表")
    @GetMapping("/list")
    public R list(@RequestParam Map<String, Object> params) {
        //查询列表数据
        QueryWrapper<SystemCustomInfo> queryWrapper = new QueryWrapper<>();
        final String keyword = mpPageConvert.getKeyword(params);
        if (StrUtil.isNotEmpty(keyword)) {
            queryWrapper.like("custom_name", keyword);
        }
        IPage<SystemCustomInfo> listPage = systemCustomInfoService.page(mpPageConvert.<SystemCustomInfo>pageParamConvert(params), queryWrapper);
        return R.ok().setData(listPage);
    }


    /**
     * 新增客户管理
     */
    @ApiOperation(value = "新增客户管理数据")
    @SysLog("新增客户管理数据")
    @PostMapping("/save")
    public R save(@RequestBody SystemCustomInfo systemCustomInfo) {
        systemCustomInfo.setCreateTime(new Date());
        systemCustomInfo.setCreateBy(getUserId());
        systemCustomInfo.setUpdateTime(new Date());
        systemCustomInfo.setUpdateBy(getUserId());
        systemCustomInfoService.save(systemCustomInfo);
        return R.ok();
    }


    /**
     * 修改
     */
    @ApiOperation(value = "修改客户管理数据")
    @SysLog("修改客户管理数据")
    @PutMapping("/update")
    public R update(@RequestBody SystemCustomInfo systemCustomInfo) {
        systemCustomInfo.setUpdateTime(new Date());
        systemCustomInfo.setUpdateBy(getUserId());
        systemCustomInfoService.updateById(systemCustomInfo);
        return R.ok();
    }


    /**
     * 删除
     */
    @ApiOperation(value = "删除客户管理数据")
    @SysLog("删除客户管理数据")
    @DeleteMapping("/delete")
    public R delete(@RequestBody SystemCustomInfo systemCustomInfo) {
        systemCustomInfoService.removeById(systemCustomInfo.getId());
        return R.ok();
    }

}

package com.suke.czx.modules.supplier.controller;

import java.util.Map;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import org.springframework.web.bind.annotation.*;
import com.suke.czx.modules.supplier.entity.SystemSupplier;
import com.suke.czx.modules.supplier.service.SystemSupplierService;
import com.suke.zhjg.common.autofull.util.R;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import com.suke.czx.common.annotation.SysLog;
import com.suke.czx.common.base.AbstractController;


/**
 * @author zwz
 * @email 602459150@qq.com
 * @date 2024-11-25 16:55:59
 */
@RestController
@AllArgsConstructor
@RequestMapping("/supplier/")
@Api(value = "SystemSupplierController", tags = "")
public class SystemSupplierController extends AbstractController {
    private final SystemSupplierService systemSupplierService;

    /**
     * 列表
     */
    @ApiOperation(value = "列表")
    @GetMapping("/list")
    public R list(@RequestParam Map<String, Object> params) {
        //查询列表数据
        QueryWrapper<SystemSupplier> queryWrapper = new QueryWrapper<>();
        final String keyword = mpPageConvert.getKeyword(params);
        if (StrUtil.isNotEmpty(keyword)) {
            queryWrapper.like("name", keyword);
        }
        IPage<SystemSupplier> listPage = systemSupplierService.page(mpPageConvert.<SystemSupplier>pageParamConvert(params), queryWrapper);
        return R.ok().setData(listPage);
    }


    /**
     * 新增
     */
    @ApiOperation(value = "新增数据")
    @SysLog("新增数据")
    @PostMapping("/save")
    public R save(@RequestBody SystemSupplier systemSupplier) {
        systemSupplierService.save(systemSupplier);
        return R.ok();
    }


    /**
     * 修改
     */
    @ApiOperation(value = "修改数据")
    @SysLog("修改数据")
    @PostMapping("/update")
    public R update(@RequestBody SystemSupplier systemSupplier) {
        systemSupplierService.updateById(systemSupplier);
        return R.ok();
    }


    /**
     * 删除
     */
    @ApiOperation(value = "删除数据")
    @SysLog("删除数据")
    @PostMapping("/delete")
    public R delete(@RequestBody SystemSupplier systemSupplier) {
        systemSupplierService.removeById(systemSupplier.getId());
        return R.ok();
    }

}

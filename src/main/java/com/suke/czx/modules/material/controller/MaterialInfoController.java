package com.suke.czx.modules.material.controller;

import java.util.Date;
import java.util.Map;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import org.springframework.web.bind.annotation.*;
import com.suke.czx.modules.material.entity.MaterialInfo;
import com.suke.czx.modules.material.service.MaterialInfoService;
import com.suke.zhjg.common.autofull.util.R;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import com.suke.czx.common.annotation.SysLog;
import com.suke.czx.common.base.AbstractController;


/**
 * 材料管理
 *
 * @author zwz
 * @email 602459150@qq.com
 * @date 2024-10-25 22:36:28
 */
@RestController
@AllArgsConstructor
@RequestMapping("/material/info")
@Api(value = "MaterialInfoController", tags = "材料管理")
public class MaterialInfoController extends AbstractController {
    private final MaterialInfoService materialInfoService;

    /**
     * 列表
     */
    @ApiOperation(value = "材料管理列表")
    @GetMapping("/list")
    public R list(@RequestParam Map<String, Object> params) {
        //查询列表数据
        QueryWrapper<MaterialInfo> queryWrapper = new QueryWrapper<>();
        final String keyword = mpPageConvert.getKeyword(params);
        if (StrUtil.isNotEmpty(keyword)) {
            queryWrapper.like("name", keyword);
        }
        IPage<MaterialInfo> listPage = materialInfoService.page(mpPageConvert.<MaterialInfo>pageParamConvert(params), queryWrapper);
        return R.ok().setData(listPage);
    }


    /**
     * 新增材料管理
     */
    @ApiOperation(value = "新增材料管理数据")
    @SysLog("新增材料管理数据")
    @PostMapping("/save")
    public R save(@RequestBody MaterialInfo materialInfo) {
        materialInfo.setCreateTime(new Date());
        materialInfo.setCreateBy(getUserId());
        materialInfo.setUpdateTime(new Date());
        materialInfo.setUpdateBy(getUserId());
        materialInfoService.save(materialInfo);
        return R.ok();
    }


    /**
     * 修改
     */
    @ApiOperation(value = "修改材料管理数据")
    @SysLog("修改材料管理数据")
    @PutMapping("/update")
    public R update(@RequestBody MaterialInfo materialInfo) {
        materialInfo.setUpdateBy(getUserId());
        materialInfo.setUpdateTime(new Date());
        materialInfoService.updateById(materialInfo);
        return R.ok();
    }


    /**
     * 删除
     */
    @ApiOperation(value = "删除材料管理数据")
    @SysLog("删除材料管理数据")
    @DeleteMapping("/delete")
    public R delete(@RequestBody MaterialInfo materialInfo) {
        materialInfoService.removeById(materialInfo.getId());
        return R.ok();
    }

}

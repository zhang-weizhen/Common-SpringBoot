package com.suke.czx.modules.order.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.suke.czx.common.exception.RRException;
import com.suke.czx.common.utils.UserUtil;
import com.suke.czx.modules.order.constant.OrderConstant;
import com.suke.czx.modules.order.dto.QueryOrderDto;
import com.suke.czx.modules.order.dto.UserPerformanceDto;
import com.suke.czx.modules.order.entity.SystemOrder;
import com.suke.czx.modules.order.mapper.SystemOrderMapper;
import com.suke.czx.modules.order.service.SystemOrderService;
import com.suke.czx.modules.oss.cloud.ICloudStorage;
import com.suke.czx.modules.oss.entity.SysOss;
import com.suke.czx.modules.oss.service.SysOssService;
import com.suke.czx.modules.sys.entity.SysRole;
import com.suke.czx.modules.sys.entity.SysUser;
import com.suke.czx.modules.sys.entity.SysUserRole;
import com.suke.czx.modules.sys.service.SysRoleService;
import com.suke.czx.modules.sys.service.SysUserRoleService;
import com.suke.czx.modules.sys.service.SysUserService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;


/**
 * 订单管理
 *
 * @author zwz
 * @email 602459150@qq.com
 * @date 2024-10-26 14:22:27
 */
@Service
public class SystemOrderServiceImpl extends ServiceImpl<SystemOrderMapper, SystemOrder> implements SystemOrderService {
    @Autowired
    private SystemOrderMapper systemOrderMapper;
    @Autowired
    SysOssService sysOssService;
    @Autowired
    private ICloudStorage iCloudStorage;
    @Autowired
    private SysUserService sysUserService;
    @Autowired
    private SysRoleService sysRoleService;
    @Autowired
    private SysUserRoleService sysUserRoleService;
    @Override
    public List<UserPerformanceDto> userPerformance(QueryOrderDto queryOrderDto) throws RRException {

        if (queryOrderDto.getStartTime() == null) {
            throw new RRException("开始时间不能为空");
        }
        if (queryOrderDto.getEndTime() == null) {
            throw new RRException("结束时间不能为空");
        }
        return systemOrderMapper.getUserPerformance(queryOrderDto);
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public SysOss downLoad(String id) {
        SystemOrder sysOrder = this.getById(id);
        if (StringUtils.isEmpty(sysOrder.getWordAttachment())) {
            throw new RRException("图档为空或者不存在");
        }
        SysOss sysOss = sysOssService.getById(sysOrder.getWordAttachment());
        sysOss.setUrl(iCloudStorage.getUrl(sysOss));
        String userId = UserUtil.getUserId();
        SysUser user = sysUserService.getById(userId);
        QueryWrapper<SysUserRole> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_id", user.getUserId());
        List<SysUserRole> list = sysUserRoleService.list(queryWrapper);
        List<Long> roleIdList = list.stream().map(SysUserRole::getRoleId).collect(Collectors.toList());
        List<SysRole> sysRoles = sysRoleService.listByIds(roleIdList);
        sysRoles.forEach(role -> {
            if (role.getRoleName().contains("工程师")) {
                sysOrder.setDownloader(user.getUserId());
                sysOrder.setDownloaderName(user.getName());
                sysOrder.setOrderStatus(OrderConstant.PRODUCING);
                systemOrderMapper.updateById(sysOrder);
            }
        });
        return sysOss;
    }
}

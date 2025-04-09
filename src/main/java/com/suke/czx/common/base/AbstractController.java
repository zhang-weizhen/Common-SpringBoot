package com.suke.czx.common.base;

import cn.hutool.core.collection.CollectionUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.suke.czx.authentication.detail.CustomUserDetailsUser;
import com.suke.czx.common.utils.MPPageConvert;
import com.suke.czx.common.utils.UserUtil;
import com.suke.czx.modules.sys.entity.SysRole;
import com.suke.czx.modules.sys.entity.SysUserRole;
import com.suke.czx.modules.sys.service.SysRoleService;
import com.suke.czx.modules.sys.service.SysUserRoleService;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.stream.Collectors;

/**
 * Controller公共组件
 *
 * @author czx
 * @email object_czx@163.com
 * @date 2016年11月9日 下午9:42:26
 */

public abstract class AbstractController {

	@Autowired
	protected MPPageConvert mpPageConvert;

	@Autowired
	public ObjectMapper objectMapper;
	@Autowired
	protected SysUserRoleService sysUserRoleService;
	@Autowired
	protected SysRoleService sysRoleService;

	protected CustomUserDetailsUser getUser() {
		return UserUtil.getUser();
	}

	@SneakyThrows
	protected String getUserId() {
		return UserUtil.getUserId();
	}

	protected List<SysRole> getUserRole() {
		QueryWrapper<SysUserRole> queryWrapper = new QueryWrapper<>();
		queryWrapper.eq("user_id", getUserId());
		List<SysUserRole> list = sysUserRoleService.list(queryWrapper);
		List<Long> roleIdList = list.stream().map(SysUserRole::getRoleId).collect(Collectors.toList());
		List<SysRole> sysRoles = sysRoleService.listByIds(roleIdList);
		return sysRoles;
	}

	protected boolean isTheRole(String roleId) {
		QueryWrapper<SysUserRole> queryWrapper = new QueryWrapper<>();
		queryWrapper.eq("user_id", getUserId());
		List<SysUserRole> list = sysUserRoleService.list(queryWrapper);
		List<Long> roleIdList = list.stream().map(SysUserRole::getRoleId).collect(Collectors.toList());
		List<SysRole> sysRoles = sysRoleService.listByIds(roleIdList);
		if (CollectionUtil.isEmpty(sysRoles)) {
			return Boolean.FALSE;
		}
        for (SysRole role : sysRoles) {
            if (role.getRoleId().equals(Long.valueOf(roleId))) {
                return Boolean.TRUE;
            }
        }
        return Boolean.FALSE;
	}
}

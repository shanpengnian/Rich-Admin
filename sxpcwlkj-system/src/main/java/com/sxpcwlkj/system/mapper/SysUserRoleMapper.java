package com.sxpcwlkj.system.mapper;

import com.sxpcwlkj.common.core.mapper.BaseMapperPlus;
import com.sxpcwlkj.system.domain.SysUserRole;

import java.util.List;

/**
 * 用户与角色关联表 数据层
 *
 * @author sxpcwlkj
 */
public interface SysUserRoleMapper extends BaseMapperPlus<SysUserRoleMapper, SysUserRole, SysUserRole> {

    List<Long> selectUserIdsByRoleId(Long roleId);

}

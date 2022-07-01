package com.sxpcwlkj.system.service;

import com.sxpcwlkj.common.core.domain.PageQuery;
import com.sxpcwlkj.common.core.page.TableDataInfo;
import com.sxpcwlkj.system.domain.SysOss;
import com.sxpcwlkj.system.domain.bo.SysOssBo;
import com.sxpcwlkj.system.domain.vo.SysOssVo;
import org.springframework.web.multipart.MultipartFile;

import java.util.Collection;

/**
 * 文件上传 服务层
 *
 * @author sxpcwlkj
 */
public interface ISysOssService {

    TableDataInfo<SysOssVo> queryPageList(SysOssBo sysOss, PageQuery pageQuery);

    SysOss getById(Long ossId);

    SysOss upload(MultipartFile file);

    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);

}

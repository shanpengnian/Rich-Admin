package com.sxpcwlkj.web.controller.monitor;

import cn.dev33.satoken.annotation.SaCheckPermission;
import com.sxpcwlkj.common.annotation.Log;
import com.sxpcwlkj.common.core.controller.BaseController;
import com.sxpcwlkj.common.core.domain.R;
import com.sxpcwlkj.common.core.domain.PageQuery;
import com.sxpcwlkj.common.core.page.TableDataInfo;
import com.sxpcwlkj.common.enums.BusinessType;
import com.sxpcwlkj.common.utils.poi.ExcelUtil;
import com.sxpcwlkj.system.domain.SysOperLog;
import com.sxpcwlkj.system.service.ISysOperLogService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 操作日志记录
 *
 * @author sxpcwlkj
 */
@Validated
@Api(value = "操作日志记录", tags = {"操作日志记录管理"})
@RequiredArgsConstructor
@RestController
@RequestMapping("/monitor/operlog")
public class SysOperlogController extends BaseController {

    private final ISysOperLogService operLogService;

    @ApiOperation("查询操作日志记录列表")
    @SaCheckPermission("monitor:operlog:list")
    @GetMapping("/list")
    public TableDataInfo<SysOperLog> list(SysOperLog operLog, PageQuery pageQuery) {
        return operLogService.selectPageOperLogList(operLog, pageQuery);
    }

    @ApiOperation("导出操作日志记录列表")
    @Log(title = "操作日志", businessType = BusinessType.EXPORT)
    @SaCheckPermission("monitor:operlog:export")
    @PostMapping("/export")
    public void export(SysOperLog operLog, HttpServletResponse response) {
        List<SysOperLog> list = operLogService.selectOperLogList(operLog);
        ExcelUtil.exportExcel(list, "操作日志", SysOperLog.class, response);
    }

    @ApiOperation("删除操作日志记录")
    @Log(title = "操作日志", businessType = BusinessType.DELETE)
    @SaCheckPermission("monitor:operlog:remove")
    @DeleteMapping("/{operIds}")
    public R<Void> remove(@PathVariable Long[] operIds) {
        return toAjax(operLogService.deleteOperLogByIds(operIds));
    }

    @ApiOperation("清空操作日志记录")
    @Log(title = "操作日志", businessType = BusinessType.CLEAN)
    @SaCheckPermission("monitor:operlog:remove")
    @DeleteMapping("/clean")
    public R<Void> clean() {
        operLogService.cleanOperLog();
        return R.ok();
    }
}
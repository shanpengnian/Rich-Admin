package com.sxpcwlkj.demo.controller;

import cn.dev33.satoken.annotation.SaCheckPermission;
import com.sxpcwlkj.common.annotation.Log;
import com.sxpcwlkj.common.annotation.RepeatSubmit;
import com.sxpcwlkj.common.core.controller.BaseController;
import com.sxpcwlkj.common.core.domain.R;
import com.sxpcwlkj.common.core.validate.AddGroup;
import com.sxpcwlkj.common.core.validate.EditGroup;
import com.sxpcwlkj.common.core.validate.QueryGroup;
import com.sxpcwlkj.common.enums.BusinessType;
import com.sxpcwlkj.common.utils.poi.ExcelUtil;
import com.sxpcwlkj.demo.domain.bo.TestTreeBo;
import com.sxpcwlkj.demo.domain.vo.TestTreeVo;
import com.sxpcwlkj.demo.service.ITestTreeService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import lombok.RequiredArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.Arrays;
import java.util.List;

/**
 * 测试树表Controller
 *
 * @author sxpcwlkj
 */
@Validated
@Api(value = "测试树表控制器", tags = {"测试树表管理"})
@RequiredArgsConstructor
@RestController
@RequestMapping("/demo/tree")
public class TestTreeController extends BaseController {

    private final ITestTreeService iTestTreeService;

    /**
     * 查询测试树表列表
     */
    @ApiOperation("查询测试树表列表")
    @SaCheckPermission("demo:tree:list")
    @GetMapping("/list")
    public R<List<TestTreeVo>> list(@Validated(QueryGroup.class) TestTreeBo bo) {
        List<TestTreeVo> list = iTestTreeService.queryList(bo);
        return R.ok(list);
    }

    /**
     * 导出测试树表列表
     */
    @ApiOperation("导出测试树表列表")
    @SaCheckPermission("demo:tree:export")
    @Log(title = "测试树表", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public void export(@Validated TestTreeBo bo, HttpServletResponse response) {
        List<TestTreeVo> list = iTestTreeService.queryList(bo);
        ExcelUtil.exportExcel(list, "测试树表", TestTreeVo.class, response);
    }

    /**
     * 获取测试树表详细信息
     */
    @ApiOperation("获取测试树表详细信息")
    @SaCheckPermission("demo:tree:query")
    @GetMapping("/{id}")
    public R<TestTreeVo> getInfo(@ApiParam("测试树ID")
                                          @NotNull(message = "主键不能为空")
                                          @PathVariable("id") Long id) {
        return R.ok(iTestTreeService.queryById(id));
    }

    /**
     * 新增测试树表
     */
    @ApiOperation("新增测试树表")
    @SaCheckPermission("demo:tree:add")
    @Log(title = "测试树表", businessType = BusinessType.INSERT)
    @RepeatSubmit
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody TestTreeBo bo) {
        return toAjax(iTestTreeService.insertByBo(bo) ? 1 : 0);
    }

    /**
     * 修改测试树表
     */
    @ApiOperation("修改测试树表")
    @SaCheckPermission("demo:tree:edit")
    @Log(title = "测试树表", businessType = BusinessType.UPDATE)
    @RepeatSubmit
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody TestTreeBo bo) {
        return toAjax(iTestTreeService.updateByBo(bo) ? 1 : 0);
    }

    /**
     * 删除测试树表
     */
    @ApiOperation("删除测试树表")
    @SaCheckPermission("demo:tree:remove")
    @Log(title = "测试树表", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@ApiParam("测试树ID串")
                                   @NotEmpty(message = "主键不能为空")
                                   @PathVariable Long[] ids) {
        return toAjax(iTestTreeService.deleteWithValidByIds(Arrays.asList(ids), true) ? 1 : 0);
    }
}
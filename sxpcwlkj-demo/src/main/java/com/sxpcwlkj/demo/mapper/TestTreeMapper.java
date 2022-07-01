package com.sxpcwlkj.demo.mapper;

import com.sxpcwlkj.common.annotation.DataColumn;
import com.sxpcwlkj.common.annotation.DataPermission;
import com.sxpcwlkj.common.core.mapper.BaseMapperPlus;
import com.sxpcwlkj.demo.domain.TestTree;
import com.sxpcwlkj.demo.domain.vo.TestTreeVo;

/**
 * 测试树表Mapper接口
 *
 * @author sxpcwlkj
 *
 */
@DataPermission({
    @DataColumn(key = "deptName", value = "dept_id"),
    @DataColumn(key = "userName", value = "user_id")
})
public interface TestTreeMapper extends BaseMapperPlus<TestTreeMapper, TestTree, TestTreeVo> {

}

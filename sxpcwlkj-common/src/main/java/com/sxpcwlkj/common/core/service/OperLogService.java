package com.sxpcwlkj.common.core.service;

import com.sxpcwlkj.common.core.domain.dto.OperLogDTO;
import org.springframework.scheduling.annotation.Async;

/**
 * 通用 操作日志
 *
 * @author sxpcwlkj
 */
public interface OperLogService {

    @Async
    void recordOper(OperLogDTO operLogDTO);
}

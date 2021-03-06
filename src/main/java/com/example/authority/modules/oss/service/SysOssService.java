/**
 * Copyright (c) 2018 人人开源 All rights reserved.
 *
 * https://www.renren.io
 *
 * 版权所有，侵权必究！
 */

package com.example.authority.modules.oss.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.authority.common.page.PageData;
import com.example.authority.common.service.BaseService;
import com.example.authority.modules.oss.entity.SysOssEntity;

import java.util.Map;

/**
 * 文件上传
 * 
 * @author Mark sunlightcs@gmail.com
 */
public interface SysOssService extends BaseService<SysOssEntity> {
	QueryWrapper<SysOssEntity> getWrapper(Map<String, Object> params);

	PageData<SysOssEntity> page(Map<String, Object> params);
}

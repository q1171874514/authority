/**
 * Copyright (c) 2018 人人开源 All rights reserved.
 *
 * https://www.renren.io
 *
 * 版权所有，侵权必究！
 */

package com.example.authority.modules.oss.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.example.authority.common.constant.Constant;
import com.example.authority.common.page.PageData;
import com.example.authority.common.service.impl.BaseServiceImpl;
import com.example.authority.modules.oss.dao.SysOssDao;
import com.example.authority.modules.oss.entity.SysOssEntity;
import com.example.authority.modules.oss.service.SysOssService;
import com.example.authority.modules.test.entity.TestEntity;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.Map;


@Service
public class SysOssServiceImpl extends BaseServiceImpl<SysOssDao, SysOssEntity> implements SysOssService {
	@Override
	public QueryWrapper<SysOssEntity> getWrapper(Map<String, Object> params) {
		QueryWrapper<SysOssEntity> wrapper = new QueryWrapper<>();
		String id = (String)params.get("id");
		String creatorName = (String)params.get("creatorName");
		wrapper.eq(StringUtils.isNotBlank(id),"id", id)
				.eq(StringUtils.isNoneBlank(creatorName), "creator_name", creatorName);
		return wrapper;
	}

	@Override
	public PageData<SysOssEntity> page(Map<String, Object> params) {
		IPage<SysOssEntity> page = baseDao.selectPage(
			getPage(params, Constant.CREATE_DATE, false),
				getWrapper(params)
		);
		return getPageData(page, SysOssEntity.class);
	}
}

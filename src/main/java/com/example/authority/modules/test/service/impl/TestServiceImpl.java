package com.example.authority.modules.test.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.authority.common.service.impl.CrudServiceImpl;
import com.example.authority.modules.test.dao.TestDao;
import com.example.authority.modules.test.dto.TestDTO;
import com.example.authority.modules.test.entity.TestEntity;
import com.example.authority.modules.test.service.TestService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class TestServiceImpl extends CrudServiceImpl<TestDao, TestEntity, TestDTO> implements TestService {
    @Override
    public QueryWrapper<TestEntity> getWrapper(Map<String, Object> params) {
        QueryWrapper<TestEntity> wrapper = new QueryWrapper<>();
        String id = (String)params.get("id");
        wrapper.eq(StringUtils.isNotBlank(id),"id", id);
        return wrapper;
    }
}

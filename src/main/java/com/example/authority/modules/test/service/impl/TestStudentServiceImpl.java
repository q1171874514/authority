package com.example.authority.modules.test.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.authority.common.service.impl.CrudServiceImpl;
import com.example.authority.common.service.impl.OutFieldServiceImpl;
import com.example.authority.modules.test.dao.TestStudentDao;
import com.example.authority.modules.test.dto.TestStudentDTO;
import com.example.authority.modules.test.entity.TestEntity;
import com.example.authority.modules.test.entity.TestStudentEntity;
import com.example.authority.modules.test.service.TestStudentService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.Map;
@Service
public class TestStudentServiceImpl extends OutFieldServiceImpl<TestStudentDao, TestStudentEntity, TestStudentDTO> implements TestStudentService{
    @Override
    public QueryWrapper<TestStudentEntity> getWrapper(Map<String, Object> params) {
        QueryWrapper<TestStudentEntity> wrapper = new QueryWrapper<>();
        String id = (String)params.get("id");
        wrapper.eq(StringUtils.isNotBlank(id),"id", id);
        return wrapper;
    }
}

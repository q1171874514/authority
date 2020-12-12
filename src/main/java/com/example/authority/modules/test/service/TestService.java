package com.example.authority.modules.test.service;

import com.example.authority.common.service.CrudService;
import com.example.authority.modules.test.dto.TestDto;
import com.example.authority.modules.test.entity.TestEntity;

import java.util.List;

public interface TestService extends CrudService<TestEntity, TestDto> {
    List<TestDto> listData();
}

package com.example.authority.modules.test.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.authority.modules.test.entity.TestEntity;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TestDao extends BaseMapper<TestEntity> {

}

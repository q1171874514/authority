package com.example.authority.modules.test.dao;

import com.example.authority.common.dao.OutFieldDao;
import com.example.authority.modules.test.entity.TestStudentEntity;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TestStudentDao extends OutFieldDao<TestStudentEntity> {

}

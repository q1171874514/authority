package com.example.authority.modules.test.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.example.authority.common.entity.CrudEntity;
import lombok.Data;

@Data
@TableName("test")
public class TestEntity extends CrudEntity {
    private String name;
    private String op;
}

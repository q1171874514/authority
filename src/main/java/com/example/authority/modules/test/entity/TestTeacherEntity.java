package com.example.authority.modules.test.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("test_teacher")
public class TestTeacherEntity {
    @TableId
    private Long id;
    private String name;
}

package com.example.authority.modules.test.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("test_student")
public class TestStudentEntity {
    @TableId
    private Long id;

    private String name;

    private Long teacherId;
}

package com.example.authority.modules.test.dto;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.example.authority.common.annotation.OutTablesField;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.Date;

@Data
public class TestStudentDTO {
    private Long id;

    private String name;

    private Long teacherId;

    @OutTablesField(foreignKey = "teacherId", outTableName = "test_teacher", outField = "name")
    private String teacherName;

    private Date createDate;

    private Date updateDate;
}

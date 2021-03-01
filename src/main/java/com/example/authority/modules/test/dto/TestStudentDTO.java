package com.example.authority.modules.test.dto;

import com.example.authority.common.annotation.OutTablesField;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class TestStudentDTO {
    private Long id;

    private String name;

    private Long teacherId;

    @OutTablesField(foreignKey = "teacherId", outTableName = "test_teacher", outField = "name")
    private String teacherName;

    @OutTablesField(foreignKey = "teacherId", outTableName = "test_teacher", outField = "id")
    private Long teacherIds;
}

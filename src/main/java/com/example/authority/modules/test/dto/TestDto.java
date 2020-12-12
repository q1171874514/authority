package com.example.authority.modules.test.dto;

import com.example.authority.common.dto.CrudDto;
import lombok.Data;

import java.util.List;

@Data
public class TestDto extends CrudDto {
    /**
     * 名字
     */
    private String name;

    private List<String> op;
}

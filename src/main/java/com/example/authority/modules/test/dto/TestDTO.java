package com.example.authority.modules.test.dto;

import com.example.authority.common.validator.group.AddGroup;
import lombok.Data;

import javax.validation.constraints.NotNull;
import java.util.Date;
import java.util.List;

@Data
public class TestDTO {
    /**
     * id
     */
    private Long id;

    @NotNull(groups = AddGroup.class, message = "name不能为空")
    private String name;

    private List<Integer> op;
    /**
     * 更新者
     */
    private Long updater;
    /**
     * 更新时间
     */
    private Date updateDate;
    /**
     * 创建者
     */
    private Long  creator;
    /**
     * 创建时间
     */
    private Date createDate;
}
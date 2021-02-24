package com.example.authority.modules.test.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.example.authority.common.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
@TableName("test")
public class TestEntity extends BaseEntity {
    private String name;
    private List<Integer> op;

    /**
     * 更新者
     */
//    @TableField(fill = FieldFill.INSERT)
    private Long updater;
    /**
     * 更新时间
     */
//    @TableField(fill = FieldFill.INSERT)
    private Date updateDate;
}

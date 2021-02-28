package com.example.authority.modules.test.controller;

import com.example.authority.common.exception.ErrorCode;
import com.example.authority.common.exception.RenException;
import com.example.authority.common.utils.MessageUtils;
import com.example.authority.common.utils.Result;
import com.example.authority.common.validator.ValidatorUtils;
import com.example.authority.common.validator.group.AddGroup;
import com.example.authority.modules.test.dto.TestDTO;
import com.example.authority.modules.test.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("test")
public class TestController {
    @Autowired
    private TestService testService;

    @GetMapping("list")
    public Result list(@RequestParam Map<String, Object> params){
        List<TestDTO> list = testService.list(params);
        return new Result().ok(list);
    }

    @PostMapping
    public Result save(@RequestBody TestDTO testDTO) {
        ValidatorUtils.validateEntity(testDTO, AddGroup.class);
        testService.save(testDTO);
        return new Result();
    }
}

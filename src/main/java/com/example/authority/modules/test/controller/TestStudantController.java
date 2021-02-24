package com.example.authority.modules.test.controller;

import com.example.authority.common.utils.Result;
import com.example.authority.modules.test.dto.TestDTO;
import com.example.authority.modules.test.dto.TestStudentDTO;
import com.example.authority.modules.test.service.TestStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("test/studant")
public class TestStudantController {
    @Autowired
    private TestStudentService testStudentService;

    @GetMapping("list")
    public Result list(@RequestParam Map<String, Object> params){
        List<TestStudentDTO> list = testStudentService.list(params);
        return new Result().ok(list);
    }

    @PostMapping
    public Result save(@RequestBody TestStudentDTO dto) {
        testStudentService.save(dto);
        return new Result();
    }
}

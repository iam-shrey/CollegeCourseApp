package com.mycollege.college_app.controller;

import com.mycollege.college_app.model.College;
import com.mycollege.college_app.model.Course;
import com.mycollege.college_app.model.CourseFee;
import com.mycollege.college_app.service.CollegeService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("api")
public class CollegeController {

    private CollegeService collegeService;

    public CollegeController(CollegeService collegeService) {
        this.collegeService = collegeService;
    }

    @GetMapping("colleges")
    public ResponseEntity<List<College>> getColleges() {
        return collegeService.getAllColleges();
    }
}
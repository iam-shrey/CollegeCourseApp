package com.mycollege.college_app.service;

import com.mycollege.college_app.dao.CollegeDao;
import com.mycollege.college_app.dao.CourseDao;
import com.mycollege.college_app.dao.CourseFeeDao;
import com.mycollege.college_app.model.College;
import com.mycollege.college_app.model.Course;
import com.mycollege.college_app.model.CourseFee;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import javax.swing.text.html.parser.Entity;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class CollegeService {

    private CollegeDao collegeDao;

    public CollegeService(CollegeDao collegeDao) {
        this.collegeDao = collegeDao;
    }

    public ResponseEntity<List<College>> getAllColleges() {
        return new ResponseEntity<>(collegeDao.findAll(), HttpStatus.OK);
    }

}

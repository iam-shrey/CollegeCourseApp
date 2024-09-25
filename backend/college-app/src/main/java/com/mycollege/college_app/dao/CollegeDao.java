package com.mycollege.college_app.dao;

import com.mycollege.college_app.model.College;
import com.mycollege.college_app.model.Course;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CollegeDao extends JpaRepository<College, Integer> {
}
package com.mycollege.college_app.dao;

import com.mycollege.college_app.model.CourseFee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CourseFeeDao extends JpaRepository<CourseFee, Integer> {
}

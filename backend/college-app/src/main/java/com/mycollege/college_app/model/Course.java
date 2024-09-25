package com.mycollege.college_app.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class Course {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String name;
    private String duration;

    @OneToOne
    private CourseFee courseFee;
}

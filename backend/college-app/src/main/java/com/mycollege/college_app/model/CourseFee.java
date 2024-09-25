package com.mycollege.college_app.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class CourseFee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private Integer fee;

}
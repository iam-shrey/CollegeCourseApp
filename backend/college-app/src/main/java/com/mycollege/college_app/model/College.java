package com.mycollege.college_app.model;

import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Entity
@Data
public class College {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String name;
    private String accommodationType; // AC/Non-AC
    private Integer accommodationFee;

    @OneToMany
    private List<Course> courses;
}

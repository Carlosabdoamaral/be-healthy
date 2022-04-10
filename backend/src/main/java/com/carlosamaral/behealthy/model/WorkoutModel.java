package com.carlosamaral.behealthy.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import org.apache.catalina.User;

import java.util.Date;
import java.util.List;

@Entity
public class WorkoutModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long workout_id;

    Long user_id;

    @NotNull
    String category;

    @NotNull
    String title;

    @NotNull
    Double distance;

    @NotNull
    Date date;

    public Long getWorkout_id() {
        return workout_id;
    }
    public void setWorkout_id(Long workout_id) {
        this.workout_id = workout_id;
    }
    public String getCategory() {
        return category;
    }
    public void setCategory(String category) {
        this.category = category;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public Double getDistance() {
        return distance;
    }
    public void setDistance(Double distance) {
        this.distance = distance;
    }
    public Date getDate() {
        return date;
    }
    public Long getUser_id() {
        return user_id;
    }
    public void setUser_id(Long user_id) {
        this.user_id = user_id;
    }
    public void setDate(Date date) {
        this.date = date;
    }
}

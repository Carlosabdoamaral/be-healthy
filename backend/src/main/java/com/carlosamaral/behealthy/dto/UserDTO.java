package com.carlosamaral.behealthy.dto;

import com.carlosamaral.behealthy.model.UserModel;
import com.carlosamaral.behealthy.model.WorkoutModel;

import java.util.List;

public class UserDTO {
    UserModel user;
    List<WorkoutModel> workouts;

    public UserModel getUser() {
        return user;
    }

    public List<WorkoutModel> getWorkouts() {
        return workouts;
    }
}

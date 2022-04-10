package com.carlosamaral.behealthy.controller;

import com.carlosamaral.behealthy.model.WorkoutModel;
import com.carlosamaral.behealthy.repository.WorkoutRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/workouts")
@CrossOrigin
public class WorkoutController {

    @Autowired
    private WorkoutRepository _workoutRepository;

    @GetMapping("/all")
    List<WorkoutModel> allWorkouts() {
        return _workoutRepository.findAll();
    }

    @PostMapping("/new")
    HttpStatus newWorkout(@RequestBody WorkoutModel w) {

        try {
            _workoutRepository.save(w);
            return HttpStatus.CREATED;
        } catch (Error e) {
            return HttpStatus.INTERNAL_SERVER_ERROR;
        }
    }
}

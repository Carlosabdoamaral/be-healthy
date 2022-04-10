package com.carlosamaral.behealthy.repository;

import com.carlosamaral.behealthy.model.WorkoutModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface WorkoutRepository extends JpaRepository<WorkoutModel, Long> {

}

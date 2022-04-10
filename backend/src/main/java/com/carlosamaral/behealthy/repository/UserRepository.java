package com.carlosamaral.behealthy.repository;

import com.carlosamaral.behealthy.dto.UserDTO;
import com.carlosamaral.behealthy.model.UserModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<UserModel, Long> {
    @Query(value = "SELECT * FROM workout_model INNER JOIN user_model um on um.user_id = workout_model.user_user_id", nativeQuery = true)
    UserDTO allUsers();
}

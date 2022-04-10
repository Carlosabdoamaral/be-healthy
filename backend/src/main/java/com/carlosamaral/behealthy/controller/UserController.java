package com.carlosamaral.behealthy.controller;

import com.carlosamaral.behealthy.model.UserModel;
import com.carlosamaral.behealthy.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@CrossOrigin
@RestController
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserRepository _userRepository;

    @GetMapping("/all")
    public List<UserModel> userModelList() {
        return _userRepository.findAll();
    }

    @GetMapping("/{id}")
    public Optional<UserModel> userById(@PathVariable Long id) {
        return _userRepository.findById(id);
    }

    @PostMapping("/new")
    public HttpStatus newUser(@RequestBody UserModel u) {
        try {
            _userRepository.save(u);
            return HttpStatus.CREATED;
        } catch (Error e){
            return HttpStatus.INTERNAL_SERVER_ERROR;
        }
    }
}

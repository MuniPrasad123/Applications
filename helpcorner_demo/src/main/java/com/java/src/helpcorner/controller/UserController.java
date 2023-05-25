package com.java.src.helpcorner.controller;

import java.util.List;
import java.util.UUID;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.java.src.helpcorner.model.User;
import com.java.src.helpcorner.service.UserService;

@RestController
@RequestMapping("/helpcorner")
public class UserController {
    @Autowired
    private UserService userService;

    @PostMapping("/createUser")
    @ResponseStatus(HttpStatus.CREATED)
    public User createUsers(@RequestBody User user){
        user.setId(UUID.randomUUID().toString());
        return userService.createUser(user);
    }

    @GetMapping("/fetchUserByType")
    public  List<User> fetchUsersByType (@RequestParam("location") String location,
                              @RequestParam("userType")  String userType) {
        return userService.fetchUsersByType(location, userType);
    }

    @GetMapping("/fetchUserDistributor")
    public  void fetchDistributorFromIOT (@RequestParam("location") String location,
                              @RequestParam("userType")  String userType) {
        userService.fetchDistributorFromIOT(location, userType);
    }

    @PostMapping("/sendMessageToDonar")
    public  void sendMessageToDonar (@RequestBody User user) {
        userService.sendMessageToDonar(user);
    }

    @PostMapping("/sendMessageToDistributor")
    public  void sendMessageToDistributor (@RequestBody User user) {
        userService.sendMessageToDistributor(user);
    }


    @GetMapping("/fetchUserByPhone")
    public  List<User> fetchUserByName (@RequestParam("location") String location,
                              @RequestParam("userType")  String userType, @RequestParam("phone") String phone) {
        return userService.fetchUsersByPhone(location, userType, phone);
    }

}

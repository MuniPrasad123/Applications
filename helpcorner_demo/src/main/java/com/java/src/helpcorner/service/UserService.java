package com.java.src.helpcorner.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.src.helpcorner.model.User;
import com.java.src.helpcorner.repository.UserRepository;
import com.java.src.helpcorner.twilio.TwilioHelper;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepo;
    @Autowired
    private TwilioHelper twilio;

    //registration 
    public User createUser(User userDetails) {
        return userRepo.save(userDetails);
    }

    //login
    public List<User> getUser(User userDetails){
        return userRepo.findAll();
    }

    // fetch  Users By Type

    public List<User> fetchUsersByType (String location, String userType) {
        return userRepo.findByLocationAndUserType(location,userType);
    }

    public void  fetchDistributorFromIOT (String location, String userType) {
        List<User> userResponse= userRepo.findByLocationAndUserType(location,userType);
        User user = userResponse.get(0);
        if(null != user){
            System.out.println(user.getPhone());
            twilio.sendMessage(user.getPhone(), user.getLocation());
        }else {
            System.out.println("No phone number recieved");
        }
        
    }

    public void  sendMessageToDonar (User user) {
        if(null != user){
            System.out.println(user.getPhone());
            twilio.sendMessageToDonar(user);
        }else {
            System.out.println("No phone number recieved to sendMessageToDonar");
        }
        
    }

    public void  sendMessageToDistributor (User user) {
        if(null != user){
            System.out.println(user.getPhone());
            twilio.sendMessageToDistributor(user);
        }else {
            System.out.println("No phone number recieved to sendMessageToDistributor");
        }
        
    }

    public List<User> fetchUsersByPhone (String location, String userType, String phone) {
        return userRepo.findByLocationAndUserTypeAndPhone(location,userType,phone);
    }
}

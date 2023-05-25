package com.java.src.helpcorner.firebase.controller;
import com.google.firebase.messaging.FirebaseMessagingException;
import com.java.src.helpcorner.firebase.pojo.Note;
import com.java.src.helpcorner.firebase.service.FirebaseMessagingService;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class FirebaseController {

    private final FirebaseMessagingService firebaseService;

    public FirebaseController(FirebaseMessagingService firebaseService) {
        this.firebaseService = firebaseService;
    }

    @RequestMapping("/send-notification")
    @ResponseBody
    public String sendPushMessage(@RequestBody Note note, @RequestParam String token){
            try {
                return firebaseService.sendNotification(note, token);
            } catch (FirebaseMessagingException e) {
                e.printStackTrace();
            }
            return "completed successfully";
    } 
}

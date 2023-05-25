package com.java.src.helpcorner.twilio;
import com.java.src.helpcorner.model.User;
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;

import java.net.URI;
import java.util.Arrays;

import org.springframework.stereotype.Service;
@Service
public class TwilioHelper {
    
  public void sendMessage(String recieverPhone, String Location){
    
    String loginLink = "helpcorner://helpcorner.com/login"; 
    Twilio.init("AC6be75e75cfda9ce7ab492ca1ad7aa777", "6b39bcf647403e49f06e71d6e0c88477");
    Message message = Message.creator(
            new com.twilio.type.PhoneNumber("+"+recieverPhone),
            new com.twilio.type.PhoneNumber("+12542766859"),
            "IOT Notification Recieved from : " +Location +"  Location \n\n Please Kindly Click on Here \n\n "+loginLink+ "\n\n")
        .setMediaUrl(
            Arrays.asList(URI.create("https://www.shutterstock.com/image-photo/hand-give-food-hands-beggar-260nw-674296993.jpg")))
        .create();

    System.out.println(message.getSid());
}

public void sendMessageToDonar(User user){
    
    String loginLink = "helpcorner://helpcorner.com/donarAcceptPage"; 
    Twilio.init("AC6be75e75cfda9ce7ab492ca1ad7aa777", "6b39bcf647403e49f06e71d6e0c88477");
    Message message = Message.creator(
            new com.twilio.type.PhoneNumber("+"+user.getPhone()),
            new com.twilio.type.PhoneNumber("+12542766859"),
            "Alert !! \n\n Notification Recieved from distributor: " +user.getLocation() +"  Location \n\n" 
            + "Need " +user.getQty() +  "  quantities amount of food." 
            +"\n\n Please Kindly Click on Here to redirect APP \n\n "+loginLink+ "\n\n")
        .setMediaUrl(
            Arrays.asList(URI.create("https://www.shutterstock.com/image-photo/hand-give-food-hands-beggar-260nw-674296993.jpg")))
        .create();

    System.out.println(message.getSid());
}

public void sendMessageToDistributor(User user){
    
    String mapLink = "helpcorner://helpcorner.com/login"; 
    Twilio.init("AC6be75e75cfda9ce7ab492ca1ad7aa777", "6b39bcf647403e49f06e71d6e0c88477");
    Message message = Message.creator(
            new com.twilio.type.PhoneNumber("+"+user.getPhone()),
            new com.twilio.type.PhoneNumber("+12542766859"),
            "Alert !! \n\n Notification Recieved from donar  : " +user.getLocation() +"  Location \n\n Please find the below details " +mapLink+ " \n\n "
            + "Donar name : " +user.getName()+ "\n\n"
            + "Donar phone : " +user.getPhone()+ "\n\n"
            + "Donar location : " +user.getLocation()+ "\n\n"
            + "Donar address : " +user.getAddress()+ "\n\n"
            + "Donar Accepted Food quantity : " +user.getQty()+ "\n\n"
            )
        .setMediaUrl(
            Arrays.asList(URI.create("https://www.shutterstock.com/image-photo/hand-give-food-hands-beggar-260nw-674296993.jpg")))
        .create();

    System.out.println(message.getSid());
}

}
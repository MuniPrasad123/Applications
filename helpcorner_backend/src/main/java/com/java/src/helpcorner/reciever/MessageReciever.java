package com.java.src.helpcorner.reciever;
import org.springframework.cloud.aws.messaging.listener.annotation.SqsListener;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.java.src.helpcorner.model.IOTMessage;

@Service
public class MessageReciever {
    IOTMessage iotMessage;

    @SqsListener("helpcorner-queue")
    public void receive(String message) {
        ObjectMapper mapper = new ObjectMapper();

        // JSON from String to Object
        
        try {
            iotMessage = mapper.readValue(message, IOTMessage.class);
        } catch (JsonMappingException e) {
            e.printStackTrace();
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        final String hostname = "localhost";
        final String uri = "http://" + hostname + ":7000/api/helpcorner/fetchUserDistributor?location="
                + iotMessage.getLocation() + "&userType=" + iotMessage.getNextAction();

        RestTemplate restTemplate = new RestTemplate();
        String result = restTemplate.getForObject(uri, String.class);
        System.out.println("message recieved" + result);

    }

}
package com.java.src.helpcorner.sender;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.aws.messaging.core.QueueMessagingTemplate;
import org.springframework.http.ResponseEntity;
import org.springframework.messaging.Message;
import org.springframework.messaging.support.MessageBuilder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.java.src.helpcorner.model.IOTMessage;

import org.springframework.http.HttpStatus;

@RestController
public class MessageSender {

    @Value("${cloud.aws.end-point.uri}")
    private String endpoint;

    @Autowired
    private QueueMessagingTemplate queueMessagingTemplate;


    @PostMapping("/send/iotMessage")
    @ResponseStatus(HttpStatus.CREATED)
    public ResponseEntity<String> sendIOTMessage(@RequestBody IOTMessage message){
       //Message payload = MessageBuilder.withPayload(message).build();
       this.queueMessagingTemplate.convertAndSend("helpcorner-queue", message);
      // queueMessagingTemplate.send(endpoint, payload);
       return ResponseEntity.ok("Message Sent Successfully!! From IOT device");
    }

    @GetMapping("/send/distributorMessage/{location}")
    public ResponseEntity<String> sendDistributorMessage(@PathVariable(value = "location") String location){
       Message payload = MessageBuilder.withPayload(location).build();
       queueMessagingTemplate.send(endpoint, payload);
       return ResponseEntity.ok("Message Sent Successfully from distributor!");
    }

    @GetMapping("/send/donarMessage/{location}")
    public ResponseEntity<String> sendDonarMessage(@PathVariable(value = "location") String location){
       Message payload = MessageBuilder.withPayload(location).build();
       queueMessagingTemplate.send(endpoint, payload);
       return ResponseEntity.ok("Message Sent Successfully from donar!");
    }
}
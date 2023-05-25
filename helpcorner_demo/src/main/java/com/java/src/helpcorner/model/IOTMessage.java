package com.java.src.helpcorner.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class IOTMessage {

    private String locationId;
    private String latitude;
    private String longitude;
    private String location;
    private String nextAction;
}

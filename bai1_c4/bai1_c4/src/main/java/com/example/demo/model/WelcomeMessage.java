package com.example.demo.model;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class WelcomeMessage {
    private String message;
    private String currentTime;

    public WelcomeMessage(String message) {
        this.message = message;
        this.currentTime = LocalDateTime.now().format(DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss"));
    }

    public String getMessage() {
        return message;
    }

    public String getCurrentTime() {
        return currentTime;
    }
}

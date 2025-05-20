package com.example.demo.controller;

import com.example.demo.model.WelcomeMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WelcomeController {

    @GetMapping("/")
    public String welcome(Model model) {
        WelcomeMessage message = new WelcomeMessage("Chào mừng bạn đến Viết Phóng");
        model.addAttribute("welcome", message);
        return "welcome";
    }
}

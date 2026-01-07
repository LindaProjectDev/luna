package com.ecf.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ApiController {

    // Endpoint de disponibilité (preuve "service up")
    @GetMapping("/hello")
    public String hello() {
        return "Hello from Luna backend";
    }

    // Endpoint API (exemple métier)
    @GetMapping("/api/hello")
    public String apiHello() {
        return "Hello from Luna API";
    }
}

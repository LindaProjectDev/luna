package com.ecf.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WebController {

    @GetMapping("/")
    public String home() {
        return "forward:/index.html";
    }

    @GetMapping("/exploitation")
    public String exploitation() {
        return "forward:/exploitation-luna.html";
    }

    @GetMapping("/supervision")
    public String supervision() {
        return "forward:/supervision-luna.html";
    }
}

package com.example.workshops;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ExampleController {

    @GetMapping("/hello")
    public String hello() {
<<<<<<< Updated upstream
        return "Hello world 3!";
=======
        return "Hello world 4!";
>>>>>>> Stashed changes
    }

}

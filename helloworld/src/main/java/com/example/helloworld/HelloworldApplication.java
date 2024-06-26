package com.example.helloworld;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class HelloworldApplication {

	public static void main(String[] args) {
		SpringApplication.run(HelloworldApplication.class, args);
	}
	@GetMapping("/index")
	public String simpleRequest(){
		return  "200 HTTP RESPONSE";
	}

	@GetMapping("/echo")
	public String echo (@RequestParam(name="query")String param){
		return "Hello " +param ;
	}

}

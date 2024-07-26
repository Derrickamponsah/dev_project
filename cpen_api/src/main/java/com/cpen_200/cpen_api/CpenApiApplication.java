package com.cpen_200.cpen_api;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class CpenApiApplication {
	
	public static void main(String[] args) {
		SpringApplication.run(CpenApiApplication.class, args);
		System.out.println("API Working");
	}

}

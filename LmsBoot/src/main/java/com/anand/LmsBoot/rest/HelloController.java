package com.anand.LmsBoot.rest;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
	
//	private static Logger log = Logger.getLogger(HelloController.class.getName());
	private static Logger log = LoggerFactory.getLogger(HelloController.class);
	
	@GetMapping
	public String sayHello(){
		System.out.println("hello log");
		log.info("logger info");
		log.debug("debug log");	//	not displayed
		return "Hello";
	}

}

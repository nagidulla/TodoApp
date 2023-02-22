package com.springboot.webapps.TodoApp.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HelloController {

	
	@GetMapping("/hello")
	@ResponseBody
	public String hello() {
		return "<h1>Hello</h1>";
	}
	
	
	@GetMapping("/hello-jsp")
	public String helloJsp() {
		return "hello";
	}
	
}

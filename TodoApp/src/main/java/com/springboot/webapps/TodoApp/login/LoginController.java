package com.springboot.webapps.TodoApp.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springboot.webapps.TodoApp.auth.AuthService;

@Controller
public class LoginController {

	@Autowired
	private AuthService authService;

	@GetMapping("login")
	public String getLoginView() {
		return "login";
	}

	@PostMapping("login")
	public String getHomePage(@RequestParam String username, @RequestParam String password, ModelMap model) {

		if (authService.auth(username, password)) {
			
			model.put("name", username);
			model.put("pass", password);
			return "welcome";
		}
		model.put("errorMsg", authService.errorMsg);
		return "login";
	}
}

package system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import system.model.User;
import system.service.UserService;

@RestController
@RequestMapping(value = "/api")
public class ApiController {
	private UserService userService;

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}


	/*Получение юзероа API*/
	@RequestMapping(value = "/user/{id}", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public String getUserData(@PathVariable int id)
	{
		User user = userService.getById(id);
		if (user != null) {
			return user.getJSONString();
		}
		else {
			return "Error: user not found";
		}
	}
}

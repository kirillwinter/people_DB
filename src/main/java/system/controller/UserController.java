package system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import system.model.User;
import system.service.UserService;

import java.util.List;

@Controller
public class UserController {

	private UserService userService;

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	/*Получение списка юзеров*/
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView allUsers(){
		List<User> users = userService.allUsers();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("users");
		modelAndView.addObject("userList", users);
		return modelAndView;
	}

	/*Изменение  GET*/
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET, produces = "application/json")
	public ModelAndView editPage(@PathVariable("id") int id){
		User user = userService.getById(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("editPage");
		modelAndView.addObject("user", userService.getById(id));
		return modelAndView;
	}

	/*Изменение  POST*/
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public ModelAndView editUser(@ModelAttribute("user") User user){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:/");
		userService.edit(user);
		return modelAndView;
	}

	/*Добавление  GET*/
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView addPage(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("editPage");
		return modelAndView;
	}

	/*Добавление  POST*/
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public ModelAndView addUser(@ModelAttribute("user") User user){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:/");
		userService.add(user);
		return modelAndView;
	}

	/*Удаление  POST*/
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView deleteUser(@PathVariable("id") int id){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:/");
		User user = userService.getById(id);
		userService.delete(user);
		return modelAndView;
	}

	/*Сортировка по дате рождения*/
	@RequestMapping(value = "/sort", method = RequestMethod.GET)
	public ModelAndView sortByDateBerth(){
		List<User> users = userService.sortByDateBirth();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("users");
		modelAndView.addObject("userList", users);
		return modelAndView;
	}

}

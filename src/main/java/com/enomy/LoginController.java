package com.enomy;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.enomy.*;
import com.enomy.entity.User;

@Controller
public class LoginController {
	
	@Autowired
	private UserService userService;

    @RequestMapping(value="/login",  method= RequestMethod.GET)
    public String onLogin() {
        return "login";
    }


    @RequestMapping(value="/login_error")
    public ModelAndView onLoginError(Model model) {
      
        ModelAndView mav = new ModelAndView("login");
        String error_msg = "Incorrect username or password. Try Again.";
        model.addAttribute("error_string", error_msg);
		return mav;
		
    }
    
    @RequestMapping(value="/register_form")
	public String registerUserForm(Map<String, Object> model) {
    	System.out.println("Register Controller");
		User user = new User();
		model.put("user", user);

		return "new_user";
	}
    
	@RequestMapping(value = "/register_process", method = RequestMethod.POST)
	public String saveUser(@ModelAttribute("user") User user, Model model) {
		System.out.println("/save Register User Controller");
		userService.save(user);
		String register_success = "<h5> Registeration Successful! </h5>";
		model.addAttribute("register_success", register_success);
		return "new_user";
	}
	
	
    @RequestMapping(value="users",  method= RequestMethod.GET)
    public String viewUsers(Model model) {
        List<User> users = userService.listAll();
        
        System.out.println ("User Lists is "+users.toString());
        if(!CollectionUtils.isEmpty(users)) {
            model.addAttribute("userlists", users);
           System.out.println("User Lists is not empty"); 
        }
        return "all_user";
    }
    
	@RequestMapping("/user_delete")
	public String deleteStoreForm(@RequestParam long id) {
		userService.delete(id);
		return "redirect:/users";		
	}
	
	
	@RequestMapping("/user_edit")
	public ModelAndView editStoreForm(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("edit_user");
		User user = userService.get(id);
		mav.addObject("user", user);
		
		return mav;
	}
	
	
	@GetMapping("/aboutUs")
	public String aboutUs() {
		return "aboutUs";
	}
	
	@GetMapping("/contactUs")
	public String contactUs() {
		return "contactUs";
	}
    
    
}

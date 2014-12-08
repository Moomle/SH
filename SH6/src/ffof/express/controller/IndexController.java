package ffof.express.controller;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import ffof.express.exception.UserException;
import ffof.express.model.User;
import ffof.express.service.IUserService;

@Controller
@SessionAttributes("loginUser")
//@RequestMapping("/admin")
public class IndexController {
	
	private IUserService userService;
	
	public IUserService getUserService() {
		return userService;
	}

	@Resource
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	@RequestMapping(value="/signup", method=RequestMethod.POST)
	@ResponseBody
	public String signup(@Validated User user, BindingResult br){
		if(br.hasErrors()){
			return "su";
		}
		userService.add(user);
		return "redirect:/";
	}
	
	@RequestMapping(value="/signup", params="ajax", method=RequestMethod.POST)
	@ResponseBody
	public String ajaxSignup(String telephone, String name, String password, String location,
			int isAdmin){
		String result = "null";
		User u = new User();
		u.setTelephone(telephone);
		u.setName(name);
		u.setIsAdmin(isAdmin);
		u.setPassword(password);
		u.setLocation(location);
		u.setDate(new Date());
		try{
			userService.add(u);
			result = "success";
		} catch (Exception e){
			e.printStackTrace();
			result = "failed";
		}
		return result;
	}
	
	@RequestMapping(value="/signup/phoneNumexist", method=RequestMethod.GET)
	@ResponseBody
	public Integer validatePhone(String telephone){
		int result = 1;
		try{
			User u = userService.getByPhone(telephone);
			if (u != null){
				return 0;
			}
		} catch (Exception e){
			e.printStackTrace();
			return 1;
		}
		return result;
	}
	
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String signup(Model model){
		model.addAttribute(new User());
		return "su";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(Model model){
		model.addAttribute(new User());
		return "login";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET, params="ajax")
	@ResponseBody
	public Integer validUserName(String telephone){
		int result = 0;
		try{
			User u = userService.getByPhone(telephone);
			if (u != null){
				result = 1;
			}
		} catch(Exception e){
			e.printStackTrace();
			return 0;
		}
		return result;
	}

	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(String telephone, String password, Model model){
		User u = userService.login(telephone, password);
		model.addAttribute("loginUser", u);
		return "redirect:user/"+telephone;
	}
	
	@RequestMapping(value="/logout")
	public String logout(Model model, HttpServletRequest req){
		req.getSession().removeAttribute("loginUser");
		model.asMap().remove("loginUser");
		return "redirect:/";
	}
	
	@RequestMapping("/msg")
	public String entryPM(HttpServletRequest hsr, Model model){
		User u = (User)model.asMap().get("loginUser");
		if (u == null) throw new UserException("请先登录！");
		return "redirect:/msg/"+u.getTelephone();
	}
	
	@RequestMapping("/test")
	public String testjson(){
		return "order/testjson";
	}
}
package ffof.express.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import ffof.express.exception.UserException;
import ffof.express.model.Pager;
import ffof.express.model.User;
import ffof.express.service.IMessageService;
import ffof.express.service.IUserService;


@Controller
@RequestMapping("/user")
@SessionAttributes("loginUser")
public class UserController {
	//UserService userService = new UserService();
	private IUserService userService;
	private IMessageService messageService;
	
	public IMessageService getMessageService() {
		return messageService;
	}

	@Resource
	public void setMessageService(IMessageService messageService) {
		this.messageService = messageService;
	}

	public IUserService getUserService() {
		return userService;
	}

	@Resource
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
	
	@RequestMapping("/users")
	@ResponseBody
	public List<User> list(Model model){
		
		User u = (User)model.asMap().get("loginUser");
		if (u.getIsAdmin() != 1){
			
			throw new UserException("没有权限");
		}
		List<User> list = userService.findAll();
		return list;
	}
	
	@RequestMapping(value="/users", params="ajax")
	@ResponseBody
	public Pager<User> getAllUsersByPage(Model model, String cPhone, int curPageNum){
		
		User u = (User)model.asMap().get("loginUser");
		if (u.getIsAdmin() != 1){
			
			throw new UserException("没有权限");
		}
		
		Pager<User> pager = userService.findAllByPage(curPageNum+1);
		
		return pager;
	}
	
	@RequestMapping(value="/{cPhone}/update", method=RequestMethod.GET)
	public String getUpdate(@PathVariable String cPhone, Model model){
		User cUser = (User)model.asMap().get("loginUser");
		//如果不是本人并且不是管理员
		if (!cUser.getTelephone().equals(cPhone) && cUser.getIsAdmin() != 1) throw new UserException("没有权限！需本人或管理员登录");
		User rUser = userService.getByPhone(cPhone);
		model.addAttribute("user", rUser);
		return "user/update";
	}
	
	//接受ajax传来的用户数据，进行更新
	@RequestMapping(value="/{cPhone}/update", method=RequestMethod.POST, params="ajax")
	@ResponseBody
	public String ajaxUpdate(String telephone, String name, String password, String location, String isAdmin){
		System.out.println("tel:"+telephone+",name:"+name+",pwd:"+password+",location:"+location+",isAdmin:"+isAdmin);
		User u = userService.getByPhone(telephone);
		u.setName(name);
		if (password != null){
			u.setPassword(password);
		}
		u.setLocation(location);
		u.setIsAdmin(Integer.valueOf(isAdmin));
		try{
			userService.update(u);
			return "success";
		} catch (Exception e){
			 e.printStackTrace();
			 return "failed";
		}
	}
	
	
	
	@RequestMapping("/{cPhone}/manage")
	public String getAdminPage(@PathVariable String cPhone,Model model){
		User u = (User)model.asMap().get("loginUser");
		if(u!=null && u.getTelephone().equals(cPhone)){
			return "user/admin";
		} else {
			throw new UserException("没有权限！");
		}
	}
	
	@RequestMapping(value="/{cPhone}/delete", method=RequestMethod.GET, params="ajax")
	@ResponseBody
	public String ajaxDelete(@PathVariable String cPhone, String telephone){
		try{
			userService.delete(telephone);
			return "success";
		} catch (Exception e){
			e.printStackTrace();
			return "failed";
		}
	}
	
	/*@RequestMapping(value="/{cPhone}/update", method=RequestMethod.POST)
	public String postUpdate(@PathVariable String cPhone, @Validated User user, BindingResult br, Model model){
		User cUser = (User)model.asMap().get("loginUser");
		if (!cUser.getTelephone().equals(cPhone) || cUser.getIsAdmin() != 1) throw new UserException("没有权限！需本人或管理员登录");
		if (br.hasErrors()){
			return "user/update";
		}
		userService.update(user);
		return "redirect:/user";
	}*/
	
	@RequestMapping("/{phone}")
	public String show(@PathVariable String phone, Model model){
		//User u = userService.getByPhone(phone);
		//model.addAttribute("loginUser",u);
		//User user = (User)model.asMap().get("loginUser");
		//如果是管理员则进入userIndex，非管理员跳转回主页
		return "user/userIndex";
	}
	
}

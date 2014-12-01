package ffof.express.controller;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import ffof.express.exception.MessageException;
import ffof.express.model.Message;
import ffof.express.model.Pager;
import ffof.express.model.User;
import ffof.express.service.IMessageService;
import ffof.express.service.IUserService;

@Controller
@SessionAttributes("loginUser")
@RequestMapping("/msg")
public class MessageController {
	
	IUserService userService;
	IMessageService messageService;
	
	public IUserService getUserService() {
		return userService;
	}

	@Resource
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	public IMessageService getMessageService() {
		return messageService;
	}
	
	@Resource
	public void setMessageService(IMessageService messageService) {
		this.messageService = messageService;
	}
	
	
	@RequestMapping(value="/{cPhone}", method=RequestMethod.GET)
	public String showUnread(Model model, @PathVariable String cPhone){
		User u = (User)model.asMap().get("loginUser");
		if (u == null) throw new MessageException("请先登录");
		if (!u.getTelephone().equals(cPhone)) throw new MessageException("没有权限");
		List<Message> list = messageService.getUnRead(u.getTelephone());
		model.addAttribute("u_msgs", list);
		return "msg/pm";
	}
	
	//获取未读消息，分页
/*	@RequestMapping(value="/{cPhone}", method=RequestMethod.GET, params={"ajax","curPageNum"})
	@ResponseBody
	public Pager<Message> getUnread(Model model, @PathVariable String cPhone, Integer curPageNum){
		//User u = (User)model.asMap().get("loginUser");
		//if (u == null) throw new MessageException("请先登录");
		//if (!u.getTelephone().equals(cPhone)) throw new MessageException("没有权限");
		Pager<Message> pager = messageService.getUnRead(cPhone, curPageNum+1);
		return pager;
	}*/
	
	@RequestMapping(value="/{cPhone}", method=RequestMethod.GET, params={"curPageNum"})
	public String getUnread(Model model, @PathVariable String cPhone, Integer curPageNum){
		User u = (User)model.asMap().get("loginUser");
		if (u == null) throw new MessageException("请先登录");
		if (!u.getTelephone().equals(cPhone)) throw new MessageException("没有权限");
		Pager<Message> pager = messageService.getUnRead(cPhone, curPageNum);
		model.addAttribute("pager", pager);
		return "msg/pmp";
	}
	
	@RequestMapping(value="/{cPhone}/unread", method=RequestMethod.GET, params="ajax")
	@ResponseBody
	public List<Message> getReadResponse(@PathVariable String cPhone){
		//System.out.println("messageContrller /{cPhone}/read?ajax called");
		try{
			List<Message> list = messageService.getUnRead(cPhone);
			return list;
		} catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	@RequestMapping("/messangers")
	@ResponseBody
	public List<User> getMessangers(Model model){
		User u = (User)model.asMap().get("loginUser");
		//System.out.println(u.getTelephone());
		List<User> list = userService.findAllExceptSelf(u);
		//System.out.println(list.size());
		return list;
	}
	
	@RequestMapping(value="/send", method=RequestMethod.POST)
	@ResponseBody
	public String send(String content, String recvPhones, String postPhone){
		//System.out.println(recvPhones);
		Pattern p = Pattern.compile("\\d{11}");
		Matcher m = p.matcher(recvPhones);
		int size = 0;
		while(m.find()){
			++size;
		}
		//System.out.println(size);
		String[] ss = new String[size];
		m = p.matcher(recvPhones);
		size=0;
		while(m.find()){
			ss[size++] = m.group();
		}
		/*for(String s:ss){
			System.out.println(s);
		}*/
		try{
			for(int i=0; i<ss.length; i++){
				Message msg = new Message();
				//msg.setSendId(uid);
				msg.setContent(content);
				msg.setPostPhone(postPhone);
				msg.setRecvPhone(ss[i]);
				msg.setIsRead(0);
				messageService.add(msg);
			}
			return "success";
		} catch (Exception e){
			e.printStackTrace();
			return "failed";
		}
		
	}
	

	@RequestMapping(value="/send", method=RequestMethod.POST, params="all")
	@ResponseBody
	public String send(String postPhone, String content){
		try{
			messageService.sendToAll(postPhone, content);
			return "success";
		} catch (Exception e){
			e.printStackTrace();
			return "failed";
		}
	}
	

	@RequestMapping(value="/{cPhone}", params="history",method=RequestMethod.GET)
	public @ResponseBody List<Message> getHisMsgJson(Model model, @PathVariable String cPhone){
		User u = (User) model.asMap().get("loginUser");
		if (u==null) throw new MessageException("请登录！");
		List<Message> list = messageService.getHistoryMessage(u.getTelephone());
		//System.out.println("histroy" + "," + list.toString());
		return list;
	}
	
	//获取历史消息，带分页,jQuery.Pagination indexPage从0开始
	@RequestMapping(value="/{cPhone}", params={"history","curPageNum"},method=RequestMethod.GET)
	public @ResponseBody Pager<Message> getHisMsgPage(Model model, @PathVariable String cPhone, Integer curPageNum){
		User u = (User) model.asMap().get("loginUser");
		if (u==null) throw new MessageException("请登录！");
		Pager<Message> pager = messageService.getHistoryMessagePager(cPhone, curPageNum+1);
		return pager;
	}
	
	
	@RequestMapping(value="/read",method=RequestMethod.POST, params="ajax")
	@ResponseBody
	public String read(long id){
		//System.out.println("/read?ajax");
		try{
			messageService.read(id);
			return "success";
		} catch (Exception e){
			e.printStackTrace();
			return "failed";
		}
	}
	
	@RequestMapping(value="/del", method=RequestMethod.POST)
	@ResponseBody
	public String delete(long[] msgId){
		//System.out.println(msgId.length);
		try{
			for(long i: msgId){
				messageService.delete(i);
			}
			return "success";
		} catch (Exception e){
			throw new MessageException("消息删除失败");
		}
	}
	
}

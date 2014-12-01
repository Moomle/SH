package ffof.express.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import ffof.express.exception.OrderException;
import ffof.express.model.Location;
import ffof.express.model.Order;
import ffof.express.service.IOrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	private IOrderService orderService;
	
	public IOrderService getOrderService() {
		return orderService;
	}
	
	@Resource
	public void setOrderService(IOrderService orderService) {
		this.orderService = orderService;
	}

	/*@RequestMapping(value="/update", method=RequestMethod.GET)
	public String update(Model model){
		Location location = new Location();
		model.addAttribute("location", location);
		return "order/update";
	}*/
	
	@RequestMapping(value="/modify", method=RequestMethod.GET, params="ord_num")
	public String getOrderUpdatePage(Model model, String ord_num){
		Order order = orderService.getByOrderNum(ord_num);
		if(order == null) throw new OrderException("没有此订单！");
		model.addAttribute("order", order);
		return "redirect:/order/"+order.getOrd_num()+"/modify";
	}
	
	@RequestMapping(value="/{ord_num}/modify", method=RequestMethod.GET)
	public String getUpdatePage(@PathVariable String ord_num, Order order, Model model){
		model.addAttribute(orderService.getByOrderNum(ord_num));
		return "order/modify";
	}
	
	@RequestMapping(value="/manage/{ord_num}/isExist", method=RequestMethod.GET)
	@ResponseBody
	public String ordIsExist(@PathVariable String ord_num){
		Order order = orderService.getByOrderNum(ord_num);
		if(order == null){
			return "failed";
		} else {
			return "success";
		}
	}
	
	@RequestMapping(value="/{ord_num}/modify", method=RequestMethod.POST)
	public String posUpdatePage(@PathVariable String ord_num,@Validated Order order, BindingResult br){
		if(br.hasErrors()){
			return "order/modify";
		}
		orderService.update(order);
		return "redirect:/order/manage";
	}
	
	//更新订单地点，如果订单operation字段为“已签收”，则将相应order的status字段置为相同值
	@RequestMapping(value="/update", method=RequestMethod.POST)
	@ResponseBody
	public String update(String ord_num, String location, String cur_phone, String operation){
		Location loc = new Location();
		loc.setDate(new Date());
		loc.setCur_phone(cur_phone);
		loc.setLocation(location);
		loc.setOrd_num(ord_num);
		loc.setOperation(operation);
		
		try{
			Order order = orderService.getByOrderNum(ord_num);
			order.setStat(operation);
			orderService.update(order);
			orderService.update(loc);
			return "success";
		} catch (Exception e){
			e.printStackTrace();
			return "fail";
		}
	}

	@RequestMapping(value="/query", method=RequestMethod.GET)
	public String query(){
		return "order/query";
	}
	
	//@ModelAttribute("loginUser")
	@RequestMapping(value="/manage", method=RequestMethod.GET)
	public String getManagePage(Model model){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("order",new Order());
		map.put("location", new Location());
		model.addAllAttributes(map);
		return "order/xiadan";
	}
	
	@RequestMapping(value="/query", method=RequestMethod.POST)
	public String query(Model model, String ord_num){
		List<Location> queryResult = orderService.query(ord_num);
		model.addAttribute("queryResult",queryResult);
		return "order/queryResult";
	}
	
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String getEntry(Model model){
		Order order = new Order();
		model.addAttribute(order);
		return "order/add";
	}
	
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String postEntry(@Validated Order order, BindingResult br){
		if (br.hasErrors()){
			return "order/xiadan";
		}
		order.setStat("已收件");
		order.setCrt_time(new Date());
		Location loc = new Location();
		loc.setDate(order.getCrt_time());
		loc.setLocation(order.getLocation());
		loc.setOperation(order.getStat());
		loc.setOrd_num(order.getOrd_num());
		loc.setCur_phone(order.getCur_phone());
		orderService.addLocation(loc);
		orderService.addOrder(order);
		return "redirect:/order/manage";
	}
	
	
	@RequestMapping(value="/add", method=RequestMethod.POST, params="json")
	@ResponseBody
	public String getAjaxPostOrder(String ord_num, String cur_phone, String org_plc, String org_name,
			String org_phone, String dst_name, String dst_plc, String dst_phone){
		Order order = new Order();
		order.setOrd_num(ord_num);
		order.setCrt_time(new Date());
		order.setCur_phone(cur_phone);
		order.setOrg_name(org_name);
		order.setOrg_phone(org_phone);
		order.setOrg_plc(org_plc);
		order.setDst_name(dst_name);
		order.setDst_phone(dst_phone);
		order.setDst_plc(dst_plc);
		try{
			orderService.addOrder(order);
			return "success";
		} catch(Exception e){
			e.printStackTrace();
			return "test";
		}
	}
	
}

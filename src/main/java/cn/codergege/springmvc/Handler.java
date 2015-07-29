package cn.codergege.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/springmvc")
public class Handler {
	
	@RequestMapping("/hello")
	public String handle1(){
		System.out.println("handle1");
		return "success";
	}
	
	@RequestMapping(value = "/handle2", method = RequestMethod.POST)
	public String handle2(){
		System.out.println("handle2");
		return "success";
	}
	
	@RequestMapping(value = "/handle3", params="userId")
	public String handle3(){
		System.out.println("handle3");
		return "success";
	}
	
	@RequestMapping(value = "/handle4", params="!userId")
	public String handle4(){
		System.out.println("handle4");
		return "success";
	}
	
	@RequestMapping(value = "/handle5", params="userId!=3")
	public String handle5(){
		System.out.println("handle5");
		return "success";
	}
}

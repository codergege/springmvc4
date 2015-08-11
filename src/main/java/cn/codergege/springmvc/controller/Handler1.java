package cn.codergege.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/springmvc")
public class Handler1 {
	
	/**
	 * hello world demo
	 * @return
	 */
	@RequestMapping("/hello")
	public String handle1(){
		System.out.println("handle1");
		return "success";
	}
	/**
	 * RequestMapping method demo
	 * @return
	 */
	@RequestMapping(value = "/handle2", method = RequestMethod.POST)
	public String handle2(){
		System.out.println("handle2");
		return "success";
	}
	
	/**
	 * RequestMapping params demo
	 * @return
	 */
	@RequestMapping(value = "/handle3", params="userId")
	public String handle3(@RequestParam("userId") String name){
		System.out.println("handle3 userId = " + name);
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
	
	/**
	 * ant 风格的 url
	 */
	@RequestMapping(value="/handle6/?")
	public String handle6() {
		System.out.println("handle6");
		return "success";
	}
	@RequestMapping(value="/handle7/*")
	public String handle7() {
		System.out.println("handle7");
		return "success";
	}
	@RequestMapping(value="/handle8/**")
	public String handle8() {
		System.out.println("handle8");
		return "success";
	}
}

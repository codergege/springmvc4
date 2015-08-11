package cn.codergege.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/springmvc2")
public class Handler2 {

	/**
	 * @PathVariable
	 */
	@RequestMapping("/handle1/{name}")
	public String handle1(@PathVariable("name") String xxx) {
		System.out.println("handle1 + name = " + xxx);
		return "success";
	}
	
	/**
	 * 
	 * rest 
	 * 
	 */
	
	@RequestMapping(value = "/testRest/{id}", method = RequestMethod.GET)
	public String handle2 (@PathVariable("id") Integer id) {
		System.out.println("rest get " + id);
		return "success";
	}
	
	@RequestMapping(value = "/testRest", method = RequestMethod.POST)
	public String handle3() {
		System.out.println("rest post");
		return "success";
	}
	
	@RequestMapping(value = "/testRest/{id}", method = RequestMethod.PUT)
	public String handle4(@PathVariable("id") Integer id) {
		System.out.println("rest put " + id);
		return "success";
	}
	
	@RequestMapping(value = "/testRest/{id}", method = RequestMethod.DELETE)
	public String handle5(@PathVariable("id") Integer id) {
		System.out.println("rest delete " + id);
		return "success";
	}
	
	/**
	 * @CookieValue
	 */
	@RequestMapping("/testCookieValue")
	public String handle6(@CookieValue(value = "JSESSIONID", required = false) String sessionValue) {
		System.out.println("CookieValue: " + sessionValue);
		return "success";
	}
}

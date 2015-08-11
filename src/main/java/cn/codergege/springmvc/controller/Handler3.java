package cn.codergege.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.codergege.springmvc.entity.User;

@Controller
@RequestMapping("/springmvc3")
public class Handler3 {
	
	/**
	 * pojo 入参
	 */
	@RequestMapping("/testPojo")
	public String handle1(User user) {
		System.out.println(user);
		return "success";
	}
	
}

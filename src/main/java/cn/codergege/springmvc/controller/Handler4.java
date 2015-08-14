package cn.codergege.springmvc.controller;

import java.util.Arrays;
import java.util.Date;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import cn.codergege.springmvc.entity.User;

@SessionAttributes(value = {"names", "time"})
@RequestMapping("/springmvc4")
@Controller
public class Handler4 {

	
	@ModelAttribute
	public void getUser(@RequestParam(value = "id", required = false) Integer id, 
			Map<String, Object> map) {
		System.out.println("model attribute method ..."); // 每个 handle 方法执行前都会 执行
		if(id != null) { //如果 id 不为空, 那就从数据库中取出 user 放入 map 中, 之后赋值给 hangle 的入参
			User user = new User(1, "zhaobo", "赵波", "123456", "19860529"); // 模拟从数据库中取出 user
			map.put("user", user); // 放入 map 中
		}
	}
	
	@RequestMapping("/testHelloView")
	public String handle4() {
		System.out.println("test hello view");
		return "helloView";
	}
	
	@RequestMapping("/testModelAndView")
	public ModelAndView handle1() {
		/*System.out.println("test modelandview");
		ModelAndView mv = new ModelAndView("success");
		mv.addObject("time", new Date());
		return mv;*/
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("time", new Date());
		mv.setViewName("success");
		return mv;
	}
	
	@RequestMapping("/testMap")
	public String handle2(Map<String, Object> map) {
		map.put("names", Arrays.asList("tom", "赵波", "jack"));
		return "success";
	}
	
	@RequestMapping("/testModelAttribute")
	public String handle3(User user) {
		System.out.println("修改后的 user: " + user);
		return "success";
	}
}

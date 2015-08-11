package cn.codergege.springmvc.controller;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/springmvc4")
public class Handler4 {

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
}

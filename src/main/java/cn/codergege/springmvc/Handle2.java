package cn.codergege.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/springmvc2")
public class Handle2 {

	/**
	 * @PathVariable
	 */
	@RequestMapping("/handle1/{name}")
	public String handle1(@PathVariable("name") String xxx) {
		System.out.println("handle1 + name = " + xxx);
		return "success";
	}
}

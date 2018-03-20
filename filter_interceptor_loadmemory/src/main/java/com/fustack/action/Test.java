package com.fustack.action;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fustack.framework.util.SpringContextHolder;
import com.fustack.service.TestService;

@Controller
public class Test {

	
	@RequestMapping("/index")
	public String f0(){
		return "index";
	}
	
	@RequestMapping("/")
	public String f4() {
		return "index";
	}
	
	
	/**
	 * 访问manager下的页面，后台打印出经过SessionFilter的放doFilter里的信息
	 * @return
	 */
	@RequestMapping("/manager/flowthrow")
	public String f1() {
		return "flowthrow";
	}
	
	/**
	 * 访问不是manager下的页面，Filter是不会流经这里的,SO,后台不会打印出SessionFilter的打屏信息
	 * @return
	 */
	@RequestMapping("/noflowthrow")
	public String f2() {
		return "noflowthrow";
	}
	
	
	@RequestMapping("/time/timeindex")
	public String f5() {
		return "timeindex";
	}
	
	
	/**
	 * 拦截器拦截有效，转到提示页面                           
	 * @param model
	 * @return
	 */
	@RequestMapping("/outsideOfficeHours")
	public String f3(Model model) {
		model.addAttribute("openingTime","11");
		model.addAttribute("closingTime","15");
		
		return "outsideOfficeHours";
	}
	
	@RequestMapping("/loadmemory")
	public String f6(Model model) {
		
		Map<String,String> map2 = new HashMap<String,String>();
		TestService testservice = (TestService)SpringContextHolder.getBean("testServiceImpl");

		map2 = testservice.f1();
		
		model.addAttribute("map2",map2);
		
		/*
		for (String key : map2.keySet()) {
			String value = map2.get(key);
			System.out.println(key + "  " + value);
		}
		*/		
		
		return "loadmemory";
	}
	
}
